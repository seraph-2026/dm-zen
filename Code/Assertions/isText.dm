
/**
 * Raw assertion logic
 */
zen_assertion/isText
	assertType = "isText"
	params = 1
	aName = "Input"

	result(var/a)
		return istext(a)

/**
 * Asserts a is text
 */
zen/proc/assertIsText(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isText(description, a)
	thisAssertion.exec(description, a)
		