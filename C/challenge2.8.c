#include <stdio.h>
#include <string.h>

int main() {

    char inputstring[30];

    printf("What do you say? ");
    fgets(inputstring, 30, stdin);

    // Strip trailing newline thanks to some StackOverflow cleverness
    inputstring[strcspn(inputstring, "\n")] = 0;

    printf("You said \"%s\". It is %lu characters, assuming you didn't use Unicode\n", inputstring, strlen(inputstring));

    return 0;
}
