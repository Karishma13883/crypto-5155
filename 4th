#include <stdio.h>
#include <string.h>
void vigenereCipher(char* plaintext, char* key) {
    char ciphertext[100];
    int i, j, len = strlen(plaintext);
    int keyLen = strlen(key);
    for (i = 0, j = 0; i < len; i++) {
        char c = plaintext[i];
        if (c >= 'a' && c <= 'z') {
            ciphertext[i] = (c - 'a' + (key[j] - 'a')) % 26 + 'a';
            j = (j + 1) % keyLen;
        } else if (c >= 'A' && c <= 'Z') {
            ciphertext[i] = (c - 'A' + (key[j] - 'A')) % 26 + 'A';
            j = (j + 1) % keyLen;
        } else {
            ciphertext[i] = c;
        }
    }
    ciphertext[len] = '\0';
    printf("Encrypted text: %s\n", ciphertext);
}
int main() {
    char plaintext[100];
    char key[100];
    printf("Enter a string to encrypt: ");
    gets(plaintext);
    printf("Enter the key: ");
    gets(key);
    vigenereCipher(plaintext, key);
    return 0;
}
