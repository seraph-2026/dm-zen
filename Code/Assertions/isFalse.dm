
/**
 * Raw assertion logic
 */
zen_assertion/
	assertType = ""

	result(var/a, var/b)
		return a == b

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assert(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/(description, a, b)
	thisAssertion.exec(description, a, b)
		