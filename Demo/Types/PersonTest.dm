
// Expected pass
zen/person
	hidden= 1
	test()
		var/person/lisa = zen.mock(/mock/person/Lisa)

		zen.assertEquals(
			"person.description() prints accurately",
			lisa.description(), 
			"name: lisa, age: 35"
		)

// Expected fail
zen/person_fail/
	hidden= 1
	
	test()
		var/person/lisa = zen.mock(/mock/person/Lisa)
		
		zen.assertEquals(
			"person.description() prints accurately",
			lisa.description(), 
			"name: lisa, age: 25"
		)

// Expected exception
zen/person_exception
	hidden = 1
	
	test()
		zen.assertEquals(
			"person.description() prints accurately",
			list(1)[2], 
			"name: lisa, age: 25"
		)



