
/**
 * Raw assertion logic
 */
zen_assertion/isIcon
	assertType = "isIcon"
	params = 1

	result(var/a)
		return isicon(a)

/**
 * Asserts that a is an /icon
 */
zen/proc/assertIsIcon(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isIcon(description, a)
	thisAssertion.exec(description, a)
		