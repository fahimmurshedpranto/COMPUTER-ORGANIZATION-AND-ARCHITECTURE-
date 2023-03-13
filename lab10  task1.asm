.model small
.stack 100h
.data

msg dw 'Hi, I am from main procedure $'
msg1 dw 'Hi, I am from second procedure $' 
msg2 dw 'Hi, I am from third procedure $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,2
    mov dx,0ah
    int 21h
    mov dx,0dh
    int 21h
    
    
    call second
    call third
    
    mov ah,4ch
    int 21h
    main endp

second proc
      lea dx,msg1
    mov ah,9
    int 21h
    
    
    mov ah,2
    mov dx,0ah
    int 21h
    mov dx,0dh
    int 21h
    second endp

third proc
      lea dx,msg2
    mov ah,9
    int 21h
    
    
    mov ah,2
    mov dx,0ah
    int 21h
    mov dx,0dh
    int 21h
    third endp 
end main