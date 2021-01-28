		.text
		.global	main
		.align	2
		
print:	str		x30, [sp, -16]!		// print(int)
		mov		w1, w0				// fmt will go in x0 so move w0 to w1
		mov		w2, w0				// printing the int twice
		adr		x0, fmt				// load address of fmt
		bl		printf				// printf
		ldr		x30, [sp], 16
		ret

main:	str		x30, [sp, -16]!
		add		x1, x1, 8			// skip over argv[0]
		ldr		x0, [x1]			// dereferences argv[1] to get a char *
		cbz		x0, 1f				// if null, there is no argv[1] so leave
		bl		atoi				// call atoi(argv[1])
		bl		print				// call print(int)
1:		ldr		x30, [sp], 16
		mov		w0, wzr
		ret

		.data
fmt:	.asciz	"dec: % 2d hex: 0x%08x\n"

		.end
