
## Level 1
#!/bin/bash

mkdir Arena
cd Arena
touch warrior.txt mage.txt archer.txt
ls 

### Explanation:
mkdir Arena: Creates a directory named Arena.
cd Arena: Changes the current directory to Arena.
touch warrior.txt mage.txt archer.txt: Creates three empty text files.
ls: Lists the files in the Arena directory.



## Level 2 
#!/bin/bash

for i in {1..10}
do
    echo $i
done

### Explanation:
for i in {1..10}: Starts a loop that iterates from 1 to 10.
echo $i: Prints the current number (i) in each iteration.

## Level 3
#!/bin/bash

if [ -f "Arena/hero.txt" ]; then
    echo "Hero found!"
else
    echo "Hero missing!"
fi

### Explanation:
if [ -f "Arena/hero.txt" ]; then: Checks if the file hero.txt exists.
echo "Hero found!": Prints a message if the file exists.
else echo "Hero missing!": Prints a different message if the file does not exist.



## Level 4

## Level 4 

## Level 5

## Level 6

## Level 7

## Level 8

## Level 9

## Level 10
