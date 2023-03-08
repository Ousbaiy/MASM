#include <iostream>

using namespace std;

extern "C" int MyFunction();

int main(void) {
	cout << "The result is: " << MyFunction() << endl;
	return 0;
}
