%{ #include<stdio.h>
%}
%%
">"|"<"|">="|"<="|"=="|"!="|"+"|"-"|"*"|"/"|"%"|"&"|"&&"|"!"|"//"|"^"|"**"|"+="|"-="|"*="|"/="|"%="|"^="|"|"|"||" {printf("\t%s is an operator", yytext); }
if|else|while|for|define|int|float|char|scanf|return|printf {printf("\t%s is a keyword", yytext); }
"~"|"@"|"#"|"$"|"("|")"|"?"|"," {printf("\t%s is a symbol", yytext); }
.* {printf("\t%s is not an operator, neither a keyword nor a symbol", yytext);}
%%
int main() { printf("Enter token : "); yylex(); }
int yywrap() { return 1; }