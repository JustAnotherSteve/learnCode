# overTheWire terminal notes

#Arithmatic
((var++))	# increment	
var=$(($v1+$v2))

# piping
oneCommand | twoCommand

echo this text		# prints this text
echo "this text"	# prints the text
ls # list all files
	ls -l 	# list all files and info
	ls -a 	# show hidden files
	# ls columns
		# file permissions,
		# number of links,
		# owner name,
		# owner group,
		# file size,
		# time of last modification, and
		# file/directory name
cp fileName	/directory/newFile		# copy a file
rm fileName		# delete a file
cd		# go to root folder
	cd /	# go back one folder
	cd folder	# go to folder
	cd ..	# go one folder above
mkdir newFolder		# make a new directory
chmod 100 fileName		#change the permissions on a file, number is the permission type
		# digit 1: user
		# digit 2:
		# digit 3:
		# examples
			# 777 - full access to everyone
cat fileName	# outputs the contents of the file in the terminal
# note: if - or other weird filenames use the following:
	cat ./-
	cat "spaces in filename"
find inhere -print		# prints the files
	find app	# will find everything in the app folder
	find -type fd 	# finds either files/directory
	find -name "*.js"	# finds all files of .js name. 
	find -iname "*.js"	# case insensitive
	find -name ".js" -or -name ".css"	# finds css and js files
	find -not -type f 	# finds everything that isnt a file
	find \( -name "*.js" -type f \) -or -type d 	# grouping of commands
	find -size 1000c	# finds the file thats of size 1000bytes
	find -user username 	# finds based of the user it belongs to
	find -group groupname	# finds based of the group it belongs to
grep word fileName.txt	# finds the 'word' in the file and then prints the entire line in the terminal
	# if having issues with ==, just:
	echo "==" | grep data.txt
	grep -v NotThis	# will only show lines that dont have 'NotThis'
sort fileName.txt 	# will sort every line in the file in alphabetical order
	sort -k 2n fileName.txt 	# sorts a file separated into columns. 2=second column. n=number. 
	sort -u fileName.txt		# sorts file and removes duplicates
uniq fileName.txt		# will remove repeated duplicated lines
	uniq -u fileName.txt	# removes duplicate lines and their originals (leaves only unique lines)
						# 	if you want to remove duplicated unordered lines, have to sort and then uniq.
diff fileOne.txt fileTwo.txt # finds the differences between the two files. <: first file
							 #	>: second file. a: add, c: change, d:delete


# basic decryption
strings fileName.txt	# returns a string interpretation of a binary file
base64 -d fileName.txt		# decodes the file from base64
	base64 fileName.txt		# encodes the file in base 64
cat fileName.txt | tr 'A-Za-z0-9' 'N-ZA-Mn-za-m5-90-4'	# does a rot13 decode of the file
	cat linux.txt | tr [a-z] [A-Z]	# swap the case of letters

# compression
gzip fileName.gz 		# compresses a file to a .gz file
	gzip -d fileName.gz 		# compresses a file to a .gz file
file fileName.txt 		# details the type of the file
xxd fileName.txt 		# compress a file
	xxd -r fileName.txt > bin 	# decompress a file and convert it to a binary file
mv fileName.txt /otherDirectory/newName.txt 	# moves files and changes their names
bzip2 list.txt list1.txt list2.txt 		# compresses all of the text files into a singular zip file
	bzip2 -d fileName.bz 		# decompress bzip2 files
tar -czvf archive.tar.gz /usr/local/something	# compresses the something to the archive
	tar -xf archive.tar.gz 		# decompresses the file
	# if issues in these, check the flags are correct



# Virtual Environments
virtualenv --python=python3 dependanciesFolder
source dependanciesFolder/bin/activate
pip3 install -r requirements.txt
deactivate

# SSHing and networking
ssh bandit0@bandit.labs.overthewire.org	-p 2220		# just ssh into the to desired host
	# bandit0 is the username that is to be used
	# the section after the @ is the address
	# -p 2220 tells the ssh to use port 2220
ssh -i sshKey.txt bandit0@bandit.labs.overthewire.org -p 2220		# just ssh into the to desired host
	# ssh's into the address using an sshKey instead of a password
	# may have to change the permissions of the sshKey.txt in the following manner
	# most of the time uses an RSA file
	chmod 600 sshKey.txt 	# if told its too open
ssh bandit0@bandit.labs.overthewire.org -p 2220 "bash --norc"	# prevents the server from 
	# auto disconnecting me. Can then use the terminal (even tho it wont show up)
telnet localhost 30000		# connects to the local host over port 30000
	telnet hostName portNumber	# opens a connection between the two ports which can query me
openssl s_client -host localhost -port 300001	# opens an ssl connection with a host at a port
	openssl s_client -connect localhost:port 	# connects, will return error if doesnt support ssl
echo "send this" | nc -l -p 6969	# Creates a listener - when a connection is established
	# it sends this. Will also read the data that is returned to it
/etc/bin/passwd 	# where the shell type is sometimes stored. May not be bash.
# port scanning - scans the ports and returns the one that are open.
nmap -p 31000-32000 localhost	# -p: defines a port range, localhost is the IP/name

# setuids are binaries that can be used to run or access files that normally you may 
# not have the permissions to do so. 

mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)
# ^^ this is the text that is wanted to be type into the terminal
# sometimes there may be shell files that store things in local temp folders that
# can only be accessed throguh direct calling. 


# text editors
nano fileName.txt 	# allows me to write text files in places
	


# creating shell files
#!/bin/bash
variable1=23
var2="string"
echo "this is how we use a var: $variable1"
read A_VAR	#reads a variable into the A_VAR from stdin
touch file.txt 	# creates a new, empty file

# for loop
for i in 1 2 3 4
do
	#stuff
done

# while loop
while ["$variable1" != "var2"]
do
	#stuff
done

while :
do
	#stuff
done

# case
case $var2 in
	first)	echo 1;;
	second) echo 2;;
esac

# decisions
if [ $var2 = "this" ]; then
	#do shit
elif [ $var2 = "that" ] && [ $variable1 = "this" ]; then
	# other comparators
	# -lt 				less than
	# -gt				greater than
	# -le 				less than or equal to 
	# -ge 				greater than or equal to 
	# [ -n $var1 ]		nonzero length
else 
	#other shite
fi





# shell notes
$0 		# breaks a shell