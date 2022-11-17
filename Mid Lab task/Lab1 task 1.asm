.MODEL SMALL
.STACK 100H 

.DATA
A DB ?
B DB ? 


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV A,AL
    INT 21H 
    MOV B,AL
    
    MOV AH,2
    MOV DL,A
    INT 21H 
    MOV DL,B
    INT 21H
    
   
   mov ah,4ch
   int 21h 
   MAIN ENDP
END MAIN