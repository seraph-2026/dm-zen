
/**
 * Raw assertion logic
 */
zen_assertion/isNotFile
	assertType = "isNotFile"
	params = 1
	aName = "Value"

	result(var/a)
		return !isfile(a)

/**
 * Asserts that a is not a file ('fileName.extension')
 */
zen/proc/assertIsNotFile(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isNotFile(description, a)
	thisAssertion.exec(description, a)
		