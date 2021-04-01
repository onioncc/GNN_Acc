import json

f = open('gin_ep1_noBN.weights.dict.json', 'r')
dic = json.load(f)

## generate global weights
for key in dic:
    name = key.replace('.', '_').replace('_noBN', '')
    #line = 'extern float ' + name
    line = 'float ' + name
    # skip the "num_batches_tracked"
    shape = dic[key]['shape']
    if len(shape) == 0:
        continue
    for d in shape:
        line += '[%d]' % d
    line += ';'
    print(line)


## generate global fixed weights
print('\n\n')
for key in dic:
    name = key.replace('.', '_').replace('_noBN', '') + '_fixed'
    #line = 'extern float ' + name
    line = 'extern WT_TYPE ' + name
    # skip the "num_batches_tracked"
    shape = dic[key]['shape']
    if len(shape) == 0:
        continue
    for d in shape:
        line += '[%d]' % d
    line += ';'
    print(line)
    

print('\n\n')
## generate weight loading
for key in dic:
    name = key.replace('.', '_').replace('_noBN', '')
    # skip the "num_batches_tracked"
    shape = dic[key]['shape']
    length = int(dic[key]['length'])
    if len(shape) == 0:
        continue
    line = 'fseek(f, %d*sizeof(float), SEEK_SET);\n' % int(dic[key]['offset'])
    line += 'fread(%s, sizeof(float), %d, f);\n' % (name, length)
    print(line)

    # turn floating to fixed
    if len(shape) == 1:
        line = """
for(int i = 0; i < %d; i++) {
    %s_fixed[i] = (WT_TYPE) %s[i];
}
""" % (length, name, name)

        print(line)
    if len(shape) == 2:
        i = shape[0]
        j = shape[1]
        line = """
for(int i = 0; i < %d; i++) {
    for(int j = 0; j < %d; j++) {
        %s_fixed[i][j] = (WT_TYPE) %s[i][j];
    }
}
""" % (i, j, name, name)
    print(line)