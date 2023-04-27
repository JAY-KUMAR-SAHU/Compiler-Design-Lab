%{
    #include<stdio.h>
%}

%%
([a-z]|[A-Z]) {printf("\t%s is an alphabet", yytext); }
.* {printf("\t%s is not an alphabet", yytext);}
%%

int main(){ 
    printf("Enter The character : "); yylex();
    return 0;
}
int yywrap(){return 1;}
