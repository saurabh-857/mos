; boot.asm

bits		16						; 16 bit real mode
org		0x7C00					; legacy boot adr

start:
	cli
	xor		ax, ax
	mov		ds, ax
	mov		es, ax
	mov		ss, ax
	mov		sp, ax

	mov		si, msg
	call		print_fn

end:
	cli
	hlt

print_fn:
	lodsb						; load byte form [si] into al
	or		al, al
	jz		.done
	mov		ah, 0x0E
	int		0x10
	jmp		print_fn
.done:
	ret

; data
msg		db "Hello, Kernel!", 0x0D, 0x0A, 0x0

; boot signature
times 	510-($-$$) db 0x0
dw 		0xAA55					; magic number

