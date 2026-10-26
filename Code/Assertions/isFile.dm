
/**
 * Raw assertion logic
 */
zen_assertion/isFile
	assertType = "isFile"
	params = 1

	result(var/a)
		return isfile(a)

/**
 * Asserts that a is a file ('fileName.extension')
 */
zen/proc/assertIsFile(var/description, var/a)
	var/zen_assertion/thisAssertion = new/zen_assertion/isFile(description, a)
	thisAssertion.exec(description, a)
		