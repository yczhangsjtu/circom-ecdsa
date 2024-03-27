pragma circom 2.0.2;

include "../../circuits/secp256k1.circom";

component main {public [point, previous, n2b, has_prev_non_zero]} = Secp256k1ScalarMultStepChunk(4, 16, 1, 4);
