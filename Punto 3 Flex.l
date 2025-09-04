%{
#include "calc.tab.h"
%}

%%

[0-9]+   { yylval = atoi(yytext); return NUM; }
"sqrt3"  { return CUBEROOT; }
\n       { return EOL; }
[ \t]    ;
.        { return yytext[0]; }

%%
