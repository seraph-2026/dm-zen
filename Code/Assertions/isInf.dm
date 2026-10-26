
/**
 * Raw assertion logic
 */
zen_assertion/isInf
	assertType = "isInf"
	params = 1

	result(var/a)
		return isinf(a)

/**
 * Asserts that a is inf
 */
zen/proc/assertIsInf(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isInf(description, a)
	thisAssertion.exec(description, a)
		