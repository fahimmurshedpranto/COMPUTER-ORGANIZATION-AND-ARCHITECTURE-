.MODEL SMALL
.STACK 100H
.DATA 

MSG DB "Ente a binary nuber: $"
MSG2 DB 0AH,0DH, "It is even $"
MSG3 DB 0AH,0DH, "It is odd $"
.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, MSG
     MOV AH, 9
     INT 21H
     
     MOV CX,8 
     
     INPUTS_NUM:
     MOV AH, 1
     INT 21H
     MOV BL, AL 
     
     LOOP INPUTS_NUM
     
     SHOW:
     CMP BL,31H
     JE ODD
     JMP EVEN
     
     ODD: 
     LEA DX, MSG3
     MOV AH, 9
     INT 21H
     
     JMP EXIT
     
     EVEN:
     LEA DX, MSG2
     MOV AH, 9
     INT 21H
    
     EXIT:               
     MOV AH, 4CH
     INT 21H
     MAIN ENDP    
     

END MAIN


