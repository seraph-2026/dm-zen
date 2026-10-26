
/**
 * Raw assertion logic
 */
zen_assertion/isIcon
	assertType = "isIcon"

	result(var/a)
		return isicon(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsIcon(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isIcon(description, a, b)
	thisAssertion.exec(description, a, b)
		