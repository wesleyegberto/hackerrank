#Is-Fibo Codesprint 5

fib = 0;
aux = 1;

for i in range(100):
    fib += aux;
    aux = fib - aux;
    print fib;
