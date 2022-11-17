  .model small
  .stack 100h
  .data
  
  cr equ '0dh'
  lf equ '0ah'
  msg1 db 'do not stop$'
  msg2 db 'stop$'
  
  .code main
  main proc
    mov ax, @data
    mov ds, ax
    mov cx, 7h
    
    print_:
    lea dx, msg1
    mov ah,9
    int 21h 
    
    mov ah, 2
    mov dl, 0dh
    int 21h
    
    mov dl, 0ah
    int 21h
    dec cx 
    
    jnz print_
    mov ah, 2 
    
    mov dl, 0dh
    int 21h
    
    mov dl, 0ah
    int 21h
    
    lea dx, msg2
    mov ah, 9
    int 21h
    
    exit:
    lea dx, msg2
    mov ah,9
    int 21h 
    
    mov ah, 4ch
    int 21h
    main endp
  end main