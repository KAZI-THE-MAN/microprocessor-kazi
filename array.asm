.model small
.stack 100h
.data
array db "Array element: $" 
ele db 3,2,5,6,7
.code
main proc
     mov ax,@data
     mov ds,ax
     
     lea dx,array
     mov ah,9
     int 21h
     
     mov dx,10
     mov ah,2
     int 21h
     mov dx,13
     mov ah,2
     int 21h
     
     mov cx,5
     lopp1:
     mov dl,ele[si]
     add dx,48
     mov ah,2
     int 21h
     
     inc si
     
     mov dx,32
     mov ah,2
     int 21h
     loop lopp1
    main endp
end main 

