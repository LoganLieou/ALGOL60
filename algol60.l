%option noyywrap

%{
#include "algol60.tab.h"
%}

%%

\( { printf("received a lparen token\n"); return TOK_LPAREN; }
\) { return TOK_RPAREN; }
\[ { return TOK_LBRACKET; }
\] { return TOK_LBRACKET; }
`  { return TOK_BACKTICK; }
\' { return TOK_APOSTROPHE; } 
"begin" { return TOK_BEGIN; }
"end" { return TOK_END; }

[ \t\n]+ /* skip whitespace */

. { /*rem*/ }

%%
