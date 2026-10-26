
/**
 * Raw assertion logic
 */
zen_assertion/textEndsWith
	assertType = "textEndsWith"
	params = 2
	aName = "Text"
	bName = "Search Text"

	result(var/a, var/b)
		return copytext(a, (length(a) + 1) - length(b)) == b

/**
 * Asserts text a ends with text b
 */
zen/proc/assertTextEndsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/textEndsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		