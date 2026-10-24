/**
	Zen Results

	Stores the results of a test so they can be presented later
**/

zen_results
	var
		testName
		list/assertions = list()
	
	proc/operator""() // Will probably override the operator to stringify it
