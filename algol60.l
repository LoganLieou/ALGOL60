%option noyywrap

%{
#include "algol60.tab.h"
%}

%%
\(      { printf("received a lparen token\n"); return TOK_LPAREN; }
\)      { return TOK_RPAREN; }
\[      { return TOK_LBRACKET; }
\]      { return TOK_LBRACKET; }
`       { return TOK_BACKTICK; }
\'      { return TOK_APOSTROPHE; } 
"begin" { return TOK_BEGIN; }
"end"   { return TOK_END; }

"string" { return TOK_STRING; }
"label"  { return TOK_LABEL; }
"value"  { return TOK_VALUE; }

"own"       { return TOK_OWN; }
"boolean"   { return TOK_BOOLEAN; }
"integer"   { return TOK_INTEGER; }
"real"      { return TOK_REAL; }
"array"     { return TOK_ARRAY; }
"switch"    { return TOK_SWITCH; }
"procedure" { return TOK_PROCEDURE; }

,         { return TOK_COMMA; }
\.         { return TOK_PERIOD; }
:         { return TOK_COLON; }
;         { return TOK_SEMICOLON; }
:=        { return TOK_WALRUS; }
_         { return TOK_UNDERSCORE; }
"step"    { return TOK_STEP; }
"until"   { return TOK_UNTIL; }
"while"   { return TOK_WHILE; }
"comment" { return TOK_COMMENT; }

[ \t\n]+ {}
.        {}
%%
