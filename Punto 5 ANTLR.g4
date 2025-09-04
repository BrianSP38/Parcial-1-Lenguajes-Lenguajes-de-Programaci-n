grammar Maclaurin;

prog: 'exp' '(' NUM ',' NUM ')' EOF ;

NUM: [0-9]+ ;
WS: [ \t\r\n]+ -> skip ;
