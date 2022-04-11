.model small
.stack 100h
.data
blgtr db "Bl is greater $"
clgtr db "Cl is greater $"
.code
main proc
     mov ax,@data
     mov ds,ax
     
     mov bl,9
     mov cl,7
     
     cmp bl,cl
     jg lblblgtr
     jl lblclgtr
     
     lblblgtr:
        lea dx,blgtr
        mov ah,9
        int 21h
        
        mov ah,4ch
        int 21h
     
     lblclgtr:
        lea dx,clgtr
        mov ah,9
        int 21h
        
        mov ah,4ch
        int 21h
    
    
    main endp
end main
