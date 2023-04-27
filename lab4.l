%{
#include<stdio.h>
%}

KEY int|char|bool|float|for|do|while|if|else|return|void|main|printf|FILE|fopen

%option yylineno
%option noyywrap

%%
{KEY} {;}
"\n" {;}
"*"|"/"|"!"|"^"|"&"|"%"|"=="|"="|"--"|"++"|"+"|"‐" {printf("Operator : %s\n",yytext);}
"#".*\n {;}
"\"".*"\"" {;}
"\'".*"\'" {;}
[a-zA-Z_][a-zA-Z0-9_]* {printf("Identifier: %s\n",yytext);}
[0-9]+ {;}
. {;}
%%

void main(){
	FILE *f = fopen("lab4sample.c", "r");
	yyin = f;
	yylex();
}