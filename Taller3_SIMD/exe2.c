#include <emmintrin.h>
#include <smmintrin.h>

#include <stdio.h>
#include <errno.h>  // for errno
#include <limits.h> // for INT_MAX, INT_MIN
#include <stdlib.h> // for strtol
/** 
 * Imprime una matriz de n*m 
 * matrix es el puntero a la matriz
 * rows  es la cantidad de  filas
 * cols es la cantidad de columnas
 */
void printMatrix(unsigned int *matrix, size_t rows, size_t cols)
{
    if (matrix)
    {
        for (size_t row = 0; row < rows; row++)
        {
            printf("\n");
            for (size_t col = 0; col < cols; col++)
            {
                printf(" %d ", matrix[(row * cols) + col]);
            }
            printf("\n");
        }
    }
}

/**
 * Imprime de forma vertical un vector
 */ 
void printVector(__m128i vector)
{
    printf("----- \n");
    printf("  %d \n", _mm_extract_epi32(vector, 3));
    printf("  %d \n", _mm_extract_epi32(vector, 2));
    printf("  %d \n", _mm_extract_epi32(vector, 1));
    printf("  %d \n", _mm_extract_epi32(vector, 0));
    printf("----- \n");
}

/**
 *  Multiplica una matriz por un vector
 *  matrix la matriz de enteros
 *  rows la cantidad de filas
 *  cols cantidad de columnas 
 *  el vector a multiplicar
 * 
 */
__m128i multMatVector(unsigned int *matrix, size_t rows, size_t cols, __m128i vector)
{
    __m128i vectorResult = _mm_set_epi32(0, 0, 0, 0);
    __m128i *intrinsicsMatrix = (__m128i *)malloc(cols * sizeof(__m128i));
    for (size_t col = 0; col < cols; col++)
    {
        unsigned int vectorEntry = 1;
        switch (col)
        {
        case 0:
            vectorEntry = _mm_extract_epi32(vector, 3);
            break;
        case 1:
            vectorEntry = _mm_extract_epi32(vector, 2);
            break;
        case 2:
            vectorEntry = _mm_extract_epi32(vector, 1);
            break;
        case 3:
            vectorEntry = _mm_extract_epi32(vector, 0);
            break;

        default:
            vectorEntry = 1;
            break;
        }
        /**
         * _mm_set_epi32(a,b,c,d)
         * 
         *  d
         *  c
         *  b
         *  a
         */
        intrinsicsMatrix[col] = _mm_set_epi32(
            vectorEntry * matrix[col],
            vectorEntry * matrix[col + cols],
            vectorEntry * matrix[col + (2 * cols)],
            vectorEntry * matrix[col + (3 * cols)]);
        vectorResult = _mm_add_epi32(vectorResult, intrinsicsMatrix[col]);
        //printVector(vectorResult);
    }
    return vectorResult;
}

int main(int argc, char *argv[])
{
    int data;
    printf("Ejercicio 2\n");

    // Ejercicio 2
    int i, j, lines = 4, columns = 4;
    int *intMatrix;
    intMatrix = (int *)malloc(lines * columns * sizeof(int));

    if (argc == (lines * columns) + 1 + columns) // including vector to multiply
    {
        for (int i = 0; i < lines; i++)
        {
            for (int j = 0; j < columns; j++)
            {
                unsigned int conv = atoi(argv[(i * columns) + j + 1]);
                intMatrix[(i * columns) + j] = conv;
            }
        }
        __m128i vector = _mm_set_epi32(atoi(argv[17]), atoi(argv[18]), atoi(argv[19]), atoi(argv[20]));
        __m128i result = multMatVector(intMatrix, lines, columns, vector);
        printf("Matrix :");
        printMatrix(intMatrix, 4, 4);
        printf("\n");

        printf("Vector : \n");
        printVector(vector);

        printf("Result : \n");
        printVector(result);
    }
    return 0;
}