

<?php
// Defines - like #define
	define("shortWord", "the thing that will get substituted");


// Variables - the ones below are global
	$var1 = 1;
	$var2 = 2;
	$string = "words";
	$bool = True;

	$sum = var1 + var2;

	echo $sum;	//prints the variable on the screen
	echo "the sum is $sum"

	print "<h> text with html markup </h>"


// Arrays
	$init = [0,1,2,3,4];
	$otherWayToDefineArrays = array(0,1,2,3,4);
	$firstVal = init[0];

	print_r($init);	//prints the array in a weird format
	$numOfValues = count($init);
	$firstItem = reset($init); 	//gets first val and resets ptr
	$lastItem = end($init);

	// Stacks - we use arrays
		array_push($init, 4);
		val = array_pop($init);
	//Queues - arrays
		array_unshift($init, 4);	//enqueues item to the start
		val = array_pop($init);


	//Concat and sort
		$two = [5,4,3,2,1,0];
		$concat = array_merge($init, $two);
		sort($concat);	//sorts the array - there are many other sort functions as well

	// slice and splice
		$notTheFirst3Vals = array_slice($init, 3);
		$3rdValTo5th = array_slice($init, 3, 2);
		$vals = array_splice($init, 3);		//the vals section is removed from init


// Hash tables
	// arrays are simply ordered hash tables
	$table = [
		"first" => "2000",
		"second" => "3000",
	];
	$firstVal = $table["first"];

	$table["third"] = "4000";	//adds/updates a value

	$boolVal = array_key_exists("first", $table);	//returns 1 if true

	$keys = array_keys($table);
	$values = array_values($table);


// Strings
	$str1 = "this";
	$str2 = "that";

	$concattedString = $str1 . "and" . $str2;

	$length = strlen($concattedString);

	$last3Letters = substr($str1, 1);

	$test = "red,green,blue,black";
	$separatedList = explode(",", $test);
	$combinedList = implode(",", $separatedList);

	$longStr = "this and that";
	$numberOfWords = str_word_count($longStr);

	$reversedString = strrev($str1);

	$int = strpos("Hello world!", "world");		//returns the index of the key in the string

	$newStr = str_replace(search, replace, subject)


// Conditional statements are the same as C


// Loops
	for($i = 0; $i < 5; $i++){}

	foreach ($variable as $key => $value) {} 	//same as in python

	while($i > 0){
		break;
		continue;
	}

	do{ /*stuff*/ } while($i < 5);


// Functions
	function fn($inputA, $inputB){
		static $var2 = 0 	// every time the function is called, var2 will keep the info that was used last time.
		$retval = global $var1 + $var2;		//gives access to global variables
		return $retval
	}

	function fnWithDefaultArg($default = 50){}

	include("fn.php"); // use if fn is in another php file 


// Objects
	class className{
		public function __construct($a){		//permissions are public,private
			$this->class_variable = $a;
		}

		public function doShit(){
			echo $this->class_variable;
		}
	}

	$newClass = new className("shit");
	$newClass->doShit();

	class c2 extends className{/*INHERITANCE*/}


// Superglobals
	$GLOBALS['globalVariable'] = something;	//accesses a global variable somewhere in the document

	$_SERVER['elementFromList'];	//holds info about headers, paths and script locations

	?>
	<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
	  	Name: <input type="text" name="fname">
	 	<input type="submit">
	</form>
	<?php
	$_REQUEST['fname'] = $variable;	//collects data after submitting an html form

	$_POST['fname'];	//is done in much the same way and has a similar result

	echo "Study " . $_GET['subject'] . " at " . $_GET['web'];	// collects sent data 


//Form Handling



