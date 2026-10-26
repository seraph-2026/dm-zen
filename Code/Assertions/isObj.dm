
/**
 * Raw assertion logic
 */
zen_assertion/isObj
	assertType = "isObj"
	params = 1
	aName = "Input"

	result(var/a)
		return isobj(a)

/**
 * Asserts a is /obj
 */
zen/proc/assertIsObj(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isObj(description, a)
	thisAssertion.exec(description, a)
		