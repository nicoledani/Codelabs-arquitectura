.text
.global seno
.extern sin

seno:
	sub     $8, %rsp		# Alinear La Pila

	mulsd   %xmm0, %xmm1		# xmm1 = xmm1 * xmm0
	movsd   %xmm1, %xmm0		# Mover xmm1 a xmm0 Para Que Lo Reciba La Funcion Sin

	call    sin

	add     $8, %rsp		# Restaurar La Pila

	ret

