
// Expected pass
zen/person/test()

	var/person/lisa = zen.mock(/mock/person/Lisa)

	zen.assertIsEquals(
		"Lisa's description prints accurately",
		lisa.description(),
		"name: lisa, age: 35"
	)

// Expected fail
zen/person_fail/test()

	var/person/lisa = zen.mock(/mock/person/Lisa)

	zen.assertIsEquals(
		"Expected failure. Lisa's description won't print accurately",
		lisa.description(),
		"name: lisa, age: 25"
	)

// Expected exception
zen/person_exception/test()

	zen.assertIsEquals(
		"Expected exception. Lisa's description will have an exception",
		list(1)[2],
		"name: lisa, age: 25"
	)



