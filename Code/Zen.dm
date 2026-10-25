

/**
 * Essentially this operates like a namespace for the zen project
 * 
 * It's a global instance of the root /zen datum
 */
var/zen/zen = new()

zen
	var
		zen/currentRunningTest // Keeping track of this gives assertions their context
		zen_results/testResults = new/zen_results() // Contains the result of children /zen/tests. Primarily assertions
		outputContainer // What results will be << piped to

	proc
		test() // Overriden by /zen children
		
		/**
		 * Will run all tests, or optionally a specific test or list of tests
		 * 
		 * The first parameter outputContainer will recieve the results livestreamed
		 * Internally this is done using outputContainer << testResults
		 * 
		 * The second parameter is the test name (text) or list (/list) of test names as text
		 */
		exec(var/outputContainer, var/testNameOrList)

			src.outputContainer = outputContainer

			var/list/testsToRun = list()

			// Param is text, run specific suite
			if(istext(testNameOrList))
				testsToRun += zen_utils.getTest(src, testNameOrList)
			
			// Param is list, run list of specific suites
			else if(islist(testNameOrList))
				testsToRun += zen_utils.getTests(testNameOrList)
			
			else
				// No parameters - Run all tests
				testsToRun += zen_utils.getAllTests(src)
			
			// Run tests
			zen_utils.runTests(zen, testsToRun)
		
		/**
		 * Gets a new instance of the object type represented by the mock type
		 */
		mock(var/someMockType)
			var/mock/someMock = new someMockType()
			return someMock.get()