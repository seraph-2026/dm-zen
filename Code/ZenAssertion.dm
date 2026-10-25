/**
 * Zen Assertion
 * 
 * Capable of making an assertion and storing the result
 */
zen_assertion
	var
		assertType // isEquals, isNotEquals etc
		result // 1 or 0, pass or fail
		description // User provided description of what this assertion is checking
		paramA // First parameter
		paramB // Second parameter
	
	/**
	 * Will return the result of the assert as a 0 or 1.
	 *
	 * Root zen_assertion/proc/exec() is a stub that is
	 * override by children.
	 */
	proc/exec()

