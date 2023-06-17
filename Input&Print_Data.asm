.model
.stack
.data
msg db "input anything:$"

.code
main proc 
    mov ax,@data     ;initialize data
    mov ds,ax
    
    lea bx,msg
    mov ah,9         ;print data
    mov dx,bx
    int 21h
    
    mov ah,1
    int 21h          ;take input
    mov msg,al 
    
    mov ah,2
    mov dl,10        ;new line
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,msg       ;print input
    int 21h

    main endp
end main