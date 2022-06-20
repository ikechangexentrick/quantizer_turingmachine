#ifndef QUANTIZER_LOGIC__H
#define QUANTIZER_LOGIC__H
#if defined(__APPLE__) && defined(__MACH__)
#include <cstddef>
#else
#include <stddef.h>
#endif // defined(__APPLE__) && defined(__MACH__)

static const constexpr int QPit = 36; // corresponds to 1/4 pitch

static const constexpr int C   = 0;
static const constexpr int C_s = C  +QPit*2; // 72
static const constexpr int D   = C_s+QPit*2; // 144
static const constexpr int D_s = D  +QPit*2; // 216
static const constexpr int E   = D_s+QPit*2; // 288

static const constexpr int F   = E  +QPit*4; // 432
static const constexpr int F_s = F  +QPit*2; // 504
static const constexpr int G   = F_s+QPit*2; // 576
static const constexpr int G_s = G  +QPit*2; // 648
static const constexpr int A   = G_s+QPit*2; // 720
static const constexpr int A_s = A  +QPit*2; // 792
static const constexpr int B   = A_s+QPit*2; // 864

static const constexpr int Scale_major[] = {C  , D  , E  , F  , G  , A  , B  };
static const constexpr int Scale_minor[] = {C  , D  , D_s, F  , G  , G_s, A_s};
static const constexpr int Scale_hmmin[] = {C  , D  , D_s, F  , G  , G_s, B  };
static const constexpr int Scale_whole[] = {C  , D  , E  , F_s, G_s, A_s};
static const constexpr int Scale_dimsh[] = {C  , D  , D_s, F  , F_s, G_s, A  , B  };
static const constexpr int Scale_chrom[] = {C  , C_s, D  , D_s, E  , F  , F_s, G  , G_s, A  , A_s, B  };

static const char *CodeName[] = {"C", "C#", "D", "D#", "E", "", "F", "F#", "G", "G#", "A", "A#", "B"};
static const constexpr size_t N_CodeName = sizeof(CodeName)/sizeof(char *);

enum ScaleType {
	Major = 0, Minor, HarmonicMinor, WholeTone, Diminish, Chromatic,
	InvalidScale
};

struct Pitch
{
	size_t index;
	size_t oct;
};

bool operator==(const Pitch &lhs, const Pitch &rhs);
bool operator!=(const Pitch &lhs, const Pitch &rhs);
Pitch &operator++(Pitch &lhs);
Pitch &operator--(Pitch &lhs);

int quantize(int input, const int * const scale, int n_scale, int n_transpose, Pitch &);

template <typename T, size_t N>
int exec_quantizer(int input, const T (&scale)[N], Pitch &p, int n_transpose = 0) {
	return quantize(input, scale, N, n_transpose, p);
}

int generate_quantized(const Pitch &p);
const char *get_scale_name(const enum ScaleType typ);

#endif // QUANTIZER_LOGIC__H
