%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(const char *s);

extern int yylex();
extern int yyparse();
extern FILE *yyin;
%}

%union {
    int num;
    char sep;
    char op;
    char al;
    char *str;
    int bol;
}

%token <al> LETTER
%token <num> DIGIT
%token <bol> LOGICAL

%token <bol> RELATIONAL_OPERATOR
%token <op> LOGICAL_OPERATOR
%token <op> SEQUENTIAL_OPERATOR

%token <sep> SEPARATOR
%token <str> BRACKET
%token <str> DECLARATOR
%token <str> SPECIFICATOR

%type <num> EXPRESSION

%start EXPRESSION

%%

/* this is going to be so much isn't it oh no */
EXPRESSION: DIGIT SEQUENTIAL_OPERATOR DIGIT {
    printf("WE HIT SOME CONDITION\n");
    printf("$1=%d $2=%c $3=%d\n", $1, $2, $3);
    if ($1 == '+') {
        $$ = $2 + $3;
    }

    $$ = $1;
}

%%

void yyerror(const char *s) {
    fprintf(stderr, "hit an error %s\n", s);
    exit(1);
}

int main() {
    yyin = stdin;
    yyparse();
}