
/**
	Zen Assertion

	Capable of making an assertion and storing the result
**/

zen_assertion
	var
		assertType
		result
	
	proc/exec() // Overriden by child assertion types

