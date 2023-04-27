%{
    #include<stdio.h>
%}

%%
[a-zA-Z] {printf("Alphabet : %s", yytext); }
[0-9] {printf("Digit : %s", yytext); }
"+"|"-"|"*"|"/"|"%"|"**"|"//"|"++"|"--"|"^" {printf("Operator : %s", yytext); }
"@"|"$"|"."|"?"|"_"   {printf("Symbol : %s", yytext); }
.* {}
%%

int main(){ 
    printf("Enter The characters of string one by one ---\n");
    yylex();
    return 0;
}
int yywrap(){return 1;}
