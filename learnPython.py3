#Learn Python


#variables
#python recognises the variables when you make them
one = 1				#int
words = 'words'		#string
floater = 1.00202	#float

del one		#deletes the variable

#printing:
print ('hello world')
print ('''this
can go accross multiple 
lines''')	# and will include the enters
print("words", end='');		# no endline

#strings - prints the letters
print (words[0])		#prints the zeroth letter	
print (words[2:5])	#prints the 2nd to 5th letter
print (words[:5])		#prints the 0th to 5th letter
print (words * 2)		#prints the string twice
print (words + 'i')	#prints the concat string
#updating stings
print("updated string = ", words[:6]+'Python') # will update after number 6 the values to 'Python'
a = 'a-string-split-by-hyphens'
listOfStringsWithoutHyphens = a.split('-')


#lists - pretty much an array
list lister = ['abcd', 786, 'bob']		#can access the values in the list the same way as in a string
#prints them with [] around them unless a specific value is requested
print (lister[0])	# = abcd
print (lister[1:2])	# = [786, 'bob']
lister.remove(786) # removes it from the list
lister.append(3) # adds to list
del lister[0] # removes zeroth element

#tuples - like a list, but cannot be updated. Prints with () now
tuple tupler = ('abcd', 786, 'bob')
print (tupler[1:])	# = (786, 'bob')

#dicts - like a hash table, can be done one of two ways. Dicts are unordered. 
#first
dict = {}
dict ['first key'] = 'This value'
dict [2] = 'This value' #can use strings or ints
print (dict['first key'])  # This value
#second
dicttwo = {1:'one', 2:'two', 3:'three'}
print (dicttwo) # = all
print (dicttwo.keys())  # = all keys
print (dicttwo.values()) # = all values
dict.items() # returns the keys and values in a list! 

#exponent
isquared = i**2

#floor
a=b//c # b/c but without the remainder


#statements
if i==0:
	#do shit
	break
elif i==1:
	#do more shit
else:
	#do other shit

if i not in list:

#loops:
#whiles
while i=0:
	#do shit

#for - uses an iterator objectx
list = [1,2,3,4]
it = iter(list)	#builds the iterator object
for i in iter:

for i in list: #cann also be done like this. 

for i in range(0,20)


#functions
def funcname(inputs, more):
	#function shit
	return [expression]

#default args
def func(age = 35, name)
	#shit
	pass # this is a placeholder - allows a function to run when there is no content. 
func(age=40, name = 'bob')

#variable length arguement functions

#lambda functions


#exceptions
#think of it as a software interrupt
try:
	#does this stuff, however if an exception(error) is thrown - then it goes to the except
except thisException:
	#does stuff if the exception is thrown
else:
	# runs if excpet doesnt


# testing
assert(aValue == bValue)	# will chuck an exception if not equal. 



#object orientation
# note: no permissions i.e. public/private/protected	
class object():
	var1 = 0

	def __init__():
		#this is the constructor

	def method1():
		#this is a method

	def __del__():
		#this is the destructor

	def __str__():
		# when you print(object) this will occur
		return 'the  thing to be printed string{}'.format(stuff)


#access objects like:
obj = object()
obj.method1()
obj.var1

#if using object orientation:
class main():


# file manipulation
filename = './childDirectory/file.txt'
file = open(filename, "r")
string = file.read()
line = file.readlines()	# a list of all lines
# to find out if a file exists
os.path.isFile('fileName') == True

# exceptions - they stop the program and raise an 'error'
raise Exception('exception text, the value of x was: {}'.format(x))


# random number
from random import randint
val = randint(0,10) 	#random integer between 0 and 10





# refer to vivs github repo	
# correct crontab method
*/1 * * * * cd /home/jonesy/keylogger/codedev && /usr/bin/python /home/jonesy/keylogger/codedev/testCrontab.py >> /home/jonesy/keylogger/codedev/log2.log 2>&1
*/1 * * * * PYTHONPATH=/usr/bin/python /home/jonesy/keylogger/codedev/log2.py >> /home/jonesy/keylogger/codedev/log2.log 2>&1

