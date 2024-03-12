#!/bin/bash
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    
    echo "Principal: $principal"
    echo "Rate: $rate%"
    echo "Time: $time years"
    echo "Simple Interest: $interest"
}

if [ $# -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    exit 1
fi

principal=$1
rate=$2
time=$3

calculate_simple_interest $principal $rate $time