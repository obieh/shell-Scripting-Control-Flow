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
if [ number -lt 0 ] 
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






