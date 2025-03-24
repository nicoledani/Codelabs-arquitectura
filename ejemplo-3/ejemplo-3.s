
.data

mensaje: .asciz "Numero1 %d Numero2 %d \r\n"

.text
.global main
.extern printf  #similar al include stdio.h

main:
_start:


	mov $4, %rax
	mov $5, %rbx

	movq $mensaje, %rdi
	movq %rax, %rsi
	movq %rbx, %rdx

	call imprimir

	call salir

salir:
	#salir al sistema
        mov $60, %rax
        mov $0, %rdi
        syscall
	ret

#funcion que imprime enteros en consola
imprimir:

	subq $8, %rsp   #Alineamos los datos

	# RAX se pone en 0 para indicar que necesitamos 0 registros de punto flotante
	movq $0, %rax	#rax=0 toca memoria
	xorq %rax, %rax	#rax=0 no toca memoria

	call printf

	addq $8, %rsp

	ret
