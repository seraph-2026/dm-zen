
/**
	Zen Assertion

	Capable of making an assertion and storing the result
**/

zen_assertion
	var
		result
	
	proc/exec() // Overriden by child assertion types

/**
	Types of assertions with different executions
**/

zen_assertion/isEquals
	exec(var/a, var/b)
		result = a == b

zen/proc/assertEquals()
	
		
