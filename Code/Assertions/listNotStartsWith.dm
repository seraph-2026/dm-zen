
/**
 * Raw assertion logic
 */
zen_assertion/listNotStartsWith
	assertType = "listNotStartsWith"
	params = 2
	aName = "List"
	bName = "Item"

	result(var/list/a, var/b)
		return !a[1] == b

/**
 * Asserts list a does not start with b
 */
zen/proc/assertListNotStartsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/listNotStartsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		