
/**
 * Raw assertion logic
 */
zen_assertion/isLoc
	assertType = "isLoc"

	result(var/a)
		return isloc(a)

/**
 * Asserts a is a loc
 */
zen/proc/assertIsLoc(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isLoc(description, a)
	thisAssertion.exec(description, a)
		