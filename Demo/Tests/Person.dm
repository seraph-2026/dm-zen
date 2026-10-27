
// Expected pass
zen/person/test()

	var/person/lisa = zen.mock(/mock/person/Lisa)

	zen.assertEquals(
		"person.description() prints accurately",
		lisa.description(),
		"name: lisa, age: 35"
	)

// Expected fail
zen/person_fail/test()

	var/person/lisa = zen.mock(/mock/person/Lisa)

	zen.assertEquals(
		"person.description() prints accurately",
		lisa.description(),
		"name: lisa, age: 25"
	)

// Expected exception
zen/person_exception/test()

	zen.assertEquals(
		"person.description() prints accurately",
		list(1)[2],
		"name: lisa, age: 25"
	)



