
/**
 * Raw assertion logic
 */
zen_assertion/isPath
	assertType = "isPath"

	result(var/a)
		return ispath(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsPath(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isPath(description, a, b)
	thisAssertion.exec(description, a, b)
		