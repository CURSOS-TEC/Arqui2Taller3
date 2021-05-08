#include <emmintrin.h>
#include <smmintrin.h>

#include <stdio.h>
#include <errno.h>  // for errno
#include <limits.h> // for INT_MAX, INT_MIN
#include <stdlib.h> // for strtol
/**
 * Obtiene el valore del maximo del vector
 * vector: vector para calcular el valor maximo
 */
unsigned int getMaxFromVector(__m128i vector)
{
    unsigned int result = 0;
    if (_mm_extract_epi32(vector, 0) > result)
    {
        result = _mm_extract_epi32(vector, 0);
    }
    if (_mm_extract_epi32(vector, 1) > result)
    {
        result = _mm_extract_epi32(vector, 1);
    }
    if (_mm_extract_epi32(vector, 2) > result)
    {
        result = _mm_extract_epi32(vector, 2);
    }
    if (_mm_extract_epi32(vector, 3) > result)
    {
        result = _mm_extract_epi32(vector, 3);
    }
    return result;
}

int main(int argc, char *argv[])
{
    int data;
    printf("Ejercicio 1\n");

    // Ejercicio 1
    int i, j, lines = 4, columns = 3;
    int *intMatrix;
    intMatrix = (int *)malloc(lines * columns * sizeof(int));

    if (argc == (lines * columns) + 1)
    {
        for (int i = 0; i < lines; i++)
        {
            for (int j = 0; j < columns; j++)
            {
                unsigned int conv = atoi(argv[(i * columns) + j + 1]);
                intMatrix[(i * columns) + j] = conv;
                //printf("%d \n", intMatrix[(i * lines) + j]);
                //printf("%d \n", atoi(argv[(i * columns) + j + 1]));
            }
        }
    }
    printf("----------- col %d : (%d %d %d %d)--------------- \n", 0, intMatrix[0], intMatrix[3], intMatrix[6], intMatrix[9]);
    __m128i col0 = _mm_set_epi32(intMatrix[0], intMatrix[3], intMatrix[6], intMatrix[9]);
    unsigned int maxCol0 = getMaxFromVector(col0);


    printf("----------- col %d : (%d %d %d %d)--------------- \n", 1, intMatrix[1], intMatrix[4], intMatrix[7], intMatrix[10]);
    __m128i col1 = _mm_set_epi32(intMatrix[1], intMatrix[4], intMatrix[7], intMatrix[10]);
    unsigned int maxCol1 = getMaxFromVector(col1);

    printf("----------- col %d : (%d %d %d %d)--------------- \n", 2, intMatrix[2], intMatrix[5], intMatrix[8], intMatrix[11]);
    __m128i col2 = _mm_set_epi32(intMatrix[2], intMatrix[5], intMatrix[8], intMatrix[11]);
    unsigned int maxCol2 = getMaxFromVector(col2);

    __m128i vectorMax = _mm_set_epi32(maxCol0,maxCol1,maxCol2,0);
    printf(" max col0 %d \n", maxCol0);
    printf(" max col1 %d \n", maxCol1);
    printf(" max col2 %d \n", maxCol2);

    return 0;
}