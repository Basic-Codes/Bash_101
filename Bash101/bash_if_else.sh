# String Comparisons:  
# ---------------------------------
# =  compare if two strings are equal
# !=  compare if two strings are not equal
# -n  evaluate if string length is greater than zero
# -z  evaluate if string length is equal to zero 

# Examples: 
# [ s1 = s2 ]  (true if s1 same as s2, else false)
# [ s1 != s2 ]  (true if s1 not same as s2, else false)
# [ s1 ]   (true if s1 is not empty, else false)
# [ -n s1 ]   (true if s1 has a length greater then 0, else false)
# [ -z s2 ]   (true if s2 has a length of 0, otherwise false)

# Number Comparisons: 
# ------------------------------------
# -eq compare if two numbers are equal
# -ge compare if one number is greater than or equal to a number
# -le  compare if one number is less than or equal to a number
# -ne  compare if two numbers are not equal
# -gt  compare if one number is greater than another number
# -lt  compare if one number is less than another number 

# Examples: 
# [ n1 -eq n2 ]  (true if n1 same as n2, else false)
# [ n1 -ge n2 ]  (true if n1greater then or equal to n2, else false)
# [ n1 -le n2 ]  (true if n1 less then or equal to n2, else false)
# [ n1 -ne n2 ]  (true if n1 is not same as n2, else false)
# [ n1 -gt n2 ]  (true if n1 greater then n2, else false)
# [ n1 -lt n2 ]  (true if n1 less then n2, else false)


# Interger Condition
number=5

if [ $number -eq 5 ] # Splace after & before [] is very important
then
   echo "Condition is True"
else
   echo "Condition is False"
fi


# String comparison
word="ABC"

if [ $word == "abc" ]
then
   echo "Condition is True"
else
   echo "Condition is False"
fi



# Else if (elif)
char="B"

if [ $char == "A" ]
then
   echo "Character is A"
elif [ $char == "B" ]
then
   echo "Character is B"
else
   echo "Character is X"
fi

rm -r "test.txt"
rm "MyFolder"


#File Test operator

touch "test.txt"
# ! \c keeps the cursor in same line. & -e is required for this to happen.
echo -e "Enter File Name : \c"
read file_name

if [ -e $file_name ]
then
    echo "$file_name Found"
else
    echo "$file_name Not Found"
fi

mkdir "MyFolder"
# ! \c keeps the cursor in same line. & -e is required for this to happen.
echo -e "Enter Directory Name : \c"
read dir_name

if [ -d $dir_name ]
then
    echo "$dir_name Found"
else
    echo "$dir_name Not Found"
fi

# ! Deleted them
rm "test.txt"
rm "MyFolder"




