
// Global singleton accessor
var/zen_utils/zen_utils = new/zen_utils()

zen_utils
	proc
		/** 
		 * Return all tests in this zen instance
		 */
		getAllTests(var/zen/zenInstance)
			var/list/allTests = list()

			// For all children types of /zen
			for(var/type in typesof(/zen))
				if(type != zenInstance.type) 
					allTests += new type()
			
			return allTests
		
		/** 
		 * Return a single test instance by name
		 */
		getTest(var/testName)
			return  name2test(testName)

		/** 
		 * Return a list of test instances created from the input list of test names
		 */
		getTests(var/list/listOfTestNames)
			var/list/someTests = list()
			for(var/testName in listOfTestNames)
				someTests += name2test(testName)
			
			return someTests

		/** 
		 * Convert a text name of a test into a real /zen test object
		 * 
		 * Supports names that are types like
		 *     /solar_system/planet
		 * 
		 * The only requirement is it must have a matching definition under zen
		 *     zen/solar_system/planet
		 * 
		 * Otherwise it will fail to create the test
		 *     
		 */
			
		/**
		 * Returns a real zen/test object corresponding to the text name.
		 * 
		 * So "mytest" returns an instance of /zen/mytest
		 * 
		 */
		name2test(var/testName)
			var/testPath = text2path("/zen/[testName]")
			return new testPath()
		
		/**
		 * Run a list of tests on this zen instance
		 */
		runTests(var/zen/zenInstance, var/list/tests)

			zenInstance.outputContainer << ZEN_RUNNING_TEST + "\n\n"

			for(var/zen/someTest in tests)
				zenInstance.currentRunningTest = someTest // Keep track of what test is running
				try 
					someTest.test() 

				catch(var/exception/e)
					someTest.testResults.exceptions += e
					world << "[e]"
				
				outputTestResults(zenInstance, someTest)
				
				zenInstance.currentRunningTest = null
		
			zenInstance.outputContainer << ZEN_FINISHED_TEST

		/**
		 * Will return test results formatted to look pretty
		 */
		outputTestResults(var/zen/zenInstance, var/zen/someTest)
			var/resultsText = ""

			var/passOrFail = someTest.testResults.pass ? ZEN_PASS : ZEN_FAIL
			resultsText += "[passOrFail] [copytext("[someTest.type]", 6)]\n"
			resultsText += "[someTest.testResults]\n"
			resultsText += ZEN_HR

			
			zenInstance.outputContainer << resultsText