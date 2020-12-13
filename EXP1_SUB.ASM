; 8 bit subraction with carry

data segment
        n1 db 02h  ; n1 = 02 	
        n2 db 07h
        diff db ?
        carry db 00h
data ends

code segment
assume cs:code, ds:data
start:
        mov ax,data
        mov ds,ax
         
        mov cx,00h
        mov al,n1	; ax = ah al ; cx
        mov bl,n2	; al = 02
        sub al,bl	; bl = 07 ;
        jnc skip
        inc cx		;
        mov carry,cl
	neg al
  skip: mov diff,al
        mov ah,4ch
        int 21h
code ends
end start
