
/**
 * Raw assertion logic
 */
zen_assertion/textNotEndsWith
	assertType = "textNotEndsWith"
	params = 2
	aName = "Text"
	bName = "Search Text"

	result(var/a, var/b)
		return !copytext(a, (length(a) + 1) - length(b)) == b

/**
 * Asserts text a does not end with text b
 */
zen/proc/assertTextNotEndsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/textNotEndsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		