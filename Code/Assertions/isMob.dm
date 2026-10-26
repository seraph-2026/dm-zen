
/**
 * Raw assertion logic
 */
zen_assertion/isMob
	assertType = "isMob"

	result(var/a)
		return ismob(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsMob(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isMob(description, a, b)
	thisAssertion.exec(description, a, b)
		