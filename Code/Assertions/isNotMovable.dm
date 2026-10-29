
/**
 * Raw assertion logic
 */
zen_assertion/isNotMovable
	assertType = "isNotMovable"
	params = 1
	aName = "Value"

	result(var/a)
		return !ismovable(a)

/**
 * Asserts a is not /movable
 */
zen/proc/assertIsNotMovable(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotMovable(description, a)
	thisAssertion.exec(description, a)
		