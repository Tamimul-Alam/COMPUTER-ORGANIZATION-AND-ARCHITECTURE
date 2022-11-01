.model small
.stack 100h
.data
msg1 dw 'It is a Number $'
msg2 dw 'It is not a number $'
.code 

main proc  
    mov ax,@data
    mov ds,ax
    
      mov ah,1   
      int 21h
      mov bl,al   
      
       mov ah,2
    mov dl,0ah  ;new line
    int 21h
    mov dl,0dh  ;carries return
    int 21h
      
      cmp bl ,30h
       jae check1 
      jmp no 
      
      
      check1:
      cmp bl,39h
     jbe check2 
      jmp no 
      
      check2: 
      lea dx,msg1   
      mov ah,9
      int 21h
      jmp exit  
      
      no: 
      lea dx,msg2   
      mov ah,9
      int 21h 
      
    
    exit:
    mov ah,4ch 
    int 21h
    main endp
end main