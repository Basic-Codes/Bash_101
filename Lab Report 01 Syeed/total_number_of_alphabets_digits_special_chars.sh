read character
len=${#character}
alpha=0
digit=0
symbol=0
for(( i=1;i<=len;++i ));
do
    ch=`echo $character | cut -c $i`
    if [[ ($ch>='a' && $ch<='z') || ($ch>='A' && $ch<='Z') ]];
    then
        (( alpha++ ))
    elif [[ ($ch>='0' && $ch<='9') ]];
    then
        (( digit++ ))
    else
        (( symbol++ ))
    fi
done
echo "Alphabets = $alpha"
echo "Digit = $digit"
echo "Symbol = $symbol"