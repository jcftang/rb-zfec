%module fec

%{
#include "fec.h"
%}

fec_t* fec_new(unsigned short k, unsigned short m);
void fec_free(fec_t* p);
void fec_decode(const fec_t* code, const gf*restrict const*restrict const inpkts, gf*restrict const*restrict const outpkts, const unsigned*restrict const index, size_t sz);
void fec_encode(const fec_t* code, const gf*restrict const*restrict const src, gf*restrict const*restrict const fecs, const unsigned*restrict const block_nums, size_t num_block_nums, size_t sz);
