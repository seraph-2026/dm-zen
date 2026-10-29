
/**
 * Raw assertion logic
 */
zen_assertion/isNotPath
	assertType = "isNotPath"
	params = 1
	aName = "Value"
	
	result(var/a)
		return !ispath(a)

/**
 * Asserts a is a path
 */
zen/proc/assertIsNotPath(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotPath(description, a)
	thisAssertion.exec(description, a)
		