zen/person/test()

	var/person/p = new/person()
	p.name = "lisa"
	p.age = 35
	
	zen.assertEquals(p.description(), "name: lisa, age: 35")

