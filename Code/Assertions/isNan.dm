
/**
 * Raw assertion logic
 */
zen_assertion/isNan
	assertType = "isNaN"

	result(var/a)
		return isnan(a)

/**
 * Asserts a is NaN
 */
zen/proc/assertIsNan(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNan(description, a)
	thisAssertion.exec(description, a)
		