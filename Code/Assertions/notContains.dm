
/**
 * Raw assertion logic
 */
zen_assertion/listNotContains
	assertType = "listNotContains"

	result(var/a, var/b)
		return a == b

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertListNotContains(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/listNotContains(description, a, b)
	thisAssertion.exec(description, a, b)
		