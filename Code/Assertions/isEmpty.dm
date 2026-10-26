
/**
 * Raw assertion logic
 */
zen_assertion/isEmpty
	assertType = "isEmpty"

	result(var/list/a)
		return a.len == 0

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsEmpty(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isEmpty(description, a, b)
	thisAssertion.exec(description, a, b)
		