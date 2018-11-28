# Figure 4.58: Yacc specication of a simple desk calculator
yacc 4.58.y
cc y.tab.c -ly
./a.out #type input "2+3, then enter"


# Figure 4.59: Yacc specication for a more advanced desk calculator.	
yacc 4.59.y
cc y.tab.c -ly
./a.out #type input "2+3, then enter"

#Figure 4.60: Lex specication for yylex() in Fig. 4.59	
lex first.l #from fig 4.60
#Figure 4.61: Desk calculator with error recovery
yacc second.y 
cc y.tab.c -ly -ll
./a.out #type input "2+3, then enter"


rm y.tab.c y.output lex.yy.c a.out
