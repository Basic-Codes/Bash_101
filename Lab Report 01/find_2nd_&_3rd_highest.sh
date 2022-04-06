read -p "Enter number of elements: " num

for(( i=0; i<num; ++i ));
do
    read -p "Enter the number: " s_element
    element[$i]=$s_element
done

highest=${element[0]}
semi_ano_highest=${element[0]}
semi_highest=${element[0]};

for i in ${element[@]};
do
    if [[ $i -gt $highest ]];
    then
        semi_highest=$highest
        highest=$i
    fi
done

for i in ${element[@]};
do
    if [[ $i -lt $semi_highest ]];
    then
        semi_ano_highest=$i
    fi
done

echo "The sum of 2nd highest & 3rd highest element is: $(($semi_highest+$semi_ano_highest))"