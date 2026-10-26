
/**
 * Zen Results
 * 
 * Stores the results of a test so they can be presented late
 */
 
zen_results
	var
		pass = TRUE // Default to true unless an assertion fails
		list/assertions = list()
		list/exceptions = list()
	
	/**
	 * Enable automatic toString in world << testResults or "[testResults]"
	 */
	proc/operator""()	
		return src.toString()


	/**
	 * Return a pretty version of the test results
	 * 
	 * Includes assertions and exceptions
	 */
	proc/toString()
		return  assertionsToString() + "\n" + exceptionsToString()
	
	proc/assertionsToString()
		var/outputString = ""

		for(var/zen_assertion/assertion in src.assertions)
			var/assertResult = assertion.result ? ZEN_GREEN_TICK : ZEN_RED_CROSS
			outputString += "\t\n\t[assertResult] [assertion.description]\n"
			
			// If asssertion failed print debugging
			if(!assertion.result)
				if(assertion.params == 2)
					outputString += "\t\t<b>A</b>\n\t\t\t[assertion.paramA]\n"
					outputString += "\t\t<b>Type</b>\n\t\t\t[assertion.assertType]\n"
					outputString += "\t\t<b>B</b>\n\t\t\t[assertion.paramB]\n"
				if(assertion.params == 1)
					outputString += "\t\t<b>A</b>\n\t\t\t[assertion.paramA]\n"
					outputString += "\t\t<b>Type</b>\n\t\t\t[assertion.assertType]\n"
		
		return outputString

	proc/exceptionsToString()
		var/outputString = ""

		for(var/exception/e in src.exceptions)
			outputString += "\t[ZEN_RED_CROSS] Encountered an exception."
			outputString += "\n\t\t<b>Type</b> [e.name]\n"
			outputString += "\t\t<b>File</b> [e.file]\n" + "\t\t<b>Line</b>: [e.line]\n"
			outputString += "<span>\t\t<b>Description</b>\n\t\t\t[replacetext(e.desc,"\n","\n\t\t\t")]</span>"
		
		return outputString