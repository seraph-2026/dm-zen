
/**
 * Raw assertion logic
 */
zen_assertion/isSaved
	assertType = "isSaved"

	result(var/a)
		return issaved(a)

/**
 * Asserts a is saved
 */
zen/proc/assertIsSaved(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isSaved(description, a)
	thisAssertion.exec(description, a)
		