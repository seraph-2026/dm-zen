
/**
 * Raw assertion logic
 */
zen_assertion/isMovable
	assertType = "isMovable"

	result(var/a)
		return ismovable(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsMovable(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isMovable(description, a, b)
	thisAssertion.exec(description, a, b)
		