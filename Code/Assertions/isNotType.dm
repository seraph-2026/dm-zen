
/**
 * Raw assertion logic
 */
zen_assertion/isNotType
	assertType = "isNotType"
	params = 2
	aName = "Input"
	bName = "Value"

	result(var/a, var/b)
		return !istype(a, b)

/**
 * Asserts a is not type b
 */
zen/proc/assertIsNotType(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotType(description, a, b)
	thisAssertion.exec(description, a, b)
		