/**
 * Zen Assertion
 * 
 * Capable of making an assertion and storing the result
 */
zen_assertion

	/**
	 * Description: Describes what this assert is checking in human readible terms
	 * a: Object we're checking
	 * b: Object we're checking A against
	 */
	New(var/description, var/a, var/b)
		src.description = description
		src.paramA = a
		src.paramB = b

	var
		assertType // isEquals, isNotEquals etc
		result // 1 or 0, pass or fail
		description // User provided description of what this assertion is checking
		paramA // First parameter
		paramB // Second parameter
	
	/**
	 * Will return the result of the assert as a 0 or 1.
	 *
	 * Root zen_assertion/proc/exec() is a stub that is overriden by children.
	 */
	proc/result()

	/**
	 * Executes the assertion in the context of the global zen running instance.
	 * 
	 * Saves the results to the current running test for later presentation.
	 */
	proc/exec(var/description, var/a, var/b)
		// Add to the test this assertion is running in for printing results later
		zen.currentRunningTest.testResults.assertions += src

		// Calculate the assertion and store results internally
		src.result = src.result(a, b)

		// If we got a fail result, update overall test result to fail
		if(!src.result) zen.currentRunningTest.testResults.pass = 0

