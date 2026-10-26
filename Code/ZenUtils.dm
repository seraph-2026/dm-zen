
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
					var/zen/test = new type()
					// Refuse to return hidden tests
					if(!test.hidden)
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
		name2test(var/testName)
			var/testPath = text2path("/zen/[testName]")
			return new testPath()
		
		/**
		 * Run a list of tests on this zen instance
		 */
		runTests(var/zen/zenInstance, var/list/tests)

			zenInstance.outputContainer << ZEN_RUNNING_TEST
			zenInstance.outputContainer << ZEN_HR

			var/i = 1
			for(var/zen/someTest in tests)
				var/startTime = world.time

				zenInstance.outputContainer << "Running test [i] of [tests.len]\n"
				zenInstance.currentRunningTest = someTest // Keep track of what test is running
				try 
					someTest.test() 

				catch(var/exception/e)
					someTest.testResults.pass = 0 // Any exception is an automatic fail
					someTest.testResults.exceptions += e // Store exception for later presentatin
				
				outputTestResults(zenInstance, someTest, startTime, world.time)
				
				zenInstance.currentRunningTest = null

				i++
			
			outputTestSummary(zenInstance, tests)
		
			zenInstance.outputContainer << ZEN_FINISHED_TEST

		/**
		 * Will return individual test results formatted to look pretty
		 */
		outputTestResults(var/zen/zenInstance, var/zen/someTest, var/startTime, var/endTime)
			var/resultsText = ""

			var/passOrFail = someTest.testResults.pass ? ZEN_PASS_TEST : ZEN_FAIL_TEST
			resultsText += "[passOrFail] [copytext("[someTest.type]", 6)]\n"
			resultsText += "[someTest.testResults]\n"
			resultsText += "Completed in [(endTime - startTime) * 10]s\n"
			resultsText += ZEN_HR

			zenInstance.outputContainer << resultsText
		
		/**
		 * Will return a summary of all the tests run
		 */
		outputTestSummary(var/zen/zenInstance, var/list/tests)
			var/resultsText = ""

			var/pass = 1
			var/list/passedTests = list()
			var/list/failedTests = list()

			for(var/zen/test in tests)
				// Any single test failure means the suite failed
				if(!test.testResults.pass)
					failedTests += test
					pass = 0
				else
					passedTests += test

			var/passOrFail = pass ? ZEN_PASS : ZEN_FAIL
			resultsText += "<b>Overall Test Result</b> - [passOrFail]\n"
			
			// Short summary passed tests
			if(passedTests.len > 0)
				resultsText += "\t[ZEN_GREEN_TICK] [passedTests.len] of [tests.len] passed\n"

			if(failedTests.len > 0)
				resultsText += "\t[ZEN_RED_CROSS] [failedTests.len] of [tests.len] failed\n\n"
			
			// Detailed summary failed tests
			for(var/zen/test in failedTests)
				resultsText += "[copytext("[test.type]", 6)]"
				resultsText += test.testResults.toString()

			resultsText += ZEN_HR

			zenInstance.outputContainer << resultsText