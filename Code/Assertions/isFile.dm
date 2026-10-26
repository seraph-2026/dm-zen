
/**
 * Raw assertion logic
 */
zen_assertion/isFile
	assertType = "isFile"

	result(var/a)
		return isfile(a)

/**
 * Publicly accessible way to run the assertion
 */
zen/proc/assertIsFile(var/description, var/a, var/b)
	var/zen_assertion/thisAssertion = new/zen_assertion/isFile(description, a, b)
	thisAssertion.exec(description, a, b)
		