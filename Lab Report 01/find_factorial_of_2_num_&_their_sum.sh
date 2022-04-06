read -p "Enter first Number: " num1
read -p "Enter second Number: " num2

function factorial(){
    a=$1
    fact=1
    for(( i=1;i<=a;++i ));
    do
        fact=$(( fact*i ))
    done
    echo $fact
}

function add() {
    echo $(( $i + $2 ))
}

fact1=`factorial num1`
fact2=`factorial num2`
echo "$fact1 + $fact2 : `add fact1 fact2`"