INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA


.CODE

MAIN PROC 
   
    MOV CX,10
    MOV BX,1
    
    START:
    CMP CX,BX
    
    DEC CX
    PRINT "*"
    JGE START
    
    
    
    
    
    
    MOV AH,4CH
    INT 21H
    
    
    
    
    MAIN ENDP
END MAIN