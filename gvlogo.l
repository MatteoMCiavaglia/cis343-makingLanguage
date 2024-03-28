%{
#include <stdio.h>
#include <stdlib.h>
#include "gvlogo.tab.h"

extern void yyerror(const char* s);
%}

%%


[ \t\r\n]			;
"penup"             {return PENUP;}
"pendown"           {return PENDOWN;}
"print"             {return PRINT;}
"save"              {return SAVE;}
"color"             {return COLOR;}
"clear"             {return CLEAR;}
"turn"              {return TURN;}
"move"              {return MOVE;}
"goto"              {return GOTO;}
"where"             {return WHERE;}
"loop"              {return LOOP;}
"+"                 {return PLUS;}
"-"                 {return SUB;}
"*"                 {return MULT;}
"/"                 {return DIV;}
[0-9]+              {yylval.f = atof(yytext); return NUMBER;}
\"[^\"]*\"          {return QSTRING;}
.			        { yyerror("Lexing Syntax error.\n"); } 

%%
