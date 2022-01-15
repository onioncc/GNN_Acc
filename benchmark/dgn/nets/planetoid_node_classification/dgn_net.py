import torch.nn as nn
import dgl
from ..dgn_layer import DGNLayer
from ..mlp_readout_layer import MLPReadout
import torch






class DGNNet(nn.Module):
    def __init__(self, net_params):
        super().__init__()
        in_dim = net_params['in_dim']
        hidden_dim = net_params['hidden_dim']
        out_dim = net_params['out_dim']
        in_feat_dropout = net_params['in_feat_dropout']
        dropout = net_params['dropout']
        n_layers = net_params['L']
        self.type_net = net_params['type_net']
        self.pos_enc_dim = net_params['pos_enc_dim']
        if self.pos_enc_dim > 0:
            self.embedding_pos_enc = nn.Linear(self.pos_enc_dim, hidden_dim)
        self.readout = net_params['readout']
        self.aggregators = net_params['aggregators']
        self.scalers = net_params['scalers']
        self.avg_d = net_params['avg_d']
        self.residual = net_params['residual']
        self.edge_feat = net_params['edge_feat']
        edge_dim = net_params['edge_dim']
        pretrans_layers = net_params['pretrans_layers']
        posttrans_layers = net_params['posttrans_layers']
        device = net_params['device']
        self.device = device

        self.embedding_h = nn.Linear(in_dim, hidden_dim, device=device)
        self.in_feat_dropout = nn.Dropout(in_feat_dropout)

        self.layers = nn.ModuleList([DGNLayer(in_dim=hidden_dim, out_dim=hidden_dim, dropout=dropout, residual=self.residual, aggregators=self.aggregators,
                      scalers=self.scalers, avg_d=self.avg_d, type_net=self.type_net, edge_features=self.edge_feat,
                      edge_dim=edge_dim, pretrans_layers=pretrans_layers, posttrans_layers=posttrans_layers, device=device).model for _
             in range(n_layers - 1)])
        self.layers.append(DGNLayer(in_dim=hidden_dim, out_dim=out_dim, dropout=dropout,
                                    residual=self.residual, aggregators=self.aggregators, scalers=self.scalers,
                                    avg_d=self.avg_d, type_net=self.type_net, edge_features=self.edge_feat,
                                    edge_dim=edge_dim,
                                    pretrans_layers=pretrans_layers, posttrans_layers=posttrans_layers, device=device).model)

        self.MLP_layer = MLPReadout(out_dim, 1, device=device)  # 1 out dim since regression problem

        self.init_fn = nn.init.xavier_uniform_
        self.reset_parameters()


    def reset_parameters(self, init_fn=None):
        init_fn = init_fn or self.init_fn
        if init_fn is not None:
            init_fn(self.embedding_h.weight, 1)
            self.embedding_h.bias.data.zero_()
        for layer in self.MLP_layer.FC_layers.children():
            init_fn(layer.weight, 1)
            layer.bias.data.zero_()


    def forward(self, g, h, e, snorm_n, snorm_e):
        h = self.embedding_h(h)
        h = self.in_feat_dropout(h)
        if self.pos_enc_dim > 0:
            h_pos_enc = self.embedding_pos_enc(g.ndata['pos_enc'])
            h = h + h_pos_enc

        for i, conv in enumerate(self.layers):
            h_t = conv(g, h, e, snorm_n)
            h = h_t

        return self.MLP_layer(h)

    def loss(self, scores, labels):
        unsqueezed_labels = labels.type(torch.FloatTensor).unsqueeze(-1).to(labels.device)
        loss = torch.nn.BCEWithLogitsLoss()(scores, unsqueezed_labels)
        return loss
