%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);

extern int yylex();
extern int yyparse();
extern FILE *yyin;
extern int yylineno;

#define YYERROR_VERBOSE 1
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

/* seqeuential operator tokens */
%token TOK_GOTO TOK_ELSE TOK_IF TOK_THEN
%token TOK_FOR TOK_DO

/* logical operator tokens */
%token TOK_L_AND TOK_L_OR TOK_L_IN TOK_L_NOT

/* relational operator tokens */
%token TOK_LESS TOK_GREATER TOK_GEQ TOK_LEQ
%token TOK_EQUAL TOK_NEQ

/* arithmetic operator tokens */
%token TOK_PLUS TOK_MINUS TOK_MUL TOK_DIV
%token TOK_MUL2 TOK_DIV2 TOK_UP

/* logical value tokens */
%token TOK_TRUE TOK_FALSE

/* letter tokens */
%token TOK_LETTER

/* digit tokens */
%token TOK_DIGIT

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

seqeuential_operator:
    TOK_GOTO
    | TOK_IF
    | TOK_THEN
    | TOK_ELSE
    | TOK_FOR
    | TOK_DO

logical_operator:
    TOK_L_AND
    | TOK_L_OR
    | TOK_L_NOT
    | TOK_L_IN

relational_operator:
    TOK_LESS 
    | TOK_GREATER 
    | TOK_GEQ 
    | TOK_LEQ
    | TOK_EQUAL 
    | TOK_NEQ

arithmetic_operator:
    TOK_PLUS 
    | TOK_MINUS 
    | TOK_MUL 
    | TOK_DIV
    | TOK_MUL2 
    | TOK_DIV2 
    | TOK_UP

operator:
    arithmetic_operator
    | relational_operator
    | logical_operator
    | seqeuential_operator

delimeter:
    operator
    | separator
    | bracket
    | declarator
    | specificator

logical_value:
    TOK_TRUE
    | TOK_FALSE

digit:
    TOK_DIGIT

letter:
    TOK_LETTER

basic_symbol:
    letter
    | digit
    | logical_value
    | delimeter

identifier:
    letter
    | identifier letter
    | identifier digit

%%

void yyerror(const char *s) {
    fprintf(stderr, "hit an error %s note: line number %d\n", s, yylineno);
    exit(1);
}

int main() {
    yyin = stdin;
    yyparse();
}
