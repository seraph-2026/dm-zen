
/**
 * Raw assertion logic
 */
zen_assertion/listStartsWith
	assertType = "startsWith"

	result(var/list/a, var/b)
		return a[1] == b

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertListStartsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/listStartsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		