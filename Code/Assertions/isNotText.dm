
/**
 * Raw assertion logic
 */
zen_assertion/isNotText
	assertType = "isNotText"
	params = 1
	aName = "Value"

	result(var/a)
		return !istext(a)

/**
 * Asserts a is not text
 */
zen/proc/assertIsNotText(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotText(description, a)
	thisAssertion.exec(description, a)
		