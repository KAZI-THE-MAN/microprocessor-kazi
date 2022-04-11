.model small
.stack 100h
.data
blgtr db "Bl is greater $"
clgtr db "Cl is greater $"
.code
main proc
     mov ax,@data
     mov ds,ax
     
     
     mov ah,1
     int 21h
     
     mov bl,al
     sub bl,48  
     
     mov dx,32
     mov ah,2
     int 21h
     
     mov ah,1
     int 21h
     
     mov cl,al
     sub cl,48
      
     
     cmp bl,cl
     jg lblblgtr
     jl lblclgtr 
     
     
     lblblgtr: 
     
        mov dl, 32
        mov ah, 02h
        int 21h  
            
        lea dx,blgtr
        mov ah,9
        int 21h
        
        
        
        mov ah,4ch
        int 21h 
        
        
     lblclgtr:
        mov dl, 32
        mov ah, 02h
        int 21h  
            
        lea dx,clgtr
        mov ah,9
        int 21h 
        
        
        mov ah,4ch
        int 21h
    
    
    main endp
end main



