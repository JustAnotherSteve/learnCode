// learn java
	
// Eclipse
	// undo = ctr + z
	// redo = shift + ctrl + z
	// add assertions: window->preferences->Java->installed JREs: add -ea in the arguments section
	// /** (enter) will start a new line of javadoc


// initialisation
	package learn_java		// this is like the name of the project
	import java.util.*;		// library for strings
	import java.Math; 		// for all your mathy type stuff
	import packageName.className; // for importing classes from additional packages


//types
	int 
	char c = "s";
	short
	long
	double
	byte
	boolean
	float
	String str = "this a String" //string
	String[] //string array
	int nums[] = new int[];
	int nums[] = {1,2,3,4,5,6};

// Lists
	List<Integer> l = new ArrayList<Integer>(); 


// enums
	enum status{
		A,
		B,
		C
	}


//Conversions
	int val = (int) aLongVar; 		// We can typecast!!!
	str = Double.toString(1.6);		// Can+also convert through void method() throws  {
		

// String manipulation
	c = str.charAt(5);			// rets the char at position 5
	str.contains("this");		// bool
	str.indexOf("a");
	str.length();
	str.replace("This", "that");
	str.substring(0,5);
	for (String x: str.split(" "))	// like a (for i in array) in python



// loops
	for(int i=0; i< 2; i++){}
	while(true);
	do{}while(false);0	
	for(Type variable: ListName){}




// functions
	System.out.println("Your sentence" + minVal);	//output
	var = System.in;			// input
	minVal = int.MIN_VALUE;
	maxVal = char.MAX_VALUE;
	val = Math.round();			//anything mathy related is found in mathy
	number = Integer.parseInt(ASTRING);
	string = Integer.toString(number);


// Switches
	switch (this.Stat) {
		case A: str += "Associate lecturer"; break;
		case B: str += "Lecturer"; break;
		case C: str += "Senior Lecturer"; break;
		default: str += "Lecturer"; break;
	}



//classes
	public class className{							// public = accessable from outside
		static Scanner sc = new Scanner(System.in); // reads in data whenever sc is called?
		final int DEF = 44;							// like a constant # define
		
		public static int main(String[] args){		// static = function that belongs to the class. Dynamic means that its unique per instance.
													// 			only a single instance of the method is ever created. Is kinda made global
			this.DEF = 2;							// refers to itself - but only has to be used if there is a name conflict
		}

		private int method(int a){ // this a method
		}

		this.method   // refers to itself, i.e. the current object
		super.method  // refers to the primary superclass - will call only the immeadiete parent. super.super.method for 2 above
		
		@Override
		public int inheritedMethod(){};

		@Override	// parent class (employee)
		public bool equals(Object o){
			if(obj == NULL){	// if not null
				return false;
			}
			if(this == o){		// if they are the same object - same location
				return true;
			}
			if(!this.getClass().equals(o.getClass)){	// check if not the same class
				return false;
			}

			parentClass e = (parentClass) o;	// checks whether the same type values in the objects
			if(salary==e.salary && name==NULL && e.name==NULL){
				return true;
			}
			//objects.equals(null, null); // use this for something???
			return (salary==e.salary && (name!=NULL) && name.equals(e.name));
		}

		// in child class (manager)
		@Override
		public bool equals(Object o){
			if (!super.equals(o)){	// ensures that they are the same type and same common values from the concept of the parent
				return false;
			}
			Manager m = (Manager) o;	// can now cast
			return (privateField.equals(o.privateField));	// checks values unique to the child class
		}

		@Override
		public void toString(){}		// print method


	}

// Exceptions
	try {
		int[] myNumbers = {1, 2, 3};
	    System.out.println(myNumbers[10]);
	} catch (Exception e) {
		System.out.println("Something went wrong.");
	}



