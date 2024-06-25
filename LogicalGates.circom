pragma circom 2.1.8;

// Logical Operation.

// AND Operation:
//
// Inputs:
// - in: two bit-signals
// Outputs:
// - out: the result of the AND operation 

template AND() {
  signal input in[2];
  signal output out;

  out <== in[0]*in[1];
}

// NOR Operation:
//
// Inputs:
// - in: two bit-signals
// Outputs:
// - out: the result of the NOT operation

template NOR() {
  signal input in[2];
  signal output out;

  out <== 1 - (in[0] + in[1] - in[0]*in[1]);
}


// NAND Operation:
//
// Inputs:
// - in: two bit-signals
// Outputs:
// - out: the result of the NAND operation

template NAND() {
  signal input in[2];
  signal output out;

  out <== 1 - (in[0]*in[1]);
}


// OR Operation:
//
// Inputs:
// - in: two bit-signals
// Outputs:
// - out: the result of the OR operation

template OR() {
  signal input in[2];
  signal output out;

  out <== in[0] + in[1] - in[0]*in[1];
}

// XOR Operation:
//
// Inputs:
// - in: two bit-signals
// Outputs:
// - out: the result of the XOR operation

template XOR() {
  signal input in[2];
  signal output out;

  out <== in[0] + in[1] - 2*in[0]*in[1];
}

// NOT operation.
//
// Inputs:
// - in: a bit-signal
// Outputs:
// - out: the result of the logical operation

template NOT() {
  signal input in;
  signal output out;

  out <== 1 - in;
}



