.model small
.stack 100h
.data
 
    a db 'ENTER A UPPERCAE LATTER: $'
    b db ?
    c db 0ah,0dh,'YOUR ENTERED LOWERCASE LATER IS: '
    d db ?
    e db '$'
    
    f db 0ah,0dh,'ENTER A LOWERCASE LATTER: $'
    g db ?
    h db 0ah,0dh,'YOUR ENTERED UPPERCASE LATER IS: '
    i db ?
    j db '$'
 
.code

main proc
 
 
    mov ax,@data
    mov ds,ax
 
    mov ah,9
    lea dx,a
    int 21h
 
    mov ah,1
    int 21h
    mov b,al
 
    add al,20h
    mov d,al
 
    mov ah,9
    lea dx,c
    int 21h 
    
 
  
    
    ;; lower case to upper case
    
     mov ax,@data
    mov ds,ax
 
    mov ah,9
    lea dx,f
    int 21h
 
    mov ah,1
    int 21h
    mov g,al
 
    sub al,20h
    mov i,al
 
    mov ah,9
    lea dx,h
    int 21h  
    
 
    mov ah,4ch
    int 21h

    main endp
end main



