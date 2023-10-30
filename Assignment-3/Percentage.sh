# To calculate the percentage we can use the 'awk' or 'bc' commmand.
# Way 1. 
#awk 'BEGIN { printf "%.2f%%", ($part/$total*100) }'
# awk 'BEGIN { printf "%.2f%%", ($percent_number/$total*100) }'

#Way 2:

# !/bin/bash
# Take user Input
echo "Enter the total number : "
read total
echo "Enter the part number :"
read part

#Input type of operation
echo "Enter Choice :"
echo "1. Calculate Percent number"
echo "2. Calculate percentage number"
read pc

# Switch Case to perform operations
case $pc in
1)result=`echo "scale=2 ; ($total*$part/100)" | bc`
echo "$part% of $total is: $result"
;;
2)result=`echo "scale=1 ; ($part/$total*100)" | bc`
echo "$part is $result% of $total"
;;
esac

