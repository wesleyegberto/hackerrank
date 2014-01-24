#Hyper Rectangle GCD
t = int(raw_input());

def gcd(a, b):
    while b:
        a, b = b, a%b
    return a

def gcdList(list):
	return reduce(gcd, list)
	
def calcCell(k, lengths, level, pos):
    if level >= k:
        return gcdList(pos);
    total = 0;
    for i in range(lengths[level]):
        pos[level] = i + 1;
        total += calcCell(k, lengths, level + 1, pos);
        pos[level] = i - 1;
    return total;

for tr in range(t):
    k  = int(raw_input());
    size = (raw_input()).split(' ');

    lengths = [];
    pos = [];
    cont = [];
    for l in size:
        lengths.append(int(l));
        pos.append(1);
        cont.append(0);
 
    #matriz = calcCell(k, lengths, 0, pos);
    #Substituição da função recursiva
    total = 0;
    lvl = 0;    
    while cont[lvl] < lengths[lvl]:
        pos[lvl] = cont[lvl] + 1;
        lvl += 1;
        if lvl == k:
            lvl -= 1;
            total += gcdList(pos);
            cont[lvl] += 1;
        while lvl > 0 and cont[lvl] == lengths[lvl]:
            cont[lvl] = 0;
            lvl -= 1;
            cont[lvl] += 1;
       
    print total;
    
