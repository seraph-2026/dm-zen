
/**
 * Raw assertion logic
 */
zen_assertion/isNotArea
	assertType = "isNotArea"
	params = 1
	aName = "Value"

	result(var/a)
		return !isarea(a)

/**
 * Asserts that a is not an /area
 */
zen/proc/assertIsNotArea(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotArea(description, a)
	thisAssertion.exec(description, a)
		