

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
		 * Executes all, one or a list of tests.
		 * 
		 * The first parameter outputContainer will recieved the test results << piped to it
		 * 
		 * The second parameter is the name of the specific test to run or a list of tests
		 * 
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
			
			// Allows users to control the presentation of the test results manually
			return testsToRun
		
		/**
		 * Gets a new instance of the object type represented by the mock type
		 */
		mock(var/someMockType)
			var/mock/someMock = new someMockType()
			return someMock.get()