xor bx,bx 
mov cl,4
mov ah,1
int 21h

while_:
 cmp al,0dh
 je end_while
 
 cmp al,39h
 jg letter
 
 and al,0fh
 jmp shift
 
 Letter:
 sub al,37h
 
 shift:
 shl bl,cl
 or bl,al
 int 21h
 jmp while_
 
 end_while:
 