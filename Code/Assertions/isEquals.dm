
/**
 * Raw assertion logic
 */
zen_assertion/isEquals
	assertType = "isEquals"

	exec(var/a, var/b)
		return a == b

/**
 * Runs the assertion and assigns the result to the currently
 * running test within the global zen instance.
 */
zen/proc/assertEquals(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isEquals()
	thisAssertion.description = description
	thisAssertion.paramA = a
	thisAssertion.paramB = b

	// Add to the test this assertion is running in for printing results later
	currentRunningTest.testResults.assertions += thisAssertion

	// Calculate the assertion and store results internally
	thisAssertion.result = thisAssertion.exec(a, b)

	// If we got a fail result, update overall test result to fail
	if(!thisAssertion.result) currentRunningTest.testResults.pass = 0

		