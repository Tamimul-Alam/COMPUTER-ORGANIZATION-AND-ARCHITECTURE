org 100h

.MODEL SMALL
.DATA       
       MSG1 DB 10,13,"ENTER FIRST NUMBER:$"
       MSG2 DB 10,13,"ENTER SECOND  NUMBER:$" 
       MSG3 DB 10,13,"RESULT:$"
       
.CODE

MAIN PROC
      
      
     MOV AX,@DATA
     MOV DS,AX
      
      ;INPUT ONE 
     MOV DX,OFFSET MSG1
     MOV AH,9
     INT 21H   
     
     MOV AH,01
     INT 21H
     
     CMP AL,09          ;CMP = COMPARE
     JBE NUMBER:        ;JUMP
     
     NUMBER:
     MOV CL,04
     ROL AL,CL       ;ROTATE TO MSB
     MOV AH,01
     INT 21H
     
     ;INPUT  TWO           
     MOV DX,OFFSET MSG2
     MOV AH,9
     INT 21H  
     
     MOV AH,01
     INT 21H
     
     CMP AL,09          ;CMP = COMPARE
     JBE NUMBER:
     
     MOV CL,04
     ROL AL,CL       ;ROTATE TO MSB
     MOV AH,01
     INT 21H    
      
     ;RESULT 
     MOV DX,OFFSET MSG3
     MOV AH,9
     INT 21H 
     
     ADD AL,CL      
    
    
MAIN ENDP

RET