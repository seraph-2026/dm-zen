
/**
 * Raw assertion logic
 */
zen_assertion/isArea
	assertType = "isArea"

	result(var/a)
		return isarea(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsArea(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isArea(description, a, b)
	thisAssertion.exec(description, a, b)
		