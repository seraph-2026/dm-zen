
/**
 * Raw assertion logic
 */
zen_assertion/isMob
	assertType = "isMob"
	params = 1

	result(var/a)
		return ismob(a)

/**
 * Asserts a is a /mob
 */
zen/proc/assertIsMob(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isMob(description, a, b)
	thisAssertion.exec(description, a, b)
		