
/**
 * Raw assertion logic
 */
zen_assertion/isEquals
	assertType = "isEquals"
	params = 2
	aName = "Expected"
	bName = "Actual"
	result(var/a, var/b)
		return a == b 

/**
 * Asserts that a == b
 */
zen/proc/assertIsEquals(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isEquals(description, a, b)
	thisAssertion.exec(description, a, b)
		