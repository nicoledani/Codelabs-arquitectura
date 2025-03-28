#include <stdio.h>
#include <stdlib.h>

double seno (double, double input);

int main(){

	double grados_a_grad = 0.017453292519943295;
//	double angulo = 45.00;
	double angulo;
	double resultado;

	printf("Ingrese El Angulo Para Seno(): ");
	scanf("%lf", &angulo);

	resultado = seno(grados_a_grad, angulo);
	printf("El seno de %.2f grados es: %.6f\n", angulo, resultado);


	return(EXIT_SUCCESS);


}
