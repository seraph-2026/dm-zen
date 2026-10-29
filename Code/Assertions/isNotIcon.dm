
/**
 * Raw assertion logic
 */
zen_assertion/isNotIcon
	assertType = "isNotIcon"
	params = 1
	aName = "Value"
	
	result(var/a)
		return !isicon(a)

/**
 * Asserts that a is not an /icon
 */
zen/proc/assertIsNotIcon(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotIcon(description, a)
	thisAssertion.exec(description, a)
		