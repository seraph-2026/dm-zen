
/**
 * Raw assertion logic
 */
zen_assertion/isLength
	assertType = "isLength"
	params = 2
	aName = "Value"

	result(var/a, var/b)
		return length(a) == b

/**
 * Asserts that a is length b
 */
zen/proc/assertIsLength(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isLength(description, a, b)
	thisAssertion.exec(description, a, b)
		