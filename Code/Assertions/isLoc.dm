
/**
 * Raw assertion logic
 */
zen_assertion/isLoc
	assertType = "isLoc"
	params = 1

	result(var/a)
		return isloc(a)

/**
 * Asserts a is loc
 */
zen/proc/assertIsLoc(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isLoc(description, a)
	thisAssertion.exec(description, a)
		