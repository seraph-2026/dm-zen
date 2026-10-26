
/**
 * Raw assertion logic
 */
zen_assertion/listNotContains
	assertType = "listNotContains"
	params = 2
	aName = "List"
	bName = "Search Item"

	result(var/list/a, var/b)
		return !a.Find(b)

/**
 * Asserts list a does not contain b
 */
zen/proc/assertListNotContains(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/listNotContains(description, a, b)
	thisAssertion.exec(description, a, b)
		