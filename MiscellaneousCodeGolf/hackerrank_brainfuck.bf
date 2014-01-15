A logica de codificacao eh binaria
a = 00000
b = 00001
c = 00010
d = 00011
e = 00100
x = 10111
y = 11000
z = 11001
0 eh um traco e 1 eh um asterisco
Decrementa 3x para formar 1 e incrementa 3x para formar 0

{ l | p1 | p2 | p3 | p4 | p5 | c2 | c3 | c4 | c5}
l = Letra lida
p1 a p5 = 5 chars codificados
c2 a c5 = flags para indicar incremento

,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>
,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>
,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>,>>>>>>>>>>
,>>>>>>>>>>,>>>>>>>>>>

<<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< 
<<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< 
<<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< <<<<<<<<<< 
<<<<<<<<<< <<<<<<<<<<
[
    
    Subtrai 97 (a=0 ate z=26)
    >+++++++++[<---------->-]<-------
    For para incremetar binariamente a letra codificada
    [
        >>>>> Goto p5
        >>>>+ Goto c5 and set on
        <<<< Goto p5
        
        [ Se p5 for 1 sera incrementado no mais significativo
            < Goto p4
            >>>>+ Goto c4 and set on
            <<<< Goto p4
            
            [ Se p4 for 1 sera incrementado no mais significativo
                < Goto p3
                >>>>+ Goto c3 and set on
                <<<< Goto p3
                
                [ Se p3 for 1 sera incrementado no mais significativo
                    < Goto p2
                    >>>>+ Goto c2 and set on
                    <<<< Goto p2
                    
                    [ Se p2 for 1 sera incrementado no mais significativo
                        < Goto p1
                        +++ Incrementa em p1
                        >--- Goto p2 e decrementa
                        >--- Goto p3 e decrementa
                        >--- Goto p4 e decrementa
                        >--- Goto p5 e decrementa
                        >>>>- Goto c5 and set off
                        <- Goto c4 and set off
                        <- Goto c3 and set off
                        <- Goto c2 and set off
                        <<<< Goto p2
                    ]
                    
                    >>>> Se flag c2 estiver ativa incrementa
                    [
                        <<<< Goto p2
                        +++ Incrementa em p2
                        >--- Goto p3 e decrementa
                        >--- Goto p4 e decrementa
                        >--- Goto p5 e decrementa
                        >>>>- Goto c5 and set off
                        <- Goto c4 and set off
                        <- Goto c3 and set off
                        <- Goto c2 and set off
                    ]
                    <<< Goto p3
                ]
                
                >>>> Se flag c3 estiver ativa incrementa
                [
                    <<<< Goto p3
                    +++ Incrementa em p3
                    >--- Goto p4 e decrementa
                    >--- Goto p5 e decrementa
                    >>>- Goto c4 and set off
                    >- Goto c5 and se off
                    <<- Goto c3 and set off
                ]
                <<< Goto p4
            ]
            
            >>>> Se flag c4 estiver ativa incrementa
            [
                <<<< Goto p4
                +++ Incrementa em p4
                >--- Goto p5 e decrementa
                >>>>- Goto c5 and set off
                <- Goto c4 and set off
            ]
            <<< Goto p5
        ]
        
        >>>> Se flag c5 estiver ativa incrementa
        [
            <<<< Goto p5
            +++ Incrementa em p5
            >>>>- Goto c5 and set off
        ]
        <<<< Goto p5
        <<<< Goto p1
        
        <- Subtrai
    ]
    > Goto p1
    [ >>>>> + <<<<< - ]
    >>>>>>+++++[<<<<<<+++++++++>>>>>>-]<
    [ <<<<< - >>>>> - ] <<<<<
    . Print p1
    > 
    [ >>>> + <<<< - ]
    >>>>>+++++[<<<<<+++++++++>>>>>-]<
    [ <<<< - >>>> - ] <<<<
    . Print p2
    > 
    [ >>> + <<< - ]
    >>>>+++++[<<<<+++++++++>>>>-]<
    [ <<< - >>> - ] <<<
    . Print p3
    > 
    [ >> + <<- ]
    >>>+++++[<<<+++++++++>>>-]<
    [ << - >> - ] <<
    . Print p4
    > 
    [ > + < - ]
    >>+++++[<<+++++++++>>-]<
    [ < - > - ] <
    . Print p5
    [-]
    +++++ +++++
    .
    >>>>> Jump to next elem
]

