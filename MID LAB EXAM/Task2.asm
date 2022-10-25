.MODEL SMALL
.STACK 100H
.DATA  

         input1 DB 10,13,'Enter the 1st input : $'
         input2 DB 10,13,'Enter the 2nd input : $' 
         result DB 10,13,'You have entered : $ ' 
         space DB ' and $ '
        
.CODE   

    MAIN PROC 
        
        MOV AX, @DATA
        MOV DS, AX
        
            
        MOV AH, 9  
        LEA DX, input1
        INT 21H  
             
        MOV AH,1
        INT 21H     
        MOV BH,AL
       
        MOV AH,2  
        MOV DL,10
        INT 21H
        MOV DL,13  
        
        
        MOV AH, 9  
        LEA DX, input2
        INT 21H 
  
        MOV AH,1
        INT 21H
        MOV BL,AL
       
        MOV AH,2  
        MOV DL,10
        INT 21H
        MOV DL,13  
 
        MOV AH, 9  
        LEA DX,result
        INT 21H   
        
        MOV AH,2
        MOV DL,BH
        INT 21H 
        
        MOV AH, 9  
        LEA DX,space
        INT 21H   
        
          
        MOV AH,2
        MOV DL,BL
        INT 21H      
        
    
     EXIT:
        MOV AH, 4CH
        INT 21H
        ENDP
    END MAIN