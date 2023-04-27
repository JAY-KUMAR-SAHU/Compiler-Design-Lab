%{
	#include<stdio.h>
	int com=0;
%}

%%
\/\/(.*) {com++;}					
\/\*(.*\n)*.*\*\/  {com++;}		
%%

int yywrap() {return 1;}

int main(){
	yyin=fopen("Lab7Sample.c","r");
	yyout=fopen("Output7.c","w");
	yylex();
	printf("No of comments : %d\n",com);
	return 0;
}
