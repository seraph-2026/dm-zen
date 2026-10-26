
/**
 * Raw assertion logic
 */
zen_assertion/isNumber
	assertType = "isNumber"
	params = 1

	result(var/a)
		return isnum(a)

/**
 * Asserts a is a number
 */
zen/proc/assertIsNumber(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNumber(description, a)
	thisAssertion.exec(description, a)
		