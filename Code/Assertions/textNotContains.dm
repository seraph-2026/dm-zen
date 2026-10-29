
/**
 * Raw assertion logic
 */
zen_assertion/textNotContains
	assertType = "textNotContains"
	params = 2
	aName = "Text"
	bName = "Search Text"

	result(var/a, var/b)
		return !findtext(a, b)

/**
 * Assert text a does not contain b
 */
zen/proc/assertTextNotContains(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/textNotContains(description, a, b)
	thisAssertion.exec(description, a, b)
		