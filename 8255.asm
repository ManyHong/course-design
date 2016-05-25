Assume cs:code
Code segment public
Org 100h
start:
      MOV DX,1023H   
   	  MOV AL,90H
   	  OUT DX,AL

	  MOV AL,00H
	  OUT DX,AL

	  MOV DX,1021H
	  MOV AL,80H
	  OUT DX,AL
	  
	  
 A: MOV DX,1020H
   	IN AL,DX
   	CMP AL,0      
   	JZ A
	
	MOV CX,3
	MOV DX,1022H
B: MOV AL,1
   CALL DELAY1S
   OUT DX,AL
   INC AL
   CALL DELAY1S
   OUT DX,AL
   LOOP B
   JMP A
   
DELAY1S:Pushf
	PUSH CX
        mov bx,0e8h
	Lp2:mov cx,118h
	Lp1:Pushf
	    Popf
		LOOP Lp1
		Dec bx
		Jnz Lp2
		POP CX
		Popf
		Ret
		Nop
Code ends
end start
