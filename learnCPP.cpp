

// C++ types
	int integer = 0;
	float aBignumber = 112;
	char letter = 'a';
	char line[22] = 'a bunch of letters';
	string myText;

// String manipulation
	string str1;
	string str2;
	string str3 = str1 + str2;


// file manipulation
	#include <fstream>
	ifstream inFile;
	inFile.open("readme.data");
	// OR
	ifstream inFile("readme.data");



// classes
	// two files:
	// The header file - NAME.hpp
		class NAME{
		public: 
			// constructor
			NAME(int num);

			// methods
			int get();

			// destructor
			~NAME();
		private:
			//functions
		protected:
			// functions
		};
	// source file - NAME.cpp
		using "NAME.hpp"
		void NAME::NAME(int num){}
		int NAME::get(){}
		NAME::~NAME(){}


