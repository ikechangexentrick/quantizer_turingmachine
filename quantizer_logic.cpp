#include "quantizer_logic.h"

static const constexpr int MAX_IDX = 4096; // limit of D-A converter

bool operator==(const Pitch &lhs, const Pitch &rhs)
{
	return lhs.oct == rhs.oct && lhs.index == rhs.index;
}

bool operator!=(const Pitch &lhs, const Pitch &rhs)
{
	return !(lhs == rhs);
}

int transpose(int index, int n_transpose, const int *const scale, int n_scale)
{
	if (n_transpose > 0) n_transpose %= n_scale;
	else n_transpose %= -n_scale;

	index += n_transpose;
	
	if (index < 0) {
		return scale[n_scale+index] - QPit*13*2;
	} else if (index >= n_scale) {
		return scale[index-n_scale] + QPit*13*2;
	} else {
		return scale[index];
	}
}

int quantize_impl(int input, const int * const scale, int n_scale, int n_transpose)
{
	int index = 0;

	for (int i = 0; i < n_scale ; ++i) {
		int min_value, max_value;

		if (i == 0) {
			min_value = (scale[i] + (scale[n_scale-1] - QPit*13*2))/2;
			max_value = (scale[i] + scale[i+1])/2;
			if (min_value <= input && input < max_value) { index = 0; break; }
			if (input < min_value) { index = -1; break; }
		} else if (i == n_scale-1) {
			min_value = (scale[i-1] + scale[i])/2;
			max_value = (scale[i] + (scale[0] + QPit*13*2))/2;
			if (min_value <= input && input < max_value) { index = n_scale-1; break; }
			if (max_value <= input) { index = n_scale; break; }
		} else {
			min_value = (scale[i-1] + scale[i])/2;
			max_value = (scale[i] + scale[i+1])/2;
			if (min_value <= input && input < max_value) { index = i; break; }
		}

	}

	return transpose(index, n_transpose, scale, n_scale);
}

int quantize(int input, const int * const scale, int n_scale, int n_transpose, Pitch &pitch)
{
	int key = input % (QPit*13*2);
	int oct = input - key;

	int oct_num = oct/(2*QPit*13);

	int qd = quantize_impl(key, scale, n_scale, n_transpose);

	int idx = qd/2 / QPit;
	if (idx < 0) {
		pitch.index = N_CodeName+idx;
		pitch.oct = oct_num-1;
	} else if ((size_t)idx >=N_CodeName) {
		pitch.index = idx-N_CodeName;
		pitch.oct = oct_num+1;
	} else {
		pitch.index = idx;
		pitch.oct = oct_num;
	}

	if (oct + qd < 0) {
		return 0;
	} else if (oct + qd >= MAX_IDX) {
		return MAX_IDX-1;
	} else return oct + qd;
}

int generate_quantized(const Pitch &p)
{
	return p.oct *(2*QPit*13) + p.index *(2*QPit);
}
