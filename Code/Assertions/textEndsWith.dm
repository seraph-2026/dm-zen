
/**
 * Raw assertion logic
 */
zen_assertion/textEndsWith
	assertType = "textEndsWith"

	result(var/a, var/b)
		var/foundText = findtext(a, b, 1, length(a))
		return foundText ? 1 : 0

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertTextEndsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/textEndsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		