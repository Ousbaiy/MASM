#include <iostream>

using namespace std;

extern "C" int aANDb();
extern "C" int aORb();
extern "C" int negatedB();


int main(void) {
	cout << "The result is: " << aANDb() << endl;
// 	cout << "The result is: " << aORb() << endl;
//	cout << "The result is: " << negatedB() << endl;
	return 0;
}
