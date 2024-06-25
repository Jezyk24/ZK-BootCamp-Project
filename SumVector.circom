pragma circom 2.1.8;

// Calculates the sum of a vector of signals.
//Parameters:
// - n: length of the vector `in`
//
// Inputs:
// - in: a vector of `n` values
//
// Outputs:
// - out: sum of all values in the vector `in`

template Sum-Vector(n) {
  signal input in[n];
  signal output out;

  var sum1 = 0;
  for (var i = 0; i < n; i++) {
    sum1 += in[i];
  }
  out <== sum1;
}