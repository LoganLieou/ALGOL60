%option noyywrap

%{

#include <stdio.h>
#include <stdlib.h>
#include "algol60.tab.h"

%}

%%

[:digit:] {
    yylval.num = atoi(yytext);
    return DIGIT;
}

[:alpha:] {
    yylval.str = yytext;
    return LETTER;
}

%%
