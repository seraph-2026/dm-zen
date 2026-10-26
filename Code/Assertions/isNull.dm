
/**
 * Raw assertion logic
 */
zen_assertion/isNull
	assertType = "isNull"
	params = 1

	result(var/a)
		return isnull(a)

/**
 * Asserts a is null
 */
zen/proc/assertIsNull(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNull(description, a, b)
	thisAssertion.exec(description, a, b)
		