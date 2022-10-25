.MODEL SMALL
.STACK 100H
.DATA 

    input   DW  'ENTER A NUMBER: $'
    print   DW  ' ',0AH,0DH,'$'
    less    DW 'LESS THAN 9',0AH,0DH,'$'
    greater DW 'GREATER THAN 9',0AH,0DH,'$'
    equal   DW 'EQUAL TO 9',0AH,0DH,'$'
    
.CODE



MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,input
    MOV AH,9H
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV CL,9
    MOV BL,AL
    
    LEA DX, print
    MOV AH,9H
    INT 21H
    
    CMP BL,CL
    JL LST
    JG GRT
    JE EQL
     
    
    GRT:
    LEA DX,greater
    MOV AH,9H
    INT 21H
    JMP L
    
    LST:
    LEA DX,less
    MOV AH,9H
    INT 21H
    JMP L
    
    EQL:
    LEA DX,equal
    MOV AH,9H
    INT 21H
    JMP L
    
    L:
    MOV AH,4CH
    INT 21H   



   MAIN ENDP
END MAIN