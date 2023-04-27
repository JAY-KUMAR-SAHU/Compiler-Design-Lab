%{
    int vow_count=0,const_count=0;
%}
 
%%
[aeiouAEIOU] { vow_count++; }
[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ] { const_count++; }
.|"\n" {}
%%

int yywrap() {}

void main(){
    FILE *f = fopen("lab5sample.txt", "r");
    yyin = f;
    yylex();
    printf("Number of vowels are :  %d\n", vow_count);
    printf("Number of consonants are :  %d\n", const_count);
}
