%{
#include <stdio.h>
%}


%%
[a-zA-Z0-9_.-]+[^_. -][@][a-zA-Z0-9_.-]*[a-zA-Z0-9] {
	                                             printf("%s\n", yytext);
                                                                            }
[a-zA-Z0-9_.-]+[^_. -][@][a-zA-Z0-9_.-]*[a-zA-Z0-9][-][ ] ;

[\t\n] ;
. ;
%%

int main() {
  yylex();
  return 0;
}
