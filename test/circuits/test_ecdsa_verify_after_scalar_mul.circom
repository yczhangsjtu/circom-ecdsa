pragma circom 2.0.2;

include "../../circuits/ecdsa.circom";

component main {public [r, g_mult_out, pubkey_mult_out]} = ECDSAVerifyAfterScalarMul(64, 4);
