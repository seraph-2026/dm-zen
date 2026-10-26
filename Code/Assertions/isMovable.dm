
/**
 * Raw assertion logic
 */
zen_assertion/isMovable
	assertType = "isMovable"
	params = 1

	result(var/a)
		return ismovable(a)

/**
 * Asserts a is /movable
 */
zen/proc/assertIsMovable(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isMovable(description, a)
	thisAssertion.exec(description, a)
		