
/**
 * Raw assertion logic
 */
zen_assertion/isObj
	assertType = "isObj"

	result(var/a)
		return isobj(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsObj(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isObj(description, a, b)
	thisAssertion.exec(description, a, b)
		