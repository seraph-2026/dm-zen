
/**
 * Raw assertion logic
 */
zen_assertion/isTrue
	assertType = "isTrue"

	result(var/a)
		return a == 1

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsTrue(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isTrue(description, a, b)
	thisAssertion.exec(description, a, b)
		