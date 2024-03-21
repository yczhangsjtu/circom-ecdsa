pragma circom 2.0.2;

include "../../circuits/secp256k1.circom";

component main {public [point]} = Secp256k1ScalarMultStepChunk(4, 16, 0, 4);
