.MODEL SMALL
.STACK 100H 
.CODE
MAIN PROC  
    
    
    MOV AH,1     ;INPUT
    INT 21H      ;LOWERTO UPPER CASE
    MOV BL,AL
    
    
    SUB BL,20H
    
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
  
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN


