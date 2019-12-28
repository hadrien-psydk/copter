#include <unistd.h>

int main() {
	write(1, "hello copter\n", 13);
	return 0;
}
