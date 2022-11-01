.model small
.stack 100h
.data

msg1 db 'The difference of $' 
msg2 db ' and $'
msg3 db ' is $'

a dw ?
b dw ?
c dw ?

.code

main proc  
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov c,ax  ;input ?
    mov bx,c
    
    mov ah,1   
    int 21h
    mov a, ax ;input a
    mov bx,a 
    
    mov ah,1
    int 21h
    mov b,ax  ;input b
    mov cx,b  
    
    mov ah,2
    mov dl,0ah
    int 21h    ;space
    mov dl,0ah 
    int 21h
     
    
    lea dx,msg1
    mov ah,9      ;print msg1
    int 21h  
    
    mov ah,2
    mov dx,bx ;output 1
    int 21h    
    
    lea dx, msg2
    mov ah,9     ;print msg2
    int 21h
    
    
    mov ah,2
    mov dx,cx ; output 2
    int 21h  
    
    lea dx, msg3
    mov ah,9 ;print msg3
    int 21h
    
    sub bx,cx
    add bx,48
    
    mov ah,2
    mov dx,bx
    int 21h
    
    
    
    


