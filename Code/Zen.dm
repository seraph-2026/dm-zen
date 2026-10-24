

// Global singleton zen
var/zen/zen = new()

zen
	var
		zen/currentTest
		zen_results/testResults // Overriden by /zen children

	proc
		test() // Overriden by /zen children
		
		assertTrue()
			var/zen_assertion/thisAssertion = new/zen_assertion/isEquals()

			// Add to the test this assertion is running in for printing results later
			currentTest.testResults.assertions += thisAssertion

			// Calculate the assertion and store results internally
			thisAssertion.exec()

		
		exec(var/suiteNameOrList)
			// Param is text, run specific suite
			if(istext(suiteNameOrList))
				zen_utils.runTest(src, suiteNameOrList)
			
			// Param is list, run list of specific suites
			if(islist(suiteNameOrList))
				zen_utils.runTests(suiteNameOrList)

			// No parameters - Run all tests
			zen_utils.runAllTests(src)