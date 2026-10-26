
/**
 * Raw assertion logic
 */
zen_assertion/listNotEmpty
	assertType = "listNotEmpty"
	params = 1

	result(var/list/a)
		return a.len > 0

/**
 * Asserts list a is not empty
 */
zen/proc/assertListNotEmpty(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/listNotEmpty(description, a)
	thisAssertion.exec(description, a)
		