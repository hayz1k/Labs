#define _CRT_SECURE_NO_DEPRECATE

#include <stdio.h>
#include <math.h>
#include <locale.h>
#include <time.h>
#include <string.h>
#include <conio.h>
#include <stdlib.h>


void sort(int array[10][10], char name[10][10]) {

}

void search_place(int array[10][10], char name[10][10]) {

}

void reverse_sort(int array[10][10], char name[10][10]) {

}

void table(int array[10][10], char name[10][15]) {

	puts("------------------------------------------------------------------------------------------");
	puts("| Номер       |    Участник        |    Эстафета    |  Личная гонка  | Всего  | Итоговое |");
	puts("| участника   |                    |----------------+----------------| баллов | место    |");
	puts("|             |                    |  Место | Баллы | Место | Баллы  |        |          |");
	puts("------------------------------------------------------------------------------------------");
	printf("|      %1d      |       %10s   |   %1d    |  %3d  |    %1d  |    %2d  |   %3d  |       %1d  |\n", array[0][0], name[0], array[0][1], array[0][3], array[0][2], array[0][4], array[0][5], array[0][6]);
	puts("------------------------------------------------------------------------------------------");
	printf("|      %1d      |       %10s   |   %1d    |  %3d  |    %1d  |    %2d  |   %3d  |       %1d  |\n", array[1][0], name[1], array[1][1], array[1][3], array[1][2], array[1][4], array[1][5], array[1][6]);
	puts("------------------------------------------------------------------------------------------");
	printf("|      %1d      |       %10s   |   %1d    |  %3d  |    %1d  |    %2d  |   %3d  |       %1d  |\n", array[2][0], name[2], array[2][1], array[2][3], array[2][2], array[2][4], array[2][5], array[1][6]);
	puts("------------------------------------------------------------------------------------------");
	printf("|      %1d      |       %10s   |   %1d    |  %3d  |    %1d  |    %2d  |   %3d  |       %1d  |\n", array[3][0], name[3], array[3][1], array[3][3], array[3][2], array[3][4], array[3][5], array[2][6]);
	puts("------------------------------------------------------------------------------------------");
	printf("|      %1d      |       %10s   |   %1d    |  %3d  |    %1d  |    %2d  |   %3d  |       %1d  |\n", array[4][0], name[4], array[4][1], array[4][3], array[4][2], array[4][4], array[4][5], array[3][6]);
	puts("------------------------------------------------------------------------------------------");
	printf("|      %1d      |       %10s   |   %1d    |  %3d  |    %1d  |    %2d  |   %3d  |       %1d  |\n", array[5][0], name[5], array[5][1], array[5][3], array[5][2], array[5][4], array[5][5], array[4][6]);
	puts("------------------------------------------------------------------------------------------");
	printf("|      %1d      |       %10s   |   %1d    |  %3d  |    %1d  |    %2d  |   %3d  |       %1d  |\n", array[6][0], name[6], array[6][1], array[6][3], array[6][2], array[6][4], array[6][5], array[5][6]);
	puts("------------------------------------------------------------------------------------------");

}

void main() {
	setlocale(LC_ALL, "RUS");
	int array[10][10];
	int x, end = 0;
	char name[10][15];

	/* int result_place[10];
	
	for (i = 0; i < 7; i++) {
		result_place[i] = array[i][5];
	}
	
			СЛОВАРИК by* Nastya#POVAR
	index     0    1    2    3   - h
	value    430, 323, 251, 121

	place = index+1 => h+1;

	for (h = 0; h < 7; h++) {
		for (i = 0; i < 7; i++) {
			if (result_place[h] == array[i][5]) {
				array[i][6] = h + 1;
			}
		}
	}

	if result_place[h] == array[i][5]{
		array[i][6] = h+1; 
	}
	*/
	for (int i = 0; i < 7; i++) {
		printf("\nВведите имя участника #%d\n", i + 1);
		scanf("%s", &name[i]);
		int cnt = 0;
		for (int j = 0; j < 3; j++) {
			if (cnt < 2) {
				cnt++;
				printf("Введите место за гонку %d\n", j + 1);
				scanf("%d", &x);
			}
			array[i][j] = x;
			if (j == 0) {
				array[i][j] = i + 1;
				/* array[i][1] = Эстафета 
				   array[i][2] = Личные гонки */
			}
		}
	}
	
	for (int i = 0; i < 7; i++) {
		switch (array[i][1]) {
		case 1: array[i][3] = 420; break;
		case 2: array[i][3] = 390; break;
		case 3: array[i][3] = 360; break;
		case 4: array[i][3] = 330; break;
		case 5: array[i][3] = 310; break;
		case 6: array[i][3] = 290; break;
		case 7: array[i][3] = 270; break;
		}
	}

	for (int i = 0; i < 7; i++) {
		switch (array[i][2]) {
		case 1: array[i][4] = 60; break;
		case 2: array[i][4] = 54; break;
		case 3: array[i][4] = 48; break;
		case 4: array[i][4] = 43; break;
		case 5: array[i][4] = 40; break;
		case 6: array[i][4] = 38; break;
		case 7: array[i][4] = 36; break;
		}
	}

	for (int i = 0; i < 7; i++) {
		array[i][5] = (array[i][3] + array[i][4]);
	}


	while (end != 5) {
		puts("Выберите команду:\n1) Вывести таблицу на экран.\n2) Сортировка в порядке возрастания.\n3) Сортировка в порядке убывания.\n4) Данные по итоговому месту.\n5) Выйти из программы.");
		scanf("%d", &end);
		switch (end) {
		case 1:
			table(array, name);
			break;
		case 2:
			sort(array, name);
			break;
		case 3:
			reverse_sort(array, name);
			break;
		case 4:
			search_place(array, name);
			break;
		case 5:
			break;
		}
	}
}
