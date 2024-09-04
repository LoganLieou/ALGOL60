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
%token TOK_LPAREN TOK_RPAREN TOK_LBRACKET TOK_RBRACKET 
%token TOK_BACKTICK TOK_APOSTROPHE TOK_BEGIN TOK_END

/* specificator tokens */
%token TOK_STRING TOK_LABEL TOK_VALUE

/* declarator tokens */
%token TOK_OWN TOK_BOOLEAN TOK_INTEGER TOK_REAL
%token TOK_ARRAY TOK_SWITCH TOK_PROCEDURE

/* separator tokens */
%token TOK_COMMA TOK_PERIOD TOK_COLON TOK_SEMICOLON
%token TOK_WALRUS TOK_UNDERSCORE TOK_STEP TOK_UNTIL 
%token TOK_WHILE TOK_COMMENT

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

declarator:
    TOK_OWN
    | TOK_BOOLEAN
    | TOK_INTEGER
    | TOK_REAL
    | TOK_ARRAY
    | TOK_SWITCH
    | TOK_PROCEDURE

separator:
    TOK_COMMA 
    | TOK_PERIOD 
    | TOK_COLON 
    | TOK_SEMICOLON
    | TOK_WALRUS 
    | TOK_UNDERSCORE 
    | TOK_STEP 
    | TOK_UNTIL
    | TOK_WHILE 
    | TOK_COMMENT
%%

void yyerror(const char *s) {
    fprintf(stderr, "hit an error %s\n", s);
    exit(1);
}

int main() {
    yyin = stdin;
    yyparse();
}
