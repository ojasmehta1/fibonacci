LOOP:   lodd PassCnt:
        jneg DONE:
        subd one:
        stod PassCnt:    
        lodd daddr:  
        pshi       
        addd one:  
        stod daddr: 
        lodd zero: 
        stod fib: 
        stod fib1:
        lodd one: 
        stod fib2:
        call FIB:

FIB:   lodl 1 
        jzer other: 
        lodd fib1: 
        addd fib2:
        stod fib:
        lodd fib1: 
        stod fib2: 
        lodd fib:
        stod fib1:
        lodl 1
        subd one: 
        push
        call FIB:

other:  lodd fib: 
        push
        lodd store:
        popi 
        addd one: 
        stod store: 
        jump LOOP: 

DONE:   halt

PassCnt:    5  
FIBnum:   0 
daddr: sequence:
store: fibnums:
fib:       0
fib1:      0
fib2:      1
zero:     0
one:      1 
.LOC 100
sequence:  3
           9
          18
          23
          25
fibnums:   0 
           0
           0
           0
           0
