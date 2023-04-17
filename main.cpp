#include <iostream>

using namespace std;

extern "C" int MyFunction();
extern "C" int testCPUID();
extern "C" int main();


int main(void) {
//	cout << "The result is: " << MyFunction() << endl;
 cout << "The result is: " << testCPUID() << endl;
 //cout << "The result is: " << main() << endl;
	
	return 0;
}
