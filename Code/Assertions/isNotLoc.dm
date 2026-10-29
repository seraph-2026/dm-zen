
/**
 * Raw assertion logic
 */
zen_assertion/isNotLoc
	assertType = "isNotLoc"
	params = 1
	aName = "Value"

	result(var/a)
		return !isloc(a)

/**
 * Asserts a is not loc
 */
zen/proc/assertIsNotLoc(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotLoc(description, a)
	thisAssertion.exec(description, a)
		