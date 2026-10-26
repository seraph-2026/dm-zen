
/**
 * Raw assertion logic
 */
zen_assertion/isNan
	assertType = "isNaN"

	result(var/a)
		return isnan(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsNan(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNan(description, a, b)
	thisAssertion.exec(description, a, b)
		