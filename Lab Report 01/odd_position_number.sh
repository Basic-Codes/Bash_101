read -p "Enter a Number:" num

echo "ODD position numbers are: "
for((i=1; i<=${#num}; i=i+2));do
    digit=`echo $num | cut -c $i`
    echo $digit
done