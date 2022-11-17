.MODEL SMALL
.STACK 100H
.DATA 

.CODE
MAIN PROC 
    MOV AX,1
    MOV BX,2
    MOV CX,3
    
    CMP AX,BX
    JL PRINT
    
    CMP BX,CX
    JL PRINT
    
    JMP ELSE
    
    PRINT:
    MOV AX,2
    MOV DX,0
    INT 21H
    
    ELSE:
    
    MOV AH,2
    MOV DX,1
    INT 21H
    
    MAIN ENDP
END MAIN




