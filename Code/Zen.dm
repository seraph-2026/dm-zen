

// Global singleton zen
var/zen/zen = new()

zen
	var
		zen/currentRunningTest // Keeping track of this gives assertions their context
		zen_results/testResults = new/zen_results() // Contains the result of children /zen/tests. Primarily assertions

	proc
		test() // Overriden by /zen children
		
		
		exec(var/suiteNameOrList)

			var/list/testsToRun = list()

			// Param is text, run specific suite
			if(istext(suiteNameOrList))
				testsToRun += zen_utils.getTest(src, suiteNameOrList)
			
			// Param is list, run list of specific suites
			else if(islist(suiteNameOrList))
				testsToRun += zen_utils.getTests(suiteNameOrList)
			
			else
				// No parameters - Run all tests
				testsToRun += zen_utils.getAllTests(src)
			
			// Run tests
			zen_utils.runTests(zen, testsToRun)

			// Return nicely formatted text results
			return zen_utils.getFormattedTestResults(testsToRun)

