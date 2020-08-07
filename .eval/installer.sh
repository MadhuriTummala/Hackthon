#!/bin/bash

created=0
[ -d $1 ] && created=1 || mkdir $1
[ -d $1/$2 ] && created=2 || mkdir $1/$2
if [ $created -lt 2 ]
then
  cd $1/$2
  git init --bare > /dev/null 2>&1
  cd ../..
fi
cd $3
if [ ! -d $4 ]
then
    git init > /dev/null 2>&1
    echo "a = 10">>linked_list.cpp
    echo "b = 20">>linked_list.cpp
    echo "#perform addition of a and b">>linked_list.cpp
    echo "c = a+b">>linked_list.cpp
    git add . 
    git commit -m "Perform addition" > /dev/null 2>&1
    echo "#perform subtraction of a and b">>linked_list.cpp
    echo "d = a-b">>linked_list.cpp
    git add . 
    git commit -m "Perform subtraction" > /dev/null 2>&1
    echo "#perform multiplication of a and b">>linked_list.cpp
    echo "e = a*b">>linked_list.cpp
    git add . 
    git commit -m "Perform multiplication" > /dev/null 2>&1
    echo "#perform division of a and b">>linked_list.cpp
    echo "f = a/b">>linked_list.cpp
    git add . 
    git commit -m "Perform division" > /dev/null 2>&1
    sed -i '2s/.*/b = 0.00000/' linked_list.cpp
    git add . 
    git commit -m "Perform calculation" > /dev/null 2>&1
    echo "print 'The addition of a and b is: ',c" >> linked_list.cpp
    git add . 
    git commit -m "Print addition result" > /dev/null 2>&1
    echo "print 'The subtraction of a and b is: ',d" >> linked_list.cpp
    echo "print 'The multiplication of a and b is: ',e" >> linked_list.cpp
    git add . 
    git commit -m "Print subtraction and multiplication result" > /dev/null 2>&1
    echo "print 'The division of a and b is: ',f" >>linked_list.cpp
    git add . 
    git commit -m "Print division result" > /dev/null 2>&1
fi
cd ..