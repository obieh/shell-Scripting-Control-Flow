# Shell-Scripting-Control-Flow
## This project will demonstrate the use of control flows in shell scripts to perform tasks

## Control flow
Control flow in shell scripting allows you to direct the execution path of your script based on conditions, loops, and pattern matching. Let me explain each construct with practical examples and then create the script you requested.

### If-Else Statements.
* The if-else construct allows conditional execution based on test conditions.

* Create a script named control_flow.sh. Run `nano control_flow.sh`

* Add the line below to the script and save.
```bash
#!/bin/bash
read -p "Enter a number: " num 
```
![](./img/Pasted%20image.png)

* List the working directory to see script file permision. Run `chmod +x control_flow.sh` to add execute right to user.

![](./img/Pasted%20image%20(3).png)

* Run `./control_flow.sh` to execute the script.

![](./img/Pasted%20image%20(4).png)

### script executed without without error.

### The 'read' command stores any input typed by the user to the variable 'num'. Nothing else happens after that as we see in the snap shot above.

### Update the script by adding an echo statement.

```bash
#!/bin/bash
read -p "Enter a number: " num 
echo "You have entered the number $num"
```
![](./img/Pasted%20image%20(5).png)

### Execute the script again to see the result of the changes made. $num in the script will display whatever was saved to 'num' variable.

![](./img/Pasted%20image%20(6).png)

## If-Else statement.
### The if-else construct allows conditional execution based on test conditions. Example syntax:
```bash
read -p "Enter a number:" num
echo "You have entered the number $num"
if [ $num -gt 0 ] 
then
    echo "The number is positive"
fi
```
* The 'if' keyword begins the conditinal statement. The condition is enclosed in sqaure brackets [ ]. The 'else' keyword intruduces the alternative block and the statement ends with 'fi' which is 'if' spelt backward, marking the end of the if block.

* Add if-else block to the control_flow.sh
* Run `nano control_flow.sh`
* Add the following code block to the script

```bash
if [ $num -gt 0 ]; then
    echo "The number is positive."
fi
```
![](./img/Pasted%20image%20(7).png)
                 
### `$num` will reference the value of the variable 'num' entered by the user.

### `-gt` keyword is the operator that will perform the comparism with the variable $num and condition.

### Lets run the code to see the result.

![](./img/Pasted%20image%20(8).png)

### And indeed the conditional block executed properly as desired.

### `elif` statement is used to check for multiple conditions in the script. It is actaully a combination of 'else and if' keywords'

```bash
read -p "Enter a number: " num
if [ $num -gt 0 ] 
then
    echo "The number is positive"
elif [ $num -lt 10 ] 
then
    echo "The number is negative"
else
    echo "The number is zero"
fi
```

* The initial `if [ $num -gt 0 ] compares num with 0. If this condition is met that 'num' is greater than 0. the scripts print to screen "The number is positive" then terminates the program.

* If the initial condition is not met then the script moves further to check for the secod condition `elif [ $num -lt 0 ]`.

### Add the elif block

![](./img/Pasted%20image%20(9).png)

### Run the script, this time enter a number lower than zero.

![](./img/Pasted%20image%20(10).png)

### The second condition was met and the script executed as desired.

## Loops
### Loops provides for the execution of code block repeatedly based on a condition. 

### Bash have three types of loops 'for', 'while' and 'untill'

* For Loop: for loops iterate of over list of items or range of numbers. See example code below

```bash
#!/bin/bash

for i in 1 2 3 4 5
do
    echo "Hello, World! This is message $i"
done

```
* Create a script for 'for' loop. Give user execute permission and execute script.

* Run `nano loop_list.sh` add the below script commands
```bash
#!/bin/bash
# Author: ObieShenk
# Date: Date: $(date +%Y-%m-%d)
# Simple Greeting Script
# This script demonstrates how to loop through a list of names
# and print customized greetings for each one

# Define a list of names
names=("Alice" "Bob" "Charlie" "Diana" "Eve" "Obieshenk")

echo "----------------------------"

# Loop through each name in the list
for name in "${names[@]}"  # The [@] means "all elements in the array"
do
    # Print a personalized greeting
    echo "Hello, $name! Nice to meet you!"
    
done

echo "----------------------------"
```

![](./img/Pasted%20image%20(18).png)

* Run `./loop_list.sh` after giving user execution rights.

![](./img/Pasted%20image%20(19).png)

* while & loop. Executes a block of code as long as a specified condition is true.

* Run `nano while_loop.sh`, add the script.

```bash
#!/bin/bash
# Author: ObieShenk
# Date: Date: $(date +%Y-%m-%d)
# Simple Number Looping Script
# This script demonstrates a basic for loop that:
# 1. Counts from 1 to 5
# 2. Prints a message for each number

echo "-----------------------"

# The main for loop
for i in {1..5}  # This generates numbers from 1 to 5
do
    # Print the message with the current number
    echo "Processing number $i"
    
done

echo "-----------------------"

```
![](./img/Pasted%20image%20(20).png)

* Run the script, after add execute permission to user.

![](./img/Pasted%20image%20(21).png)

* C-Style loop. Allows you to declare initializer, condition and expression  based on Clanguage syntax

* Create c_style_loop.sh, run `nano c_style_loop.sh`, and add the script block below

```bash
#!/bin/bash
#!/bin/bash
# Author: ObieShenk
# Date: Date: $(date +%Y-%m-%d)
# C-style for loop demonstration

echo "---------------------"

# C-style for loop syntax:
# for ((initialization; condition; increment))
for (( i=0; i<=5; i++ ))
do
    # Print the current number with a message
    echo "Count: $i - Hello from the loop!"
done

echo "---------------------"

```

![](./img/Pasted%20image%20(22).png)

* Add execution right to user and run the script.

![](./img/Pasted%20image%20(23).png)

### C-style script executed as desired.

