
/**
 * Raw assertion logic
 */
zen_assertion/isLength
	assertType = "isLength"

	result(var/a, var/b)
		return length(a) == b

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsLength(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isLength(description, a, b)
	thisAssertion.exec(description, a, b)
		