
/**
 * Raw assertion logic
 */
zen_assertion/isNotInf
	assertType = "isNotInf"
	params = 1
	aName = "Value"

	result(var/a)
		return !isinf(a)

/**
 * Asserts that a is inf
 */
zen/proc/assertIsNotInf(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotInf(description, a)
	thisAssertion.exec(description, a)
		