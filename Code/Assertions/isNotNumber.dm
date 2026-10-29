
/**
 * Raw assertion logic
 */
zen_assertion/isNotNumber
	assertType = "isNotNumber"
	params = 1
	aName = "Value"

	result(var/a)
		return !isnum(a)

/**
 * Asserts a is not a number
 */
zen/proc/assertIsNotNumber(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotNumber(description, a)
	thisAssertion.exec(description, a)
		