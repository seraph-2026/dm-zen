
/**
 * Raw assertion logic
 */
zen_assertion/isText
	assertType = "isText"

	result(var/a)
		return istext(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsText(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isText(description, a, b)
	thisAssertion.exec(description, a, b)
		