pragma circom 2.0.2;

include "../../circuits/secp256k1.circom";

component main {public [point]} = Secp256k1ScalarMultStep(64, 4);
