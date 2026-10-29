
/**
 * Raw assertion logic
 */
zen_assertion/listNotEndsWith
	assertType = "listNotEndsWith"
	params = 2
	aName = "List"
	bName = "Item"

	result(var/list/a, var/b)
		return !a[a.len] == b

/**
 * Asserts list a does not end with b
 */
zen/proc/assertListNotEndsWith(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/listNotEndsWith(description, a, b)
	thisAssertion.exec(description, a, b)
		