
/**
 * Raw assertion logic
 */
zen_assertion/isTrue
	assertType = "isTrue"
	params = 1

	result(var/a)
		return a == 1

/**
 * Asserts a is 1
 */
zen/proc/assertIsTrue(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isTrue(description, a)
	thisAssertion.exec(description, a)
		