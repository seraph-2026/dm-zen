
/**
 * Raw assertion logic
 */
zen_assertion/listEndsWith
	assertType = "listEndsWith"

	result(var/list/a, var/b)
		return a[a.len] == b

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertListEndsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/listEndsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		