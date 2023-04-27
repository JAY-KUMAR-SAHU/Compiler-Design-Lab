%{
    #include<stdio.h>
%}

%%
">"|"<"|"<="|">="|"=="|"!=" {printf("\tYes, %s is a relational operator", yytext); }
.* {printf("\t%s is not a relational operator", yytext);}
%%

int main(){ 
    printf("Enter The character : "); yylex();
}
int yywrap(){return 1;}