
/**
 * Raw assertion logic
 */
zen_assertion/textStartsWith
	assertType = "startsWith"
	params = 2

	result(var/a, var/b)
		return copytext(a, 1, length(b)) == b


/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertTextStartsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/textStartsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		