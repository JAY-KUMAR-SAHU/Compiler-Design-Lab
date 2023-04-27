%{
	#include <stdio.h>
	int lines = 1, words = 0, sp = 0, let = 0, num=0;
%}

%%
"\n" {++lines; ++words;}
" "|"\t" {++words;}
[a-zA-Z] {++let;}
[0-9]+ {++num;}
. {++sp;}
%%

int yywrap() { return 1; }

void main(){
	FILE *f = fopen("Sample.txt", "r");
	yyin = f;
	yylex();
	
	printf("words=%d , lines=%d, numbers=%d\n", words, lines, num);
	printf("letters=%d, special characters=%d\n", let, sp);
}
