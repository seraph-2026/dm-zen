
/**
 * Zen Results
 * 
 * Stores the results of a test so they can be presented late
 */
 
zen_results
	var
		pass = TRUE // Default to true unless an assertion fails
		list/passedAssertions = list()
		list/failedAssertions = list()
		list/exceptions = list()
		time = 0 // Time taken to complete in deci seconds
	
	/**
	 * Enable automatic toString in world << testResults or "[testResults]"
	 */
	proc/operator""()	
		return src.toString()


	/**
	 * Return a pretty version of the test results
	 * 
	 * Includes assertions and exceptions
	 * 
	 * If parameter noPassed = 1, it will exclude assertions that passed.
	 */
	proc/toString(noPassed = 0)
		return  assertionsToString(noPassed) + exceptionsToString()
	
	/**
	 * Return a pretty string representation of the test
	 * 
	 * If parameter noPassed is 1, then it won't print passed tests.
	 * This is useful when printing out only what went wrong.
	 */
	proc/assertionsToString(noPassed = 0)
		var/outputString = ""
		var/totalAssertions = src.passedAssertions + failedAssertions

		for(var/zen_assertion/assertion in totalAssertions)

			// Skip any assertions that passed if noPassed is on
			if(noPassed && assertion.result) continue

			var/assertResult = assertion.result ? ZEN_GREEN_TICK : ZEN_RED_CROSS
			outputString += "\t\n\t[assertResult] [assertion.description]\n"
			
			// If asssertion failed print debugging
			if(!assertion.result)
				outputString += "\t\t<b>Assertion</b>\n\t\t\t[assertion.assertType]\n"
				if(assertion.params == 2)
					outputString += "\t\t<b>[assertion.aName]</b>\n\t\t\t[assertion.paramA]\n"
					outputString += "\t\t<b>[assertion.bName]</b>\n\t\t\t[assertion.paramB]\n"
					outputString += "\t\t<b>Result</b>\n\t\t\t[assertion.result]\n"
				if(assertion.params == 1)
					outputString += "\t\t<b>[assertion.aName]</b>\n\t\t\t[assertion.paramA]\n"
					outputString += "\t\t<b>Result</b>\n\t\t\t[assertion.result]\n"
			
		return outputString

	/**
	 * Returns a pretty string of all the exceptions
	 */
	proc/exceptionsToString()
		var/outputString = ""

		for(var/exception/e in src.exceptions)
			outputString += "\n\t[ZEN_RED_CROSS] Encountered an exception."
			outputString += "\n\t\t<b>Type</b> [e.name]\n"
			outputString += "\t\t<b>File</b> [e.file]\n" + "\t\t<b>Line</b>: [e.line]\n"
			outputString += "\t\t<b>Description</b>\n\t\t\t[replacetext(e.desc,"\n","\n\t\t\t")]"
		
		return outputString