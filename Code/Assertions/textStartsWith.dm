
/**
 * Raw assertion logic
 */
zen_assertion/textStartsWith
	assertType = "startsWith"

	result(var/a, var/b)
		var/foundText = findtext(a, b, 1, 2)
		return foundText ? 1 : 0

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertTextStartsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/textStartsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		