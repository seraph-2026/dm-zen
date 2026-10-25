/**
 * Zen Assertion
 * 
 * Capable of making an assertion and storing the result
 */
zen_assertion
	var
		assertType
		result
		description
	
	/**
	 * Will return the result of the assert as a 0 or 1.
	 *
	 * Root zen_assertion/proc/exec() is a stub that is
	 * override by children.
	 */
	proc/exec()

