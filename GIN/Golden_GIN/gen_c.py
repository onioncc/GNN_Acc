import json

f = open('gin_ep1.weights.dict.json', 'r')
dic = json.load(f)

## generate global weights
for key in dic:
    name = key.replace('.', '_')
    line = 'extern float ' + name
    # skip the "num_batches_tracked"
    shape = dic[key]['shape']
    if len(shape) == 0:
        continue
    for d in shape:
        line += '[%d]' % d
    line += ';'
    print(line)
    
# print('\n\n')
# ## generate weight loading
# for key in dic:
#     name = key.replace('.', '_')
#     # skip the "num_batches_tracked"
#     shape = dic[key]['shape']
#     if len(shape) == 0:
#         continue
#     line = 'fseek(f, %d*sizeof(float), SEEK_SET);\n' % int(dic[key]['offset'])
#     line += 'fread(%s, sizeof(float), %d, f);\n' % (name, int(dic[key]['length']))
#     print(line)