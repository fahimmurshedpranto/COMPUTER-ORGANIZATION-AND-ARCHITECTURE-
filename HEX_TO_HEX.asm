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
   JE START    
   
   SHL BX,4
   
   CMP AL,39H
   JG LETTER
    
   
   
   AND AL,0FH 
   JMP NEXT
   
   LETTER:
   SUB AL,37H
   
   NEXT:
   OR  BL,AL
   JMP INPUTS


START:
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    MOV CX,4
       
TOP:    
        MOV DL,BH
        

        SHR DL,4
        
        
        MOV AH,2
        
        CMP DL,9
        JLE NMBR
        JMP CHARACTER
        
        
        CHARACTER:
        ADD DL,37H
        INT 21H 
        JMP END_
        
        NMBR:
        ADD DL,30H
        INT 21H
        
        END_:
        
        SHL BX,4
        
        
        
     LOOP TOP
     
     EXIT:
     MOV AH,4CH
     INT 21H

MAIN ENDP
END MAIN       




           
           ;;;




