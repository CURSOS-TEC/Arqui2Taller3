#include <emmintrin.h>
#include <smmintrin.h>

#include <stdio.h>
#include <errno.h>	// for errno
#include <limits.h> // for INT_MAX, INT_MIN
#include <stdlib.h> // for strtol

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
	printf("Probando SSE \n");

	__m128i oddVector = _mm_set_epi32(1, 5, 9, 13);
	__m128i evenVector = _mm_set_epi32(12, 14, 16, 18);

	__m128i result = _mm_sub_epi32(evenVector, oddVector); // result = evenVector - oddVector

	printf("Result *********************** \n");

	// data = 0;

	// data = _mm_extract_epi32(result, 0);
	// printf("%d \t", data);

	// data = _mm_extract_epi32(result, 1);
	// printf("%d \t", data);

	// data = _mm_extract_epi32(result, 2);
	// printf("%d \t", data);

	// data = _mm_extract_epi32(result, 3);
	// printf("%d \t", data);

	// for (size_t i = 0; i < 4; i++)
	// {
	// 	data = _mm_extract_epi32(result, i);
	// 	printf("%d \t", data);
	// }

	// printf("\n");

	// Ejercicio 1
	int i, j, lines = 4, columns = 3;
	int *intMatrix;
	intMatrix = (int *)malloc(lines * columns * sizeof(int));

	if (argc == 13)
	{
		for (int i = 0; i < lines; i++)
		{
			for (int j = 0; j < columns; j++)
			{
				unsigned int conv = atoi(argv[(i * columns) + j + 1]);
				intMatrix[(i * lines) + j] = conv;
				printf("%d \n", intMatrix[(i * lines) + j]);
				//printf("%d \n", atoi(argv[(i * columns) + j + 1]));
			}
		}
	}
	__m128i col0 = _mm_set_epi32(0, 3, 6, 9);
	unsigned int maxCol0 = getMaxFromVector(col0);
	printf(" max col0 %d \n", maxCol0);

	__m128i col1 = _mm_set_epi32(1, 4, 7, 10);
	unsigned int maxCol1 = getMaxFromVector(col1);
	printf(" max col1 %d \n", maxCol1);

	__m128i col2 = _mm_set_epi32(2, 5, 8, 11);
	unsigned int maxCol2 = getMaxFromVector(col2);
	printf(" max col2 %d \n", maxCol2);

	return 1;
}