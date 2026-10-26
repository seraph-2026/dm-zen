
/**
 * Raw assertion logic
 */
zen_assertion/isNotNull
	assertType = "isNotNull"

	result(var/a)
		return !isnull(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsNotNull(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotNull(description, a, b)
	thisAssertion.exec(description, a, b)
		