
/**
 * Raw assertion logic
 */
zen_assertion/listIsNotEmpty
	assertType = "listIsNotEmpty"
	params = 1
	aName = "List"

	result(var/list/a)
		return a.len > 0

/**
 * Asserts list a is not empty
 */
zen/proc/assertListIsNotEmpty(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/listIsNotEmpty(description, a)
	thisAssertion.exec(description, a)
		