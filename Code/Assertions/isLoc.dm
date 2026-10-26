
/**
 * Raw assertion logic
 */
zen_assertion/isLoc
	assertType = "isLoc"

	result(var/a)
		return isloc(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsLoc(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isLoc(description, a, b)
	thisAssertion.exec(description, a, b)
		