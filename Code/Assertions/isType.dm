
/**
 * Raw assertion logic
 */
zen_assertion/isType
	assertType = "isType"

	result(var/a, var/b)
		return a == b

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsType(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isType(description, a, b)
	thisAssertion.exec(description, a, b)
		