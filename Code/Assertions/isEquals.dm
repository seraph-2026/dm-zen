
/**
 * Raw assertion logic
 */
zen_assertion/isEquals
	assertType = "isEquals"
	params = 2

	result(var/a, var/b)
		return a == b

/**
 * Asserts that a == b
 */
zen/proc/assertEquals(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isEquals(description, a, b)
	thisAssertion.exec(description, a, b)
		