
/**
 * Raw assertion logic
 */
zen_assertion/isInf
	assertType = "isInf"

	result(var/a)
		return isinf(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsInf(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isInf(description, a, b)
	thisAssertion.exec(description, a, b)
		