include 'emu8086.inc'
.MODEL SMALL
.STACK 100H
.DATA



.CODE

MAIN PROC 
   MOV BL,5  
   ;MOV AL,2
  
   
   MOV AH,1
   INT 21H
  ; ADD AL,48
   
   CMP BL,AL
   JL IF
   JGE ELSE
   JS ELSE_IF 
   
   IF:
   PRINTN "THE NUMBER IS LESS THAN REGISTER VALUE"  
   JMP EXIT 
   
   
   ELSE:
   PRINTN "THE NUMBER IS GREATER THAN REGISTER VALUE" 
   JMP EXIT
   
   ELSE_IF:
   PRINTN  "THE NUMBER IS NEGATIVE AND LESS THAN REGISTER VALUE"
   JMP EXIT
   
   
   EXIT:
   PRINT "THE NUMBER IS PRINTED"
   
   
   
   MOV AH,4CH
   INT 21H 
    
    
MAIN ENDP
END MAIN