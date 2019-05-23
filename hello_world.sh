#!/usr/bin/env bash

echo "Hello,World"

# extension
echo beg{i,a,u}n

# 0 1 2 3 4 5
echo {0..5}

# 00 02 04 06 08
echo {00..8..2}

# local variable for whole script
username="loveai.info"
echo $username
unset username
echo $username


# env variablie for whole session or all scripts
export HELLO_VAR1="hello,VAR1"
echo $HELLO_VAR1

# pre define env variable
echo "pre define env variable"
echo "HOME:$HOME"
echo "PWD:$PWD"
echo "PATH:$PATH"
echo "RANDOM:$RANDOM"

# default value
echo $0
echo $1

: ${username:-'default username'}
: ${1:-'p1'}

echo "param default value test"
param1=${1:-'p1'}
echo $param1
echo $1
echo $username
foo=${foo:-'default foo'}
echo $foo

# command substitution
now=`date +%T`
echo $now
now=$(date +%T)
echo $now

# arithmetic expansion
result=$(( ((10+5*3)-7)/2 ))
echo $result

x=4
y=7
echo $(( x+y ))
echo $(( ++x+y++ ))
echo $(( x+y ))

# double and single quotes
echo "Your home: $HOME"
echo 'Your home: $HOME'

INPUT="A string  with   strange    whitespace."
echo $INPUT
echo "$INPUT"

# arrays
fruits[0]=Apple
fruits[1]=Pear
fruits[2]=Plum
# fruits=(Apple Pear Plum)

echo ${fruits[1]}
echo ${fruits[*]}
echo ${fruits[@]}

fruits[0]=Apple
fruits[1]="Desert fig"
fruits[2]=Plum

printf "+ %s\n" ${fruits[*]}
printf "+ %s\n" "${fruits[*]}"
# @ vs *
printf "+ %s\n" ${fruits[@]}
printf "+ %s\n" "${fruits[@]}"
