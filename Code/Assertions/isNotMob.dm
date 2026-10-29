
/**
 * Raw assertion logic
 */
zen_assertion/isNotMob
	assertType = "isNotMob"
	params = 1
	aName = "Value"

	result(var/a)
		return !ismob(a)

/**
 * Asserts a is a /mob
 */
zen/proc/assertIsNotMob(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotMob(description, a, b)
	thisAssertion.exec(description, a, b)
		