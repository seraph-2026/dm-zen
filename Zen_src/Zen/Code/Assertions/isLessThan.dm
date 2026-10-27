
/**
 * Raw assertion logic
 */
zen_assertion/isLessThan
	assertType = "isLessThan"
	params = 2
	aName = "Value"
	bName = "Compared Against"
	
	result(var/a, var/b)
		return a < b

/**
 * Asserts a < b
 */
zen/proc/assertIsLessThan(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isLessThan(description, a, b)
	thisAssertion.exec(description, a, b)
		