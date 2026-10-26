
/**
 * Raw assertion logic
 */
zen_assertion/listStartsWith
	assertType = "startsWith"

	result(var/list/a, var/b)
		return a[1] == b

/**
 * Asserts list a starts with b
 */
zen/proc/assertListStartsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/listStartsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		