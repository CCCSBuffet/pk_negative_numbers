		.text
		.global	main
		.align	2
		
print:	str		x30, [sp, -16]!
		mov		w1, w0
		mov		w2, w0
		adr		x0, fmt
		bl		printf
		ldr		x30, [sp], 16
		ret

main:	str		x30, [sp, -16]!
		add		x1, x1, 8
		ldr		x0, [x1]
		cbz		x0, 1f
		bl		atoi
		bl		print
1:		ldr		x30, [sp], 16
		mov		w0, wzr
		ret

		.data
fmt:	.asciz	"dec: % 2d hex: 0x%08x\n"

		.end
