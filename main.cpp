#include <iostream>

using namespace std;

extern "C" int MyFunction();
extern "C" int aORb();
extern "C" int negatedB();


int main(void) {
	cout << "The result of x is: " << MyFunction() << endl;
// 	cout << "The result is: " << aORb() << endl;
//	cout << "The result is: " << negatedB() << endl;
	
	return 0;
}
