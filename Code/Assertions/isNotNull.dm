
/**
 * Raw assertion logic
 */
zen_assertion/isNotNull
	assertType = "isNotNull"
	params = 1

	result(var/a)
		return !isnull(a)

/**
 * Asserts a is not null
 */
zen/proc/assertIsNotNull(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotNull(description, a)
	thisAssertion.exec(description, a)
		