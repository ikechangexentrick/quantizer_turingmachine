/*
% clang++ -std=c++11 -Wall -o quantizer_test quantizer_test.cpp ../quantizer_logic.cpp -I..
*/
#include <iostream>
#include "quantizer_logic.h"

std::ostream &operator<<(std::ostream &ostr, const Pitch &in)
{
	ostr << CodeName[in.index] << in.oct;
	return ostr;
}

template <typename T, size_t N>
void test(const T (&scale)[N], int n_transpose = 0) {
	for (int i = 0; i < 200; ++i) {
		int x = i*20;
		Pitch p;
		int qd = quantize(x, scale, N, n_transpose, p);
		std::cout << "in: " << x << " quantized: " << qd 
			<< " " << p
			<< std::endl
		;
	}
}

int main()
{
	test(Scale_major);
	std::cout << std::endl << std::endl;
	test(Scale_major, 1);
	std::cout << std::endl << std::endl;
	test(Scale_major, 6);
	std::cout << std::endl << std::endl;
	test(Scale_major, 7);
	std::cout << std::endl << std::endl;
	test(Scale_major, 8);
	std::cout << std::endl << std::endl;
	test(Scale_major, -1);
	std::cout << std::endl << std::endl;
	test(Scale_major, -6);
	std::cout << std::endl << std::endl;
	test(Scale_major, -7);
	std::cout << std::endl << std::endl;
	test(Scale_major, -8);
	std::cout << std::endl << std::endl;

	test(Scale_minor);
	std::cout << std::endl << std::endl;
	test(Scale_hmmin);
	std::cout << std::endl << std::endl;
	test(Scale_whole);
	std::cout << std::endl << std::endl;
	test(Scale_dimsh);
	std::cout << std::endl << std::endl;
	test(Scale_chrom);
}
