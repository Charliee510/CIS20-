all: helloWorld printName printInt
helloWorld: helloWorldMain.s
	gcc $@Main.s -g -o $@      
	./helloWorld
printName: printNameMain.s      
	gcc $@Main.s -g -o $@
	./printName

printInt: printIntMain.s
	gcc $@Main.s -g -o $@
	./printInt
