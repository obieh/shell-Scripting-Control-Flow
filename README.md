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
number = 10
if [ number -lt 10 ] 
then
    echo "number is lesser than 10"
else 
    echo "number is greater or equal to 10"
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
number = 10
if [ number -lt 10 ] 
then
    echo "number is lesser than 10"
elif [ number -ge 10 ] 
then
    echo "number is greater or equal to 10"
fi
```

* The initial `if [ $num -gt 0 ] compares num with 0. If this condition is met that 'num' is greater than 0. the scripts print to screen "The number is positive" then terminates the program.

* If the initial condition is not met then the script moves further to check for the secod condition `elif [ $num -lt 0 ]`.

### Add the eilf block

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

# Simple for loop to print numbers 1 through 5

echo "Counting from 1 to 5:"

# Loop from 1 to 5
for i in 1 2 3 4 5  # 'i' takes each value in this list
do
    echo "Number: $i"  # Print the current number
done
# =====================================
# while loop
# Monitor disk usage and alert when it exceeds threshold
threshold=90

while true; do
    disk_usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
    
    if [ "$disk_usage" -gt "$threshold" ]; then
        echo "WARNING: Disk usage is ${disk_usage}%"
        # Send alert email or notification
        break
    else
        echo "Disk usage OK: ${disk_usage}%"
    fi
    
    sleep 300  # Check every 5 minutes
done
# ================================
# until loop
#!/bin/bash
# Waiting for a server to respond

echo "Server Ping Checker"
echo "------------------"

# Initialize our counter
attempt=1
max_attempts=5
server="google.com"  # The server we want to ping

echo "Checking if $server is responding..."

# The until loop will run UNTIL the ping succeeds (exit status 0)
until ping -c 1 $server &> /dev/null  # Try pinging once, hide output
do
    echo "Attempt $attempt: Server not responding..."
    
    # Check if we've reached maximum attempts
    if [ $attempt -eq $max_attempts ]; then
        echo "Error: Server did not respond after $max_attempts attempts"
        exit 1
    fi
    
    sleep 2  # Wait 2 seconds before trying again
    ((attempt++))  # Increase attempt counter by 1
done

# This line only runs if the until condition becomes true (ping succeeded)
echo "Success! $server is now responding."

exit 0

```
* Create a script for 'for' loop. Give user execute permission and execute script.

* Run `nano for_loop.sh`

![](./img/Pasted%20image%20(11).png)

* Run `./for_loop.sh`

![](./img/Pasted%20image%20(13).png)

* while & loop. Executes a block of code as long as a specified condition is true.

* Run `nano while_loop.sh`, add the script.

```bash
#!/bin/bash
# Monitor disk usage and alert when it exceeds threshold
threshold=90

while true; do
    disk_usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
    
    if [ "$disk_usage" -gt "$threshold" ]; then
        echo "WARNING: Disk usage is ${disk_usage}%"
        # Send alert email or notification
        break
    else
        echo "Disk usage OK: ${disk_usage}%"
    fi
    
    sleep 300  # Check every 5 minutes
done
```
![](./img/Pasted%20image%20(14).png)

* Run the script

![](./img/Pasted%20image%20(15).png)

* Until loop executes until a specified condition is true. Usually the condition is  enclosed in square brackets.

* Create until_loop.sh, run `nano until_loop.sh`

```bash
#!/bin/bash
# Waiting for a server to respond

echo "Server Ping Checker"
echo "------------------"

# Initialize our counter
attempt=1
max_attempts=5
server="google.com"  # The server we want to ping

echo "Checking if $server is responding..."

# The until loop will run UNTIL the ping succeeds (exit status 0)
until ping -c 1 $server &> /dev/null  # Try pinging once, hide output
do
    echo "Attempt $attempt: Server not responding..."
    
    # Check if we've reached maximum attempts
    if [ $attempt -eq $max_attempts ]; then
        echo "Error: Server did not respond after $max_attempts attempts"
        exit 1
    fi
    
    sleep 2  # Wait 2 seconds before trying again
    ((attempt++))  # Increase attempt counter by 1
done

# This line only runs if the until condition becomes true (ping succeeded)
echo "Success! $server is now responding."

exit 0
```

![](./img/Pasted%20image%20(16).png)

* Add execution right to user and run the script.

![](./img/Pasted%20image%20(17).png)

### Until script executed as desired.

