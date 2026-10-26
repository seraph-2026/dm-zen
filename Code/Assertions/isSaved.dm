
/**
 * Raw assertion logic
 */
zen_assertion/isSaved
	assertType = "isSaved"

	result(var/a)
		return issaved(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsSaved(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isSaved(description, a, b)
	thisAssertion.exec(description, a, b)
		