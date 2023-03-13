.model small
.stack 100h
.data

msg db 'Type a character: $'
msg1 db 0ah,0dh, 'The ascii code of: $'
msg2 db 'In binary is: $'
msg3 db 0ah,0dh, 'The number of 1 bit is: $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov dl,bl
    mov ah,2
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    call task
    
    mov ah,4ch
    int 21h
    main endp


 task proc
   mov cx,8
   mov bh,0
   
   atb:
   
   shl bl,1
   jnc zero
   inc bh
   mov dl,31h
   jmp one
   
   zero:
   mov dl,30h
   
   
   one:
   mov ah,2
   int 21h
   
   loop atb
   
   add bh,30h
   
   lea dx,msg3
   mov ah,9
   int 21h
   
   mov dl,bh
   mov ah,2
   int 21h
   
   task endp
 
 end main
    