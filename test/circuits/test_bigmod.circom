pragma circom 2.0.2;

include "../../circuits/bigint.circom";

component main {public [a, b]} = BigMod(64, 4);
