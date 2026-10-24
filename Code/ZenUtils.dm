
// Global singleton accessor
var/zen_utils/zen_utils = new/zen_utils()

zen_utils
	proc
		/**
			Find all tests in this zen instance and run them
		**/
		runAllTests(var/zen/zenInstance)
			var/list/allTests = list()

			for(var/type in typesof(/zen))
				if(type != zenInstance.type) // For all cbildren types of /zen
					world << type
					allTests += new type()
		
		/**
			Find a single test in this zen instance and run it
		**/
		runTest(var/zen/zenInstance, var/testName)

		/**
			Run all tests in this list, that exist on the zen instance
		**/
		runTests(var/zen/zenInstance, var/testName)