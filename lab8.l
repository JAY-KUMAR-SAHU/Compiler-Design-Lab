%{
#include<stdio.h>
int com=0, op=0, id=0, k=0;
%}

KEY int|char|bool|float|for|do|while|if|else|return|void|main|printf|FILE|fopen

%option yylineno
%option noyywrap

%%
{KEY} {k++; printf("Keyword : %s\n",yytext); fputs(yytext, yyout);}
"*"|"/"|"!"|"^"|"&"|"%"|"=="|"="|"--"|"++"|"+"|"‐" {op++; printf("Operator : %s\n",yytext); fputs(yytext, yyout);}
"#".*\n {fputs(yytext, yyout);}
[a-zA-Z_][a-zA-Z0-9_]* {id++; printf("Identifier: %s\n",yytext); fputs(yytext, yyout);}
\/\/(.*) {com++;}					
\/\*(.*\n)*.*\*\/  {com++;}
. {fputs(yytext, yyout);}
%%

void main(){
	yyin = fopen("lab8sample.c", "r");
	yyout=fopen("Output8.c","w");
	yylex();
	printf("key=%d, identifiers=%d\n", k, id);
	printf("operators=%d, comments=%d\n", op, com);
	printf("Output file without comments is saved as Output8.c in directory.\n\n");
}
