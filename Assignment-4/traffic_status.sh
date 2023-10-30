#!/bin/bash

# print the current status of a traffic light using the 'current_light' to determine the color

declare -a light_colors

light_colors=(yellow red green)

rand=$[$RANDOM % ${#light_colors[@]}]
current_light=${light_colors[rand]}

echo $current_light

#######################################################
############# write your solution below   ############# 
#######################################################

if [ $current_light == ${light_colors[1]} ]; then
  echo "STOP!"
elif [ $current_light == ${light_colors[0]} ]; then
  echo "READY!"
elif [ $current_light == ${light_colors[2]} ]; then
  echo "Go!"
fi

