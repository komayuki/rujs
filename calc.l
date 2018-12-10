%%
"+"	return(ADD);
"-" return(SUB);
"*" return(MUL);
"/" return(DIV);
"puts" return(PUTS);
[0-9]+ { yylval = atoi(yytext);
	return(NUMBER); }
"\n" return(LF);
[\t]+ ;
. ;
%%
