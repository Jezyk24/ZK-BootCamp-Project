pragma circom 2.1.8;

// Modular Multiplication : calculating the product of all elements in an array n
//
// Parameters:
// - n: the number of items to be multiplied
//
// Inputs:
// - in: `n`
//
// Outputs:
// - out: is calculated as follows : in[0] * in[1] * ... * in[n-1]

template Mod-Multipl(n) {
  assert(n > 1);
  signal input in[n];
  signal output out;

  signal inner[n-1];
  inner[0] <== in[0] * in[1];
  for (var i = 0; i < n - 2; i++) {
    inner[i+1] <== inner[i] * in[i+2];
  }

  out <== inner[n-2]; 
}