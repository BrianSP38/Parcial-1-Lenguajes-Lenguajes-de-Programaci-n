%{
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
int yylex(void);
void yyerror(char *s) { fprintf(stderr, "%s\n", s); }
%}

%token NUM CUBEROOT EOL

%%

input:
    /* vacío */
  | input line
  ;

line:
    expr EOL   { printf("= %f\n", $1); }
  ;

expr:
    NUM              { $$ = $1; }
  | expr '+' expr    { $$ = $1 + $3; }
  | expr '-' expr    { $$ = $1 - $3; }
  | expr '*' expr    { $$ = $1 * $3; }
  | expr '/' expr    { $$ = $1 / $3; }
  | CUBEROOT expr    { $$ = cbrt($2); }
  ;

%%

int main() {
    return yyparse();
}
