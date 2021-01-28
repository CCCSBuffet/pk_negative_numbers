#include <iostream>

using namespace std;

struct Node {
		int second_int;
		char huh;
		short howza;
        Node * next;
        int payload;
};

int main() {
	Node n;

	cout << "size of Node: " << sizeof(Node) << endl;
	cout << hex << "n at 0x" << &n << endl;
	cout << dec;
	cout << "offset of next relative to n: " << (char *)(&n.next) - (char *)(&n) << endl;
	cout << "offset of payload relative to n: " << (char *)(&n.payload) - (char *)(&n) << endl;
	cout << "offset of second_int relative to n: " << (char *)(&n.second_int) - (char *)(&n) << endl;
	cout << "offset of huh relative to n: " << (char *)(&n.huh) - (char *)(&n) << endl;
	cout << "offset of howza relative to n: " << (char *)(&n.howza) - (char *)(&n) << endl;

	return 0;
}
