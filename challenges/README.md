
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
#!/bin/bash

mkdir -p Backup
cp Arena/*.txt Backup/


### Explanation:
mkdir -p Backup: Creates the Backup directory if it doesn't already exist.
cp Arena/*.txt Backup/: Copies all .txt files (uses * wildcard) from Arena to Backup.


## Level 5
#!/bin/bash

mkdir Battlefield
touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rogue.txt

if [ -f "Battlefield/knight.txt" ]; then
    mkdir -p Archive
    mv Battlefield/knight.txt Archive/
    echo "knight.txt has been moved to Archive."
else
    echo "knight.txt not found."
fi

echo "Contents of Battlefield:"
ls Battlefield

echo "Contents of Archive:"
ls Archive


### Explanation:
Combines directory creation, file manipulation, conditional checks, and file listing into one script.
Reinforces learning by integrating the tasks from Levels 1-4.


## Level 6
#!/bin/bash

if [ -z "$1" ]; then
    echo "No file provided"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "File not found!"
    exit 1
fi

LINE_COUNT=$(wc -l < "$1")
echo "The file '$1' has $LINE_COUNT lines."


### Explanation:
$1 represents the first argument passed to the script.
wc -l < "$1" counts the number of lines in the file.
The script first checks if an argument is provided and if the file exists, then counts the lines.
To use the script, we pass in a file as an argument
./6arg.sh test.txt

The script then prints the number of lines in test.txt


## Level 7
#!/bin/bash

DIRECTORY="Arena"

if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist."
    exit 1
fi

find "$DIRECTORY" -type f -name "*.txt" -exec ls -lh {} + | sort -k 5,5 -h | awk '{ print $5, $9 }'

### Explanation: 
find "$DIRECTORY" -type f -name "*.txt" finds all .txt files. 
-exec option executes the command ls -lh
ls -lh lists files with sizes in human-readable format. 
sort -k 5,5 -h sorts the files by the 5th column (size) in human-readable format.
awk '{ print $5, $9 }' prints the 5th and 9th column, the size and file name to filter the output of the ls command


## Level 8
#!/bin/bash

DIRECTORY="Arena"
SEARCH_TERM="Error"

if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist."
    exit 1
fi

grep -l "$SEARCH_TERM" "$DIRECTORY"/*.log

### Explanation: 
grep -l "$SEARCH_TERM" "$DIRECTORY"/*.log searches for the term in each .log file and lists the filenames that contain the term.


## Level 9
#!/bin/bash

DIRECTORY="Arena"
LOG_FILE="change_log.txt"

if [ ! -d "$DIRECTORY" ]; then
    echo "Directory does not exist."
    exit 1
fi

fswatch -r "$DIRECTORY" | while read event; do
    if [ -e "$event" ]; then
        echo "$(date +'%Y-%m-%d %H:%M:%S') File modified/created: $event" >> "$LOG_FILE"
    else
        echo "$(date +'%Y-%m-%d %H:%M:%S') File deleted: $event" >> "$LOG_FILE"
    fi
done

### Explanation:
fswatch -r "$DIRECTORY" watches the directory recursively for changes.

### Distinguish between events:
if [ -e "$event" ]: Checks if the file still exists.
If the file exists, we assume it's either modified or created.
If the file does not exist, we assume it has been deleted.
The script then logs the event with the exact time and details whether a file was "modified/created" or "deleted."


## Level 10
