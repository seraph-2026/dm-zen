/**
	Zen Results

	Stores the results of a test so they can be presented later
**/

zen_results
	var
		pass = TRUE // Default to true unless an assertion fails
		list/assertions = list()
		list/exceptions = list()
	
	/**
		Enable automatic toString in world << testResults or "[testResults]"
	**/
	proc/operator""()	
		return src.toString()


	/**
		Return a pretty version of the test results

		Includes assertions and exceptions
	**/
	proc/toString()
		var/outputString = ""

		for(var/zen_assertion/assertion in src.assertions)
			var/assertResult = assertion ? ZEN_GREEN_TICK : ZEN_RED_X
			outputString += "\t[assertResult] [assertion.description]"
		
		for(var/exception/e in src.exceptions)
			outputString += "Exception: [e]"
		
		return outputString