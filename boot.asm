bits	16				; 16 bit real mode
org		0x7C00			; legacy boot adr

start:
	cli
	xor		ax, ax
	mov		ds, ax
	mov		es, ax
	mov		ss, ax
	mov		sp, ax

	cli
	hlt

; boot signature
times 	510-($-$$) db 0
dw 		0xAA55			; magic number
