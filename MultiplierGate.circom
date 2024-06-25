pragma circom 2.1.8;

// Multiplier Gate


template Mul() {
  signal input in[2];
  signal output out;

  out <== in[0] * in[1];
}