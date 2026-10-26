
/**
 * Raw assertion logic
 */
zen_assertion/isNull
	assertType = "isNull"

	result(var/a)
		return isnull(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsNull(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNull(description, a, b)
	thisAssertion.exec(description, a, b)
		