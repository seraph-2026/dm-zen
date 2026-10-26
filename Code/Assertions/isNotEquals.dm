
/**
 * Raw assertion logic
 */
zen_assertion/isNotEquals
	assertType = "isNotEquals"

	result(var/a, var/b)
		return a != b

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsNotEquals(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotEquals(description, a, b)
	thisAssertion.exec(description, a, b)
		