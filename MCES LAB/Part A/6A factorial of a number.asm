; Program to find the factorial of the given number

	AREA RESET,CODE
	ENTRY
	
	LDR R1,NUM
	BL FACT
	LDR R0,=FACTORIAL
	STR R2,[R0]

STOP B STOP
FACT 
	CMP R1,#0
	BEQ SPEXIT
	CMP R1,#1
	BEQ SPEXIT
	MOV R2,#1
	
LOOP
	CMP R1,#1
	BEQ EXIT
	MUL R2,R1,R2
	SUB R1,#1
	B LOOP
	
SPEXIT
	MOV R2,#1

EXIT
	MOV PC,LR

NUM DCD 10
	
	AREA MEMORY,DATA
FACTORIAL SPACE 4
	END