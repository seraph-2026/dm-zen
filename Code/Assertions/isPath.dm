
/**
 * Raw assertion logic
 */
zen_assertion/isPath
	assertType = "isPath"
	params = 1

	result(var/a)
		return ispath(a)

/**
 * Asserts a is a path
 */
zen/proc/assertIsPath(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isPath(description, a)
	thisAssertion.exec(description, a)
		