.model small
.stack 100h
.data 
ele db 1,2,3,3
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    
    
    mov bl,0
    lea si,ele
    mov cx,4
    
    loopA:
    add bl,ele[si]  
    inc si
    
    loop loopA   
    
    mov dl,bl
    add dl,48
    mov ah,2
    int 21h
    
    
    
    main endp
end main