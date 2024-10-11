# OverTheWire Bandit - Level Completion Notes

Welcome to my OverTheWire Bandit journey! This repository showcases my progress through the levels of the Bandit game, where I consolidated my Linux command-line skills while learning about security concepts. Below are my notes on the commands used to conquer each level, along with explanations of what each command does.

## Table of Contents

- [Level 0](#level-0)
- [Level 1](#level-1)
- [Level 2](#level-2)
- [Level 3](#level-3)
- [Level 4](#level-4)
- [Level 5](#level-5)

## Level 0
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  cat readme

## Level 1
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  cat -e ./-file01
- **Explanation:** The -e option with cat shows the end of each line with a $ symbol, helping to visualise the output clearly.

## Level 2
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  ls -al
- **Explanation:** ls -al lists all files in the directory, including hidden files (-a), and provides detailed information (-l) about each file's permissions, ownership, and size.

## Level 3
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  file ./-file03
- **Explanation:** Explanation: The file command determines the type of a file, allowing me to verify if it's readable.

## Level 4
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  cat maybehere0?/file*
- **Explanation:** This command utilizes wildcards to concatenate and display the contents of files matching the pattern. maybehere0? matches directories like maybehere00, maybehere01, etc., and file* matches all files that begin with "file" within those directories.

## Level 5
- **Objective:** Retrieve the password for the next level.
- **Command Used:** 
  ```bash
  find maybehere* -type f -size 1033c
- **Explanation:** This command searches for files within the maybehere* directories that are exactly 1033 bytes in size, which helped me locate the password file.  After realising that .file2 was a hidden file, I used ls -a to list all files, including hidden ones, in the directory.