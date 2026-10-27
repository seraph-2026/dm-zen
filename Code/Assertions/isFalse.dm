
/**
 * Raw assertion logic
 */
zen_assertion/isFalse
	assertType = "isFalse"
	params = 1
	aName = "Value"


	result(var/a)
		return a == 0

/**
 * Asserts that a == 0
 */
zen/proc/assertIsFalse(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isFalse(description, a)
	thisAssertion.exec(description, a)
