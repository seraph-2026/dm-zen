
/**
 * Raw assertion logic
 */
zen_assertion/isLessThan
	assertType = "isLessThan"

	result(var/a, var/b)
		return a <= b

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsLessThan(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isLessThan(description, a, b)
	thisAssertion.exec(description, a, b)
		