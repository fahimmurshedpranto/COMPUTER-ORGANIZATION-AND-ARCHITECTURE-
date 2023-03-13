.model small
.stack 100h
.data
msg db 0ah,0dh,'Welcome to my calculator!! $'
msg1 db 0ah,0dh,'Please Enter digi1 t$'
msg1 db 0ah,0dh,'Please Enter digit2$'

.code 
main proc
    mov ax,@data
    mov ds,ax
    
    

