#!/bin/bash

# print all the colors in the array below

declare -a colors

colors=(yellow red blue green black white purple pink)

# write your solution below

#way-1
#To print all colors in a single line we can use one of the below line of code
echo "=============================================="
echo "All colors in a line"
echo "=============================================="
echo ${colors[@]:0} 
<<comment
echo ${colors[@]}
echo ${colors[*]}
echo ${colors[*]:0}
comment


#way-2 and way-3 print all colors in a new line using loop
echo "=============================================="
echo "All colors in a new line"
echo "=============================================="
#way-2
for color in "${colors[@]}";
do
    echo $color
done

<<comm
# way-3
i=0
len=${#colors[@]}
while [ $i -lt $len ];
do
    echo ${colors[$i]}
    let i++
done
comm