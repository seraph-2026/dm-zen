
/**
 * Raw assertion logic
 */
zen_assertion/isLessThanOrEquals
	assertType = "isLessThanOrEquals"
	params = 2
	aName = "Value"
	bName = "Compared Against"

	result(var/a, var/b)
		return a <= b

/**
 * Asserts a <= b
 */
zen/proc/assertIsLessThanOrEquals(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isLessThanOrEquals(description, a, b)
	thisAssertion.exec(description, a, b)
		