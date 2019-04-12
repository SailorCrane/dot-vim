
assume cs:my_code

my_code segment
    start:   mov al, ds:[bx]
             mov es:[bx], al
             inc bx             ; 因为每次复制1个字节(通过al中转), 所以inc(+1)
             loop s

             mov ax,4c00h
             int 21h
my_code ends

end start
