#Special Multiple (CodeSprint 5)
t = int(raw_input());
numbs = [];
orig = [];
answer = {};

for i in range(0, t):
    n = int(raw_input());
    orig.append(n);
    numbs.append(n);


numbs.sort();
i = 9;
step = 9; #n * 9;

while len(numbs) > 0:
    isMade = 1;
    
    strN = str(i);
    for c in strN: #Test if is made up only of 9 and 0
        if c != '9' and c != '0':
            isMade = 0;
            break;
    
    if isMade == 1:
        j = 0;
        while j < len(numbs):
            if i % numbs[j] == 0:
                answer[numbs[j]] = i;
                numbs.pop(j);
                j -= 1;
            j += 1;
        if len(numbs) > 0 and numbs[0] > i * 9:
            numbs = i * 9
    i += step;
    if len(numbs) == 0:
        break;

for n in orig:
    print answer[n];

