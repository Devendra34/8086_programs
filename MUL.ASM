; 16 bit multiplication

data segment
        n1 dw 0fffh
        n2 dw 50h
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
        mul bx
        jnc next
        mov carry,dx
   next:mov ans,ax
        mov ah,4ch
        int 21h
code ends
end start
