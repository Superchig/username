#! /bin/bash
# username.sh
# Christopher Chang

echo "Username:"
echo "The only characters that can be used are"
echo -e "\tlower case letters,"
echo -e "\tdigits, and"
echo -e "\tthe underscore character."
echo "It must start with a lower case letter."
echo "It must contain at least three but no more than 12 characters."
echo "Enter username:"
read NAME

while echo "$NAME" | egrep -v "^[a-z]([0-9]|[a-z]|_){2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username! Remember the rules."
	echo "Enter a valid username:"
	read NAME
done
echo "Thank you"
