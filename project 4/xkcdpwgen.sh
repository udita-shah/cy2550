#!/bin/bash

# Parse command-line arguments
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -w|--words)
    words="$2"
    shift
    shift
    ;;
    -c|--caps)
    caps="$2"
    shift
    shift
    ;;
    -n|--numbers)
    numbers="$2"
    shift
    shift
    ;;
    -s|--symbols)
    symbols="$2"
    shift
    shift
    ;;
    *)    # unknown option
    echo "Unknown option: $1" >&2
    exit 1
    ;;
esac
done

echo "00"

# Execute Python script with arguments and capture output
output=$(python3 xkcdpwgen_trial1.py -w $words -c $caps -n $numbers -s $symbols 2>&1)

# Display output
echo "$output"
