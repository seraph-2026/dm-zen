
/**
 * Raw assertion logic
 */
zen_assertion/isNotObj
	assertType = "isNotObj"
	params = 1
	aName = "Value"

	result(var/a)
		return !isobj(a)

/**
 * Asserts a is /obj
 */
zen/proc/assertIsNotObj(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotObj(description, a)
	thisAssertion.exec(description, a)
		