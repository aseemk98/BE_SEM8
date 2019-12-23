%{

#include<stdio.h>
#include<stdlib.h>

%}

digit [0-9]
%%


\#include.* {printf("%s --> import\n",yytext);}

["](.*)["] {printf("%s --> STRING\n",yytext);}
if|else|for|int|float|char|extern|return|printf|main|do|while|switch|struct|sizeof|enum {printf("%s --> KEYWORD\n",yytext);}
[a-zA-Z][a-zA-Z_0-9]* {printf("%s --> Identifier\n",yytext);}
([0-9]+)|([0-9]+\.[0-9]+) {printf("%s --> constant\n",yytext);}
"=" {printf("%s --> assignment\n",yytext);}
"+"|"-"|"<"|">"|"*"|"/"|"%"|"++"|"--" {printf("%s --> operator\n",yytext);}
"("|"["|"{" {printf("%s --> open brackets\n",yytext);}
")"|"]"|"}" {printf("%s --> closed brackets\n",yytext);}
\; {printf("%s --> SEMICOLON\n",yytext);}

%%
int yywrap(void){
	return 1;
}
int main(){
	yyin = fopen("test.c","r");
	yylex();
	fclose(yyin);
	return 0;

}