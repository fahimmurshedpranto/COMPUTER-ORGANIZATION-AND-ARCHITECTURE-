.model small 
.stack 100h 
.data 

main proc 
    mov bx,0 
    mov cl,4 
    mov ah,1 
    FOR1: 

    int 21h 
    cmp al,0dh 
    JE END_FOR  
    
    CMP AL,41h 
    JGE LETTER 

    SUB AL,48 
    JMP SHIFT
     
    LETTER:
    SUB AL,37h 
    
    SHIFT: 
    SHL BX, CL 
    OR BL,AL 
    JMP FOR1 
    
    END_FOR: 
    
     
    
    MOV CX, 4 
    MOV AH, 2 
    
    FOR2: 
    MOV DL, BH 
    SHR DL, 4 
    SHL BX, 4 
    CMP DL, 10 
    JGE LETTER2 
    
    ADD DL, 48 
    INT 21H 
    JMP END_OF_LOOP2 
    
    LETTER2: 
    ADD DL, 55 
    INT 21H 
    
    END_OF_LOOP2: 
    LOOP FOR2
    
     MOV AH, 4CH 
     INT 21H 
     MAIN ENDP
END MAIN