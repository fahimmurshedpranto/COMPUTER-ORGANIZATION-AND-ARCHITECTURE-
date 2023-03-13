mov al,11011100b
mov cx,8

REVERSE:
shl al,1
rcr bl,1

LOOP REVERSE
mov al,bl     

mov ah, 2
mov dl,al
int 21h   

