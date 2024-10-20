 OverTheWire Bandit - Level Completion Notes

Welcome to my OverTheWire Bandit journey! This repository showcases my progress through the levels of the Bandit game, where I consolidated my Linux command-line skills while learning about security concepts. Below are my notes on the commands used to conquer each level, along with explanations of what each command does.

## Table of Contents

- [Level 0](#level-0)
- [Level 1](#level-1)
- [Level 2](#level-2)
- [Level 3](#level-3)
- [Level 4](#level-4)
- [Level 5](#level-5)
- [Level 6](#level-6)
- [Level 7](#level-7)
- [Level 8](#level-8)
- [Level 9](#level-9)
- [Level 10](#level-10)
- [Level 11](#level-11)

## Level 0
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  cat readme
  ```

## Level 1
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  cat -e ./-file01
  ```
- **Explanation:** The -e option with cat shows the end of each line with a $ symbol, helping to visualize the output clearly.

## Level 2
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  ls -al
  ```
- **Explanation:** ls -al lists all files in the directory, including hidden files (-a), and provides detailed information (-l) about each file's permissions, ownership, and size.

## Level 3
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  file ./-file03
  ```
- **Explanation:** The file command determines the type of a file, allowing me to verify if it's readable.

## Level 4
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  cat maybehere0?/file*
  ```
- **Explanation:** This command utilizes wildcards to concatenate and display the contents of files matching the pattern. maybehere0? matches directories like maybehere00, maybehere01, etc., and file* matches all files that begin with "file" within those directories.

## Level 5
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  find maybehere* -type f -size 1033c
  ```
- **Explanation:** This command searches for files within the maybehere* directories that are exactly 1033 bytes in size, which helped me locate the password file. After realizing that .file2 was a hidden file, I used ls -a to list all files, including hidden ones, in the directory.

## Level 6
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  cat data.txt
  ```
- **Explanation:** The command simply displays the contents of data.txt, which contained the password.

## Level 7
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  cat data.txt | base64 -d
  ```
- **Explanation:** This command decodes the base64-encoded content of data.txt, revealing the password for the next level.

## Level 8
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
  ```
- **Explanation:** The tr command is used here to perform ROT13 transformation on the text, which helps decode the password.

## Level 9
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  ssh bandit10@localhost -p 2220
  ```
- **Explanation:** This command establishes an SSH connection to the next level using the provided port and username.

## Level 10
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  ls -al /etc/bandit_pass
  ```
- **Explanation:** This command lists the contents of the /etc/bandit_pass directory to find the password file for the next level.

## Level 11
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  cp /home/bandit11/data.txt .
  xxd -r data.txt binary_file
  ```
- **Explanation:** The cp command copies data.txt to the current directory. The xxd command is then used to convert the hex dump back into binary format.
