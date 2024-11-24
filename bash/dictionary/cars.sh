#!/bin/bash

declare -A cars

# Add entries to the associative array
cars["Mazda"]="Miata, RX7"
cars["Honda"]="S2000, NSX"
cars["Toyota"]="Supra"
cars["Lexus"]="LFA, LC500"

# Access and print entries
echo "Mazda: ${cars["Mazda"]}"
echo "Honda: ${cars["Honda"]}"
echo "Toyota: ${cars["Toyota"]}"
echo "Lexus: ${cars["Lexus"]}"

# Loop through all keys
echo "All car brands and models:"
for brand in "${!cars[@]}"; do
  echo "$brand: ${cars[$brand]}"
done

