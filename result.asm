.model small
.stack 100h
.data
result db "Quatient $"
remiander db "Remainder $"
q db ?
r db ?
.code

main proc
    
     mov ax,@data
     mov ds,ax
     
     mov ax,7
     mov bl,2
     div bl
     
     mov q,al
     mov r,ah
     
     lea dx,result
     mov ah,9
     int 21h
     
     mov dl,q
     add dl,48
     mov ah,2
     int 21h
     
     mov dx,10
     mov ah,2
     int 21h
     mov dx,13
     mov ah,2
     int 21h
     
     
    
     lea dx,remiander
     mov ah,9
     int 21h
     
     mov dl,r
     add dl,48
     mov ah,2
     int 21h
     
    
     
    
    
    main endp
end main

