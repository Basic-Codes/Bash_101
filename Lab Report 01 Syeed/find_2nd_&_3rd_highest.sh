read -p "Enter elements number: " num

for(( i=0; i<num; ++i ));do
    read -p "Enter the number: " s_element
    element[$i]=$s_element
done

highest=${element[0]}
_3rd_highest=${element[0]}
_2nd_highest=${element[0]};

for i in ${element[@]};do
    if [[ $i -gt $highest ]];
    then
        _2nd_highest=$highest
        highest=$i
    fi
done

for i in ${element[@]};do
    if [[ $i -lt $_2nd_highest ]];
    then
        _3rd_highest=$i
    fi
done

echo "Result: $(($_2nd_highest+$_3rd_highest))"