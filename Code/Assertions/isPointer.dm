
/**
 * Raw assertion logic
 */
zen_assertion/isPointer
	assertType = "isPointer"

	result(var/a)
		return ispointer(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsPointer(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isPointer(description, a, b)
	thisAssertion.exec(description, a, b)
		