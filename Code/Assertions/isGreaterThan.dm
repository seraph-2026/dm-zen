
/**
 * Raw assertion logic
 */
zen_assertion/isGreaterThan
	assertType = "isGreaterThan"

	result(var/a, var/b)
		return a > b

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsGreaterThan(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isGreaterThan(description, a, b)
	thisAssertion.exec(description, a, b)
		