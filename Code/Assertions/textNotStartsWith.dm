
/**
 * Raw assertion logic
 */
zen_assertion/textNotStartsWith
	assertType = "textNotStartsWith"
	params = 2
	aName = "Text"
	bName = "Search Text"

	result(var/a, var/b)
		return !copytext(a, 1, length(b) + 1) == b

/**
 * Asserts text a does not start with text b
 */
zen/proc/assertTextNotStartsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/textNotStartsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		