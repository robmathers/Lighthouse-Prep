#include <stdio.h>

int main() {
    int mystery_number = 7;
    int number_chosen;

    printf("Win a prize everytime!\n");
    printf("\n");
    printf("Pick a number between: 1 - 5\n");
    scanf("%d\n", &number_chosen); // 5
    printf("Congratulations! You won a...\n");

    switch(number_chosen)
    {
      case 1: printf("Trip to Barbados!"); break;
      case 2: printf("A bicycle!"); break;
      case 3: printf("A meal at Timmies!"); break;
      case 4: printf("Season pass to Wonderland!"); break;
      case 5: printf("Five nights at DisneyLand!"); break;
    }
}
