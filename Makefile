compile:
	flex calc.l
	bison calc.y
	gcc calc.tab.c -lfl -o ./rujs

