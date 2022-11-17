ORG 100H

.MODEL SMALL
.STACK 100H
.DATA
msg db 0ah, 0dh, 'simple messege$' 

.code
main proc
    mov ax,@data
    mov ds, ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main