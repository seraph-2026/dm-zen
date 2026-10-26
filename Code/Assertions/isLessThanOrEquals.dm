
/**
 * Raw assertion logic
 */
zen_assertion/isLessThanOrEquals
	assertType = "isLessThanOrEquals"

	result(var/a, var/b)
		return a <= b

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsLessThanOrEquals(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isLessThanOrEquals(description, a, b)
	thisAssertion.exec(description, a, b)
		