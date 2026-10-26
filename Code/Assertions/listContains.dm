
/**
 * Raw assertion logic
 */
zen_assertion/listContains
	assertType = "listContains"

	result(var/list/a, var/b)
		return a.Find(b)

/**
 * Asserts list a contains b
 */
zen/proc/assertListContains(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/listContains(description, a, b)
	thisAssertion.exec(description, a, b)
		