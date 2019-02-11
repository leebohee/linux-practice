#! /bin/bash

mkdir ~/swe

echo "#include <stdio.h>

int main(){
  printf(\"hello, world\n\");
  return 0;
}" > ~/swe/hello.c

cd ~/swe

gcc hello.c -o hello

./hello

rm -rf ~/swe

