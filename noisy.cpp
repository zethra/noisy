#include <windows.h>
using namespace std;

int main() {
	system("taskkill /im cmd.exe");
	system("noisy.bat");
	return 0;
}