
.MODEL SMALL 
.STACK 100H 

.DATA
 MSG db 0AH, 0DH, ' THE SUM OF ' 
 
    A DB ?,' AND ' 
    B DB ?, ' IS '
    SUM DB ?, ' $ '  
    
    
 
.CODE
MAIN PROC 
MOV AX,@DATA 
MOV DS,AX



MOV AH,2
MOV DX,'#'
int 21h

MOV AH,1
INT 21H
MOV A,AL

MOV AH,1
INT 21H
MOV B,AL

ADD AL,A
SUB AL,48
MOV SUM,AL 

LEA DX,MSG
MOV AH,9
INT 21H 

  
MOV AX,4CH
    INT 21H
    MAIN ENDP
END MAIN


