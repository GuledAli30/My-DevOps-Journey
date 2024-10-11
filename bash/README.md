# Bash notes

# Arithmetic.sh - Challenge 1
The script starts with a shebang #!/bin/bash to specify that the script should be run with the Bash interpreter. It then prompts the user to input two numbers using the read command, where read -p "Enter the first number: " assigns the first number to num1 and read -p "Enter the second number: " assigns the second number to num2.
 The script then performs four arithmetic operations: addition, subtraction, multiplication, and division. To handle the arithmetic, it uses the bc (Basic Calculator) command for precision, especially for division where floating-point numbers might be involved. For addition, it echoes the expression "$num1 + $num2" and pipes it to bc, which performs the calculation and assigns the result to addition using $(...). Subtraction and multiplication are handled similarly by echoing the expressions and piping them to bc, assigning the results to subtraction and multiplication respectively.
  The division operation checks whether num2 is zero using an if statement. If num2 is not zero, the division is performed by passing "scale=2; $num1 / $num2" to bc, which ensures the result is rounded to two decimal places. If num2 is zero, the division is avoided and a custom message "Undefined (division by zero)" is assigned to the division variable.
   Finally, the results of the four operations are displayed using echo, with the -e flag allowing special characters like \n to add new lines for better formatting.

   # File-Operations.sh - Challenge 2 
   Explanation:
Line 1: #!/bin/bash is the shebang line, which tells the system that this script should be run with the Bash shell.
Line 3: mkdir my_directory creates a directory named my_directory.
Line 6: cd my_directory moves into that directory.
Line 9: touch my_file.txt creates an empty file named my_file.txt.
Line 12: echo "Hello, this is a test!" > my_file.txt writes the specified text into my_file.txt.
Line 15: cat my_file.txt outputs the contents of my_file.txt to the terminal.