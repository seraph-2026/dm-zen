
/**
 * Raw assertion logic
 */
zen_assertion/isNotPointer
	assertType = "isNotPointer"
	params = 1
	aName = "Value"

	result(var/a)
		return !ispointer(a)

/**
 * Asserts a is not a pointer
 */
zen/proc/assertIsNotPointer(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotPointer(description, a)
	thisAssertion.exec(description, a)
		