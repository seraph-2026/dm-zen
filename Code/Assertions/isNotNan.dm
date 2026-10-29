
/**
 * Raw assertion logic
 */
zen_assertion/isNotNan
	assertType = "isNotNan"
	params = 1
	aName = "Value"

	result(var/a)
		return !isnan(a)

/**
 * Asserts a is not NaN
 */
zen/proc/assertIsNotNan(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotNan(description, a)
	thisAssertion.exec(description, a)
		