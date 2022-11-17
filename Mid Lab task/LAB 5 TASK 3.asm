.MODEL SMALL
.STACK 100H 
.DATA

.CODE
MAIN PROC 
    MOV AX,65
    MOV BX,90
    MOV CX,64
    
    TOP:
    MOV AH,2
    MOV DX,AX
    INT 21H
    INC AX
    DEC BX
    
    CMP BX,CX
    JE JUMP:
    JNZ TOP
    
    JUMP:
   
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN







