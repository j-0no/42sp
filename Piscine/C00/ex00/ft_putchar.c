#include <stdio.h>
#include <unistd.h>

void ft_putchar(char c){
	write(1, &c, 1);
}
int main() {
	ft_putchar('v');
	return 0;
}


