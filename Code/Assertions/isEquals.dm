zen_assertion/isEquals
	assertType = "isEquals"

	exec(var/a, var/b)
		result = a == b

zen/proc/assertEquals()
	var/zen_assertion/thisAssertion = new/zen_assertion/isEquals()

	// Add to the test this assertion is running in for printing results later
	currentRunningTest.testResults.assertions += thisAssertion

	// Calculate the assertion and store results internally
	thisAssertion.exec()

		