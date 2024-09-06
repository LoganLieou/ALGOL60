%option noyywrap
%option yylineno

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

,          { return TOK_COMMA; }
\.         { return TOK_PERIOD; }
:          { return TOK_COLON; }
;          { return TOK_SEMICOLON; }
:=         { return TOK_WALRUS; }
_          { return TOK_UNDERSCORE; }
"step"     { return TOK_STEP; }
"until"    { return TOK_UNTIL; }
"while"    { return TOK_WHILE; }
"comment"  { return TOK_COMMENT; }

"goto" { return TOK_GOTO; }
"if"   { return TOK_IF; }
"then" { return TOK_THEN; }
"else" { return TOK_ELSE; }
"for"  { return TOK_FOR; }
"do"   { return TOK_DO; }

"⊃" { return TOK_L_IN; }
"⋁" { return TOK_L_OR; }
"⋀" { return TOK_L_AND; }
"¬" { return TOK_L_NOT; }

"<" { return TOK_LESS; }
"≤" { return TOK_LEQ; }
">" { return TOK_GREATER; }
"≥" { return TOK_GEQ; }
"=" { return TOK_EQUAL; }
"≠" { return TOK_NEQ; }

"+" { return TOK_PLUS; }
"-" { return TOK_MINUS; }
"*" { return TOK_MUL; }
"/" { return TOK_DIV; }
"↑" { return TOK_UP; }
"÷" { return TOK_MUL2; }
"×" { return TOK_DIV2; }

"true" { return TOK_TRUE; }
"false" { return TOK_FALSE; }

[0-9] { printf("received digit\n"); return TOK_DIGIT; }

[a-zA-Z] { return TOK_LETTER; }

[ \t\n]+ { printf("hit newline\n"); }
.        { return yytext[0]; }
%%
