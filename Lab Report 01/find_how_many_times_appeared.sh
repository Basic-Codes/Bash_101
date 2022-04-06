read -p "Enter a Number: " num
len=${#num}

zero=0
one=0
two=0
three=0
four=0
five=0
six=0
seven=0
eight=0
nine=0

i=1

while [ $i -le $len ];
do
    digit=`echo $num | cut -c $i`

    if(( $digit==0 ));
    then
        (( zero++ ))
    elif(( $digit==1 ));
    then
        (( one++ ))
    elif(( $digit==2 ));
    then
        (( two++ ))
    elif(( $digit==3 ));
    then
        (( three++ ))
    elif(( $digit==4 ));
    then
        (( four++ ))
    elif(( $digit==5 ));
    then
        (( five++ ))
    elif(( $digit==6 ));
    then
        (( six++ ))
    elif(( $digit==7 ));
    then
        (( seven++ ))
    elif(( $digit==8 ));
    then
        (( eight++ ))
    elif(( $digit==9 ));
    then
        (( nine++ ))
    fi

    (( i++ ))
done

echo "Result: "
if(( $zero!=0 ));
then
    echo "0 = $zero times"
fi
if(( $one!=0 ));
then
    echo "1 = $one times"
fi
if(( $two!=0 ));
then
    echo "2 = $two times"
fi
if(( $three!=0 ));
then
    echo "3 = $three times"
fi
if(( $four!=0 ));
then
    echo "4 = $four times"
fi
if(( $five!=0 ));
then
    echo "5 = $five times"
fi
if(( $six!=0 ));
then
    echo "6 = $six times"
fi
if(( $seven!=0 ));
then
    echo "7 = $seven times"
fi
if(( $eight!=0 ));
then
    echo "8 = $eight times"
fi
if(( $nine!=0 ));
then
    echo "9 = $nine times"
fi