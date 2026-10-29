
/**
 * Raw assertion logic
 */
zen_assertion/isNotList
	assertType = "isNotList"
	params = 1
	aName = "Value"

	result(var/a)
		return !islist(a)

/**
 * Asserts a is not /list
 */
zen/proc/assertIsNotList(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotList(description, a)
	thisAssertion.exec(description, a)
		