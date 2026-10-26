
/**
 * Raw assertion logic
 */
zen_assertion/isList
	assertType = "isList"

	result(var/a)
		return islist(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsList(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isList(description, a, b)
	thisAssertion.exec(description, a, b)
		