zen_assertion/isEquals
	assertType = "isEquals"

	exec(var/a, var/b)
		return result = a == b

zen/proc/assertEquals(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isEquals()
	thisAssertion.description = description

	// Add to the test this assertion is running in for printing results later
	currentRunningTest.testResults.assertions += thisAssertion

	// Calculate the assertion and store results internally
	thisAssertion.result = thisAssertion.exec(a, b)

	// If we got a fail result, update overall test result to fail
	if(!thisAssertion.result) currentRunningTest.testResults.pass = 0

		