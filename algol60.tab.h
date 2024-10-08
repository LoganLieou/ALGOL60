/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     TOK_LPAREN = 258,
     TOK_RPAREN = 259,
     TOK_LBRACKET = 260,
     TOK_RBRACKET = 261,
     TOK_BACKTICK = 262,
     TOK_APOSTROPHE = 263,
     TOK_BEGIN = 264,
     TOK_END = 265,
     TOK_STRING = 266,
     TOK_LABEL = 267,
     TOK_VALUE = 268,
     TOK_OWN = 269,
     TOK_BOOLEAN = 270,
     TOK_INTEGER = 271,
     TOK_REAL = 272,
     TOK_ARRAY = 273,
     TOK_SWITCH = 274,
     TOK_PROCEDURE = 275,
     TOK_COMMA = 276,
     TOK_PERIOD = 277,
     TOK_COLON = 278,
     TOK_SEMICOLON = 279,
     TOK_WALRUS = 280,
     TOK_UNDERSCORE = 281,
     TOK_STEP = 282,
     TOK_UNTIL = 283,
     TOK_WHILE = 284,
     TOK_COMMENT = 285,
     TOK_GOTO = 286,
     TOK_ELSE = 287,
     TOK_IF = 288,
     TOK_THEN = 289,
     TOK_FOR = 290,
     TOK_DO = 291,
     TOK_L_AND = 292,
     TOK_L_OR = 293,
     TOK_L_IN = 294,
     TOK_L_NOT = 295,
     TOK_LESS = 296,
     TOK_GREATER = 297,
     TOK_GEQ = 298,
     TOK_LEQ = 299,
     TOK_EQUAL = 300,
     TOK_NEQ = 301,
     TOK_PLUS = 302,
     TOK_MINUS = 303,
     TOK_MUL = 304,
     TOK_DIV = 305,
     TOK_MUL2 = 306,
     TOK_DIV2 = 307,
     TOK_UP = 308,
     TOK_TRUE = 309,
     TOK_FALSE = 310,
     TOK_LETTER = 311,
     TOK_DIGIT = 312
   };
#endif
/* Tokens.  */
#define TOK_LPAREN 258
#define TOK_RPAREN 259
#define TOK_LBRACKET 260
#define TOK_RBRACKET 261
#define TOK_BACKTICK 262
#define TOK_APOSTROPHE 263
#define TOK_BEGIN 264
#define TOK_END 265
#define TOK_STRING 266
#define TOK_LABEL 267
#define TOK_VALUE 268
#define TOK_OWN 269
#define TOK_BOOLEAN 270
#define TOK_INTEGER 271
#define TOK_REAL 272
#define TOK_ARRAY 273
#define TOK_SWITCH 274
#define TOK_PROCEDURE 275
#define TOK_COMMA 276
#define TOK_PERIOD 277
#define TOK_COLON 278
#define TOK_SEMICOLON 279
#define TOK_WALRUS 280
#define TOK_UNDERSCORE 281
#define TOK_STEP 282
#define TOK_UNTIL 283
#define TOK_WHILE 284
#define TOK_COMMENT 285
#define TOK_GOTO 286
#define TOK_ELSE 287
#define TOK_IF 288
#define TOK_THEN 289
#define TOK_FOR 290
#define TOK_DO 291
#define TOK_L_AND 292
#define TOK_L_OR 293
#define TOK_L_IN 294
#define TOK_L_NOT 295
#define TOK_LESS 296
#define TOK_GREATER 297
#define TOK_GEQ 298
#define TOK_LEQ 299
#define TOK_EQUAL 300
#define TOK_NEQ 301
#define TOK_PLUS 302
#define TOK_MINUS 303
#define TOK_MUL 304
#define TOK_DIV 305
#define TOK_MUL2 306
#define TOK_DIV2 307
#define TOK_UP 308
#define TOK_TRUE 309
#define TOK_FALSE 310
#define TOK_LETTER 311
#define TOK_DIGIT 312




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 16 "algol60.y"
{
    int num;
    char sep;
    char op;
    char al;
    char *str;
    int bol;
}
/* Line 1529 of yacc.c.  */
#line 172 "algol60.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

