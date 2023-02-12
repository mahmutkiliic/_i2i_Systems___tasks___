#!/bin/bash

echo "Enter operation (+ for addition, - for subtraction, * for multiplication, / for division, % for modulo, ! for factorial): "

read -n1 operation

if [ "$operation" = "+" ]; then
  echo "Enter first number: "  
  read num1
  echo "Enter second number: "  
  read num2
  result=$((num1 + num2))
  echo "Result: $result"
  sleep 2
elif [ "$operation" = "-" ]; then
  echo "Enter first number: "
  read num1
  echo "Enter second number: "
  read num2
  result=$((num1 - num2))
  echo "Result: $result"
  sleep 2
elif [ "$operation" = "*" ]; then
  echo "Enter first number: "
  read num1
  echo "Enter second number: "
  read num2
  result=$((num1 * num2))
  echo "Result: $result"
  sleep 2
elif [ "$operation" = "/" ]; then
  echo "Enter dividend:"
  read dividend
  echo "Enter divisor: "
  read divisor
  if [ $divisor -eq 0 ]; then
    echo "Error: division by zero"
    sleep 3
  else
    result=$(bc -l <<< "$dividend/$divisor")
    echo "Result: $result"
    sleep 3
  fi
elif [ "$operation" = "%" ]; then
  echo "Enter dividend: "
  read dividend
  echo "Enter divisor: "
  read divisor
  if [ $divisor -eq 0 ]; then
    echo "Error: division by zero"
    sleep 3
  else
    result=$((dividend % divisor))
    echo "Result: $result"
    sleep 3
  fi
elif [ "$operation" = "!" ]; then
  echo "Enter a number: "
  read num
  result=1
  for ((i=1;i<=num;i++)); do
    result=$((result * i))
  done
  echo "Result: $result"
  sleep 3

else
  echo "Invalid operation"
  sleep 2

fi
