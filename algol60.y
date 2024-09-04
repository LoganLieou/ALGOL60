%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);

extern int yylex();
extern int yyparse();
extern FILE *yyin;
%}

/* TODO define this properly */
%union {
    int num;
    char sep;
    char op;
    char al;
    char *str;
    int bol;
}

/* bracket tokens */
%token TOK_LPAREN TOK_RPAREN TOK_LBRACKET TOK_RBRACKET TOK_BACKTICK TOK_APOSTROPHE TOK_BEGIN TOK_END

/* specificator tokens */
%token TOK_STRING TOK_LABEL TOK_VALUE

%%
bracket:
    TOK_LPAREN
    | TOK_RPAREN
    | TOK_LBRACKET
    | TOK_RBRACKET
    | TOK_BACKTICK
    | TOK_APOSTROPHE
    | TOK_BEGIN
    | TOK_END

specificator:
    TOK_STRING
    | TOK_LABEL
    | TOK_VALUE
%%

void yyerror(const char *s) {
    fprintf(stderr, "hit an error %s\n", s);
    exit(1);
}

int main() {
    yyin = stdin;
    yyparse();
}
