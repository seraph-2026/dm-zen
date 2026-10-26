
/**
 * Raw assertion logic
 */
zen_assertion/textContains
	assertType = "textContains"

	result(var/a, var/b)
		return findtext(a, b)

/**
 * Assert text a contains b
 */
zen/proc/assertTextContains(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/textContains(description, a, b)
	thisAssertion.exec(description, a, b)
		