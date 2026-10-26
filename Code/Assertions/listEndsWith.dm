
/**
 * Raw assertion logic
 */
zen_assertion/listEndsWith
	assertType = "listEndsWith"
	params = 2
	aName = "List"
	bName = "Search item"

	result(var/list/a, var/b)
		return a[a.len] == b

/**
 * Asserts list a ends with b
 */
zen/proc/assertListEndsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/listEndsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		