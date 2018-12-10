%{
%}
%token LF
%token NUMBER STR PUTS
%left ADD SUB
%left MUL DIV
%%
stmt : expr
	 | STR
	 ;
expr : expr ADD expr { $$ = $1 + $3; }
	 | expr SUB expr { $$ = $1 - $3; }
	 | expr MUL expr { $$ = $1 * $3; }
	 | expr DIV expr { $$ = $1 / $3; }
	 | NUMBER
	 ;
%%
#include "lex.yy.c"
int yyerror (char const *str) {
	fprintf(stderr, "%s\n", str);
	return 0;
}
int main (void) {
	yyparse();
	return 0;
}
