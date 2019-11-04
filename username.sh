#! /bin/bash
# username.sh
# Christopher Chang

echo "Username:"
echo "The only characters that can be used are"
echo "\tlower case letters,"
echo "\tdigits, and"
echo "\tthe underscore character."
echo "It must start with a lower case letter."
echo "It must contain at least three but no more than 12 characters."
echo -n "Enter username: "
read NAME

while echo "$NAME" | egrep -v "^[0-9]{5}$" > /dev/null 2>&1
do
	echo "You must enter a valid username! Remember the rules."
	echo -n "Enter a valid username: "
	read NAME
done
echo "Thank you"
