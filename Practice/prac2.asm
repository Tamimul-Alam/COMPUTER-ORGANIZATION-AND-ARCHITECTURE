.model small
.stack 100h
.data

msg1 db 0ah,0dh, 'Name : Tamimul Alam $'
msg2 db 0ah,0dh,'ID : 20-42215-1 $'
msg3 db 0ah,0dh,'Age: 24 Year $'

.code

main proc
    
    mov ax, @data
    mov ds, ax
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,0ah  ;new line
    int 21h
    mov dl,0dh  ;carries return
    int 21h
   
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,0ah  ;new line
    int 21h
    mov dl,0dh  ;carries return
    int 21h
     
    
    lea dx,msg3
    mov ah,9
    int 21h  
    
    mov ah,2
    mov dl,0ah  ;new line
    int 21h
    mov dl,0dh  ;carries return
    int 21h   
    
    mov ah,4ch   
    int 21h
    main endp

end main

 
    
      
    
    
    


