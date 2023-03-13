.MODEL SMALL
.STACK 100H
.DATA
A DB "EVEN$" 
B DB "ODD$"  
C DB "NOT NMBR$" 

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
   
  
     
   MOV AH,1
   INT 21H
   
   MOV AH,2
   MOV DX,0AH
   INT 21H
   MOV DX,0DH
   INT 21H
   
   CMP AL,30H
   JGE NMBR
   
   JMP NOTNMBR
   
   
   NMBR:
   CMP AL,39H
   JG NOTNMBR
   
   SHR AL,1
   JNC PRINT2
   
   
   
   LEA DX,B
   MOV AH,9
   INT 21H
   JMP EXIT
   
   PRINT2:
   LEA DX,A
   MOV AH,9
   INT 21H
   JMP EXIT
   
   NOTNMBR:
   LEA DX,C
   MOV AH,9
   INT 21H
     
     EXIT:
     MOV AH,4CH
     INT 21H

MAIN ENDP
END MAIN       




