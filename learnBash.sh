

# creating shell files - must all have the following line at the start
#!/bin/bash

# -------------------Variables and Arithmetic-------------------------
variable1=23	#setting
var2="string"
echo "this is how we use a var: $variable1"	
variable=$(pwd)/theNextDirectory 	# will return the path with /theNe... catted onto the end
((var++))	# increment	
var=$(($v1+$v2))	# evaluates mathematically the variables in the brackets
var=$($var2)		# sets var to be equal to the evaluated value of var2 
declare GLOBALVAR	# can be used inside fucntions



# ---------------------piping------------------------
oneCommand > file.txt 		# puts the output of one command into a file
oneCommand >> file.txt 		# puts the output of one command into a new file
oneCommand | twoCommand		# puts the output of one command into another
command > /dev/null 	# pipe to nowhere, may have to reset afterwards with the follwing code
# reset piping
STDOUT=`readlink -f /proc/$$/fd/1`
STDERR=`readlink -f /proc/$$/fd/2`
exec 1>$STDOUT 2>$STDERR


# ---------------------Execution------------------------
echo "this" &			# done in background (still seen in jobs)
nohup echo "this" &		# done in background invisible
pkill -f scriptName.py 	# kills invisible jobs


# ---------------------inbuilt variables-------------------------------
whoami	# user
pwd 	# path to directory
$?		# result of previous command
$1 		# arguement 1
$# 		# number of arguements


# ----------------------Commands--------------------
echo this text			# prints this text
	echo "this text"	# prints the text
	echo "this"$1"that"	# variable and other
read A_VAR	#reads a variable into the A_VAR from stdin     NOTE: NO $
sleep 1		# sleeps bash shell for some time
ls 				# list all files
	ls -l 		# list all files and info
				# ls columns
					# file permissions,
					# number of links,
					# owner name,
					# owner group,
					# file size,
					# time of last modification, and
					# file/directory name
	ls -a 		# show hidden files
	ls /etc/	# list all files in the /etc/ folder
cp fileName	/directory/newFileName		# copy a file
rm fileName		# delete a file
cd							# go to root folder
	cd -					# go back one folder
	cd folder				# go to folder
	cd ..					# go one folder above
	cd /home/this/folder 	# go to specific folder
mkdir newFolder		# make a new directory
chmod 100 fileName		#change the permissions on a file, number is the permission type
		# digit 1: user
		# digit 2:
		# digit 3:
		# examples
			# 777 - full access to everyone
			# 622 - normal for files
			# 711 - normal for directories
cat fileName	# outputs the contents of the file in the terminal
				# note: if - or other weird filenames use the following:
	cat ./-
	cat "spaces in filename"
find inhere -print									# prints the files
	find app										# will find everything in the app folder
	find -type fd 									# finds either files/directory
	find -name "*.js"								# finds all files of .js name. 
	find -iname "*.js"								# case insensitive
	find -name ".js" -or -name ".css"				# finds css and js files
	find -not -type f 								# finds everything that isnt a file
	find \( -name "*.js" -type f \) -or -type d 	# grouping of commands
	find -size 1000c								# finds the file thats of size 1000bytes
	find -user username 							# finds based of the user it belongs to
	find -group groupname							# finds based of the group it belongs to
grep word fileName.txt	# finds the 'word' in the file and then prints the entire line in the terminal
						# if having issues with ==, just:
	echo "==" | grep data.txt
	grep -v NotThis		# will only show lines that dont have 'NotThis'
sort fileName.txt 				# will sort every line in the file in alphabetical order
	sort -k 2n fileName.txt 	# sorts a file separated into columns. 2=second column. n=number. 
	sort -u fileName.txt		# sorts file and removes duplicates
uniq fileName.txt			# will remove repeated duplicated lines
	uniq -u fileName.txt	# removes duplicate lines and their originals (leaves only unique lines)
							# 	if you want to remove duplicated unordered lines, have to sort and then uniq.
diff fileOne.txt fileTwo.txt 	# finds the differences between the two files. <: first file
								#	>: second file. a: add, c: change, d:delete
touch file.txt 	# creates a new, empty file
head -n 10 file.txt 	# returns the first 10 lines of file
tail -n 10 file.txt 	# returns the last 10 lines of file
head -n 106 $location | tail -n 101 >> $TARGET	# first 106, then last 101 of that 106
wc -l <filename>		# returns the number of lines in file

# ----------------------basic decryption---------------------------
strings fileName.txt	# returns a string interpretation of a binary file
base64 -d fileName.txt		# decodes the file from base64
	base64 fileName.txt		# encodes the file in base 64
cat fileName.txt | tr 'A-Za-z0-9' 'N-ZA-Mn-za-m5-90-4'	# does a rot13 decode of the file
	cat linux.txt | tr [a-z] [A-Z]						# swap the case of letters


# ------------------------compression------------------------------
gzip fileName.gz 				# compresses a file to a .gz file
	gzip -d fileName.gz 		# compresses a file to a .gz file
file fileName.txt 		# details the type of the file
xxd fileName.txt 				# compress a file
	xxd -r fileName.txt > bin 	# decompress a file and convert it to a binary file
mv fileName.txt /otherDirectory/newName.txt 	# moves files and changes their names
bzip2 list.txt list1.txt list2.txt 		# compresses all of the text files into a singular zip file
	bzip2 -d fileName.bz 				# decompress bzip2 files
tar -czvf archive.tar.gz /usr/local/something	# compresses the something to the archive
	tar -xf archive.tar.gz 						# decompresses the file
												# if issues in these, check the flags are correct



# ---------------------------virtual Environments-----------------------
virtualenv --python=python3 dependanciesFolder
source dependanciesFolder/bin/activate
pip3 install -r requirements.txt
deactivate

# ----------------------SSHing and networking-------------------------												
ssh bandit0@bandit.labs.overthewire.org	-p 2220		# just ssh into the to desired host
													# bandit0 is the username that is to be used
													# the section after the @ is the address
													# -p 2220 tells the ssh to use port 2220
ssh -i sshKey.txt bandit0@bandit.labs.overthewire.org -p 2220		# just ssh into the to desired host
																	# ssh's into the address using an sshKey instead of a password
																	# may have to change the permissions of the sshKey.txt
																	# most of the time uses an RSA file
	chmod 600 sshKey.txt 											# if told its too open
ssh bandit0@bandit.labs.overthewire.org -p 2220 "bash --norc"	# prevents the server from 
																# auto disconnecting me. Can then use the terminal (even tho it wont show up)
telnet localhost 30000			# connects to the local host over port 30000
	telnet hostName portNumber	# opens a connection between the two ports which can query me
openssl s_client -host localhost -port 300001	# opens an ssl connection with a host at a port
	openssl s_client -connect localhost:port 	# connects, will return error if doesnt support ssl
echo "send this" | nc -l -p 6969	# Creates a listener - when a connection is established
									# it sends this. Will also read the data that is returned to it
/etc/bin/passwd 	# where the shell type is sometimes stored. May not be bash.
nmap -p 31000-32000 localhost	# port scanning - scans the ports and returns the one that are open.
								# -p: defines a port range, localhost is the IP/name
fuser 80/tcp			# lists all http jobs running on port 80
	fuser 80/tcp -k 	# kills the jobs running on port 80


# setuids are binaries that can be used to run or access files that normally you may 
# not have the permissions to do so. 

mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)
	# ^^ this is the text that is wanted to be type into the terminal
	# sometimes there may be shell files that store things in local temp folders that
	# can only be accessed throguh direct calling. 


# -------------------text editors------------------------
nano fileName.txt 	# allows me to write text files in places
vim file.txt 		# refer to learnVim for more
	



# ------------------------------Loops------------------------
# for loop
for i in 1 2 3 4
do
	#stuff
done

for (( i=1; i <= $seconds; i++ ));do
	echo -ne "#"
	sleep 1
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


# -----------------------------Logic-----------------------
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


# -------------------------------Functions--------------------
func (){
	cat $1		# $1 is the 1st argument
	return $2
}



# -------------------------shell notes-------------------------
$0 		# breaks a shell




# -----------------------Crontab notes--------------------
crotnab -l 	# show crontab
crontab -e 	# edit crontab
sudo crontab -e 	# runt the root cron
# in the format 
min hour day week month command
* * * * * echo "this" # every minute
2 * 3 * * echo "this"	# at 2 minutes past on the third day of every week
/2 * 3 * * echo "this"	# at every 2 minutes on the third day of every week
* * * * * sh /usr/bin/python3 /path/to/script.py 	# must link to the python directory 
*/1 * * * * PYTHONPATH=/usr/bin/python /home/jonesy/keylogger/codedev/log2.py >> /home/jonesy/keylogger/codedev/log2.log 2>&1

