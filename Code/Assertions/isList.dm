
/**
 * Raw assertion logic
 */
zen_assertion/isList
	assertType = "isList"
	params = 1
	aName = "Input"

	result(var/a)
		return islist(a)

/**
 * Asserts a is /list
 */
zen/proc/assertIsList(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isList(description, a)
	thisAssertion.exec(description, a)
		