
/**
 * Raw assertion logic
 */
zen_assertion/isGreaterThanOrEquals
	assertType = "isGreaterThanOrEquals"

	result(var/a, var/b)
		return a >= b

/**
 * Asserts that a >= b
 */
zen/proc/assertIsGreaterThanOrEquals(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isGreaterThanOrEquals(description, a, b)
	thisAssertion.exec(description, a, b)
		