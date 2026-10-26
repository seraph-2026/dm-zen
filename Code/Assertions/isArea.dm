
/**
 * Raw assertion logic
 */
zen_assertion/isArea
	assertType = "isArea"
	params = 1
	aName = "Input"


	result(var/a)
		return isarea(a)

/**
 * Asserts that a is an /area
 */
zen/proc/assertIsArea(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isArea(description, a)
	thisAssertion.exec(description, a)
		