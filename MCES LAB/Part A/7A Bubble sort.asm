; Bubble sort program

	AREA RESET,CODE
	ENTRY
	
	LDR R0,=LIST
	LDMIA R0,{R1-R6}
	MOV SP,0X40000000
	STMIA SP,{R1-R6}
	MOV R0,0X40000000
	LDR R1,N
	SUB R2,R1,#1
	
LOOP1
	MOV R3,R2
	MOV R4,R0

LOOP2
	CMP R3,#0
	BEQ EXIT
	LDR R5,[R4]
	LDR R6,[R4,#4]
	CMP R5,R6
	BLS SKIP
	MOV R7,R5
	MOV R5,R6
	MOV R6,R7
	STR R5,[R4]
	STR R6,[R4,#4]	
SKIP
	ADD R4,#4
	SUBS R3,#1
	BNE LOOP2
	
EXIT
	SUBS R2,#1
	BNE LOOP1
	
STOP B STOP

LIST DCD &23,&32,&62,&34,&12,&12
N DCD 6
	END