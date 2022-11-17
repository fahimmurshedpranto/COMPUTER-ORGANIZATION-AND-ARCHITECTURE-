.model small
.stack 100H
.code

main proc
    mov cx,255
    mov bl,0
    
    top:
    mov ah,2
    mov dl,bl
    int 21h
    inc bl
    dec cx
    jnz top
    
    
    mov ah,4ch
    int 21h
    main endp
end main