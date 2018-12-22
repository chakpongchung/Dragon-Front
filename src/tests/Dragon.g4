grammar Dragon;

program: block;

block: '{' decls stmts '}';

decls: decls decl | /* epsilon */;

decl: type id ';';

type: type '[' num ']' | basic;

stmts: stmts stmt | /* epsilon */;

stmt:
	';'
	| loc '=' bool ';'
	| 'if' '(' bool ')' stmt
	| 'if' '(' bool ')' stmt 'else' stmt
	| 'while' '(' bool ')' stmt
	| 'do' stmt 'while' '(' bool ')' ';'
	| 'break' ';'
	| block;

loc: loc '[' bool ']' | id;

bool: bool '||' join | join;
join: join '&&' equality | equality;
equality: equality '==' rel | equality '!=' rel | rel;

rel:
	expr '<' expr
	| expr '<=' expr
	| expr '>=' expr
	| expr '>' expr
	| expr;

expr: expr '+' term | expr '-' term | term;

term: term '*' unary | term '/' unary | unary;

unary: '!' unary | '-' unary | factor;

factor: '(' bool ')' | loc | num | real | 'true' | 'false';

basic: 'int' | 'float' | 'char' | 'bool';

num: INTLIT;

real: FLOATLIT;

id: LETTER (LETTER | DIGIT)*;

INTLIT: DIGIT+;
FLOATLIT: FLOAT;

WS: [ \n\r\t]+ -> skip;
COMMENT: '/*' .*? '*/' -> skip;

//fragment LETTER: [a-zA-Z] | '_';
LETTER: [a-zA-Z]+ | '_';

DIGIT: [0-9];

FLOAT:
	DIGIT+ '.' DIGIT* EXP? [Ll]?
	| DIGIT+ EXP? [Ll]?
	| '.' DIGIT+ EXP? [Ll]?;
EXP: ('E' | 'e') ('+' | '-')? INTLIT;
