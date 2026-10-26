
/**
 * Raw assertion logic
 */
zen_assertion/isPointer
	assertType = "isPointer"

	result(var/a)
		return ispointer(a)

/**
 * Asserts a is a pointer
 */
zen/proc/assertIsPointer(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isPointer(description, a)
	thisAssertion.exec(description, a)
		