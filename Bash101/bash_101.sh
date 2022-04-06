# ! /bin/bash
echo Hello world
echo Bash:: $BASH
echo Bash Version:: $BASH_VERSION
echo Home Directory:: $HOME
echo Current Directory:: $PWD

# =================== Argument ======================
# How To Pass Argument:  ./main.sh arg123 arg999 args000
echo Arguments = $1 $2 $3
# Arguments as Array
args_array=("$@") # Converts all arguments to an array
echo Arguments = ${args_array[0]} ${args_array[1]} ${args_array[2]}
echo Arguments = $@ # We can access all arguments through $@
echo Number of arguments =  $# # Prints number of arguments

# =================== Read =====================
# read name1 name2 name3
# echo Names: $name1 $name2 $name3

read
echo REPLY: $REPLY

read -p 'Enter Name: ' fname lname
read -sp 'Enter Password: ' password
echo " "
echo "=============================="
echo First Name = $fname
echo Last Name = $lname
echo Your Password is = $password


# Array Input
echo ========= Array Input =========
echo  Name 3 person:
read -a person
echo First Person: ${person[0]}
echo Second Person: ${person[1]}
echo Third Person: ${person[2]}
