.model small
.stack 100h
.data 
str1 db "multiplication of $" 
str2 db " and  $"
str3 db " is $"
.code
main proc
     mov ax,@data
     mov ds,ax  
     
     lea dx, str1
     mov ah,9
     int 21h
     
     mov al,5
     mov dl,al
     
     add dl,48
     mov ah,2
     int 21h
     
     mov cl,4
     
     lea dx, str2
     mov ah,9
     int 21h
     
     mov dl,cl
     add dl,48
     mov ah,2
     int 21h 
     
     mov al,5
     mul cl
     aam
     
     mov bx,ax   
     
     lea dx, str3
     mov ah,9
     int 21h
     
     mov dl,bh
     add dl,48
     mov ah,2
     int 21h 
     
     mov dl,bl
     add dl,48
     mov ah,2
     int 21h 
     
     main endp
end main



