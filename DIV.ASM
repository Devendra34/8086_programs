; 16 bit divison

data segment
        n1 dw 03h
        n2 dw 02h
        ans dw ?
        carry dw 00h
data ends

code segment
assume cs:code, ds:data
start:
        mov ax,data
        mov ds,ax

        mov dx,carry
        mov ax,n1
        mov bx,n2
        div bx
        jnc next
        mov carry,dx
   next:mov ans,ax
        mov ah,4ch
        int 21h
code ends
end start
