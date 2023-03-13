.model small
.stack 100h
.data

msg db 0ah,0dh, 'Before Reverse $'  
msg1 db 0ah,0dh, 'after Reverse $' 

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h 
    mov bx,ax
    push bx
    int 21h
    mov cx,ax
    push cx
    int 21h
    push ax 
    
     lea ax,msg1
    mov ah,9
    int 21h  
    
    
    pop bx
    mov ah,2
    mov dx,bx
    int 21h
    
    pop cx
    mov ah,2
    mov dx,cx
    int 21h
    
   pop ax
    mov ah,2
    mov dx,ax
    int 21h 
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main



                                                                             
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                                                                                                              
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               
                                                                               