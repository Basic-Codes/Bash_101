#!/bin/bash

echo Hello World
# read name
# echo Hello $name


#* Let (allows us to do simple arithmetic.)
echo "=========== let ==========="
echo 5+5
let a=5+5
echo $a

#* expr (instead of saving the result to a variable it instead prints the answer.)
echo "=========== expr ==========="
expr 5 + 6 #! must give a space
expr "5 + 6"
expr 5 \* $1

#* Double Parentheses (this mechanism is also able to do basic arithmetic for us if we tweak the syntax a little.)
echo $(( 4 + 5 ))
echo $(( 4 * 5 ))
echo $(( 4 / 5 ))

b=$(( 5 * 5 ))
echo $b
(( b++ ))
echo $b

#* Floating-point arithmetic ==========> NOT WORKING
# echo "scale = 5; 10.5/5.5" | bc


#* Length of a Variable
a="Hello World"
echo "Size of Hello World is: "${#a}

#* Take Input
read −p "Enter a word " word
# echo "Size of "$word" is: "${#word}
