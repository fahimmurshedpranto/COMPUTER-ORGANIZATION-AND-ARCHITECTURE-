.model small
.stack 100h
.data

main proc
    mov al,'C'
    MOV BL,'B'
    MOV AH,2
    
    CMP AL,BL
    JNBE ELSE_
    MOV DL,AL
    JMP DISPLAY
    
    ELSE_:
    MOV DL,BL
    DISPLAY:
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN


