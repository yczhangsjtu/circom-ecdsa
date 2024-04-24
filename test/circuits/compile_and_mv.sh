#!/bin/bash

# Check if at least one parameter is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <circuit-name> [rename-to]"
  exit 1
fi

# Get the circuit name from the first parameter
circuit_name=$1

# If the second parameter is provided, set rename_to as the second parameter
rename_to = $circuit_name
if [ $# -gt 1 ]; then
  rename_to=$2
fi

# Compile the circuit
circom -p bls12381 "$circuit_name.circom" --r1cs --wasm

# Move the compiled files to the correct directory
mv "$circuit_name.r1cs" ../../../clonk/r1cs/$rename_to.r1cs

# Concatenate $circuit_name with _js to get the dir name
dir_name=$circuit_name"_js"

mv "$dir_name/$circuit_name.wasm" "../../../clonk/r1cs/$rename_to.wasm"
rm -r "$dir_name"