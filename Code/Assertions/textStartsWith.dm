
/**
 * Raw assertion logic
 */
zen_assertion/textStartsWith
	assertType = "textStartsWith"
	params = 2
	aName = "Text"
	bName = "Search Text"

	result(var/a, var/b)
		return copytext(a, 1, length(b) + 1) == b

/**
 * Asserts text a does starts with text b
 */
zen/proc/assertTextStartsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/textStartsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		