.model small
.stack 100h
.data
strBL db "BL is greater $" 
strCL db "CL is greater $"
strCH db "CH is greater $"
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov bl,7
    mov cl,5
    mov ch,3
    
    cmp bl,cl
    jg cmpBLwithCH
    
    
    
    
    cmp ch,cl 
    jg cmpBLwithCH 
    
    
    
    printstrCL:
    
    lea dx,strCL
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
    cmpBLwithCH:
    cmp bl,ch
    jg printstrBL
    
    
    printstrCH:
    
    lea dx,strCH
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
    printstrBL:
    
    lea dx,strBL
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main