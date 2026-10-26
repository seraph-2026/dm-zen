
/**
 * Raw assertion logic
 */
zen_assertion/listIsEmpty
	assertType = "isEmpty"
	params = 1

	result(var/list/a)
		return a.len == 0

/**
 * Asserts that list a is empty
 */
zen/proc/assertListIsEmpty(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/listIsEmpty(description, a)
	thisAssertion.exec(description, a)
		