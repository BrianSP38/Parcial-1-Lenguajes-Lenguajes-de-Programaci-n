#include <stdio.h>
#include <time.h>

// Función recursiva para calcular el MCD usando el algoritmo de Euclides
int gcd(int a, int b) {
    if (b == 0) return a;
    return gcd(b, a % b);
}

int main() {
    clock_t start = clock();    // Medimos el tiempo inicial

    // Ejemplo: MCD de 1071 y 462
    int result = gcd(1071, 462);

    clock_t end = clock();      // Medimos el tiempo final

    printf("MCD = %d\n", result);

    // Calcular e imprimir tiempo de ejecución en milisegundos
    printf("Tiempo C: %f ms\n", ((double)(end - start) / CLOCKS_PER_SEC) * 1000);

    return 0;
}
