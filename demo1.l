%{
    #include<stdio.h>
%}

%%
>|<|>=|<=|==|!= {printf("\t%s is a relational operator", yytext); }
([a-z]|[A-Z])* {printf("\t%s is a word", yytext); }
[0-9]*|[-][0-9]* {printf("\t%s is a number", yytext); }
([a-z][A-Z][0-9])* {printf("\t%s is a alphanumeric string", yytext); }
.* {printf("\t%s is not a relational operator, neither a word nor a number", yytext);}
%%

int main(){ 
    printf("Enter The character : "); yylex();
}
int yywrap(){return 1;}