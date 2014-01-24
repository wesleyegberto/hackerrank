#Is-Fibo (CodeSprint 5)
t = int(raw_input());
seq = [];
result = [];

for i in range(t):
    seq.append(int(raw_input()));
    result.append("IsNotFibo")

fib = 0;
aux = 1;
i = 0;

while i < t:
    fib += aux;
    aux = fib - aux;
    print "\t", fib;
    for j in range(t):
        if seq[j] == -1:
            continue;
        if seq[j] == fib or seq[j] == 0:
            result[j] = "IsFibo";
            seq[j] = -1;
            i += 1;
        elif fib > seq[j]:
            seq[j] = -1;
            i += 1;

for res in result:
    print res;
