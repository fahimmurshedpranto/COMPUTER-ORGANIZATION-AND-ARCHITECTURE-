.MODEL SMALL
.STACK 100H
.DATA
A DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
   
   XOR CX,CX 
   
   
   INPUTS:
   MOV AH,1
   INT 21H   
   
   CMP AL,0DH 
   JE SATRT    
   
   XOR AH,AH 
   ;INC CX  
   SHL BX,1
   AND AL,0FH ;ASSEMBLY TO BINARY
   OR  BX,AX
   JMP INPUTS


SATRT:
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 

  MOV CX,16
 
   T: 
     ROL BX,1 
     JC CR 

     MOV AH,2
     MOV DL,'0'
     INT 21H
     JMP DOWN

     CR: 
     MOV AH,2
     MOV DL,'1'
     INT 21H 
     
     DOWN:
     LOOP T
     
     EXIT:
     MOV AH,4CH
     INT 21H

MAIN ENDP
END MAIN