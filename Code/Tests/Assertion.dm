zen/assertion_tests
	hidden = 0

	/**
	 * Test all the assertions that zen supports
	 */
	test()
		/**
		 * Is<Something> and IsNot<something>
		 */
		zen.assertIsEquals("Is equals", 1, 1)
		zen.assertIsNotEquals("Is not equals 1 2", 1, 2)

		zen.assertIsFalse("Is false", 0)
		zen.assertIsFalse("Is not false", 0)

		zen.assertIsArea("Is area", new/area())
		zen.assertIsNotArea("Is not area", new/mob())

		zen.assertIsFile("Is file", 'Code/zen.dm')
		zen.assertIsNotFile("Is not file", "Code/zen.dm") // Double quotes, it's a string
		
		zen.assertIsIcon("Is icon", new/icon())
		zen.assertIsNotIcon("Is not icon", new/mob())

		zen.assertIsInf("Is inf", 1.#INF)
		zen.assertIsNotInf("Is not inf", 1)

		zen.assertIsLoc("Is loc mob", new/mob())
		zen.assertIsLoc("Is loc obj", new/obj())
		zen.assertIsNotLoc("Is not loc", new/datum())

		zen.assertIsMob("Is mob", new/mob())
		zen.assertIsNotMob("Is not mob", new/obj())

		zen.assertIsMovable("Is movable mob", new/mob())
		zen.assertIsMovable("Is movable obj", new/obj())
		zen.assertIsNotMovable("Is movable obj", new/turf())

		var/nan = json_decode("NaN")
		zen.assertIsNan("Is NaN", nan)
		zen.assertIsNotNan("Is not NaN", 1)

		zen.assertIsNull("Is null", null)
		zen.assertIsNotNull("Is not null", 1)	

		zen.assertIsNumber("Is number", 1)
		zen.assertIsNotNumber("Is not number", "1")
		
		zen.assertIsObj("Is object", new/obj())
		zen.assertIsNotObj("Is not object", new/mob())
		
		zen.assertIsPath("Is path", /mob)
		zen.assertIsNotPath("Is not path", "/mob") // Text not path

		zen.assertIsText("Is text", "abc")
		zen.assertIsNotText("Is not text", "abc")

		zen.assertIsType("Is type", new/mob(), /mob)
		zen.assertIsNotType("Is not type", new/mob(), /obj)

		var/someVar = 1
		var/pointer = &someVar
		someVar += 1 // Stops unused variable warning
		zen.assertIsPointer("Is pointer", pointer)
		zen.assertIsPointer("Is not pointer", someVar)

		/**
		 * Greater than
		 */
		zen.assertIsGreaterThan("Is greater than", 2, 1)
		zen.assertIsGreaterThanOrEquals("Is greater than or equals <greater case>", 2, 1)
		zen.assertIsGreaterThanOrEquals("Is greateer than or equals <equals case>", 2, 2)

		/**
		 * Less than
		 */
		zen.assertIsLessThan("Is less than", 1, 2)
		zen.assertIsLessThanOrEquals("Is less than or equals <less than case>", 1, 2)
		zen.assertIsLessThanOrEquals("Is less than or equals <equals case>", 2, 2)

		/**
		 * Lists
		 */
		zen.assertListContains("List contains", list("a","b"), "b")
		zen.assertListNotContains("List not contains", list(1,2), 3)

		zen.assertListIsEmpty("List is empty", list())
		zen.assertListIsNotEmpty("List is not empty", list(1))

		zen.assertListEndsWith("List ends with", list("a","b"), "b")
		zen.assertListNotEndsWith("List not ends with", list("a","b"), "a")

		zen.assertListStartsWith("List starts with", list(1,2), 1)
		zen.assertListNotStartsWith("List not starts with", list(1,2), 2)


		/**
		 * Text
		 */
		zen.assertTextContains("Text contains", "fox")

		zen.assertTextEndsWith("Text ends with", "lazy fox jumps", "jumps")
		zen.assertTextNotEndsWith("Text not ends with", "lazy fox jumps", "lazy")

		zen.assertTextStartsWith("Text starts with", "lazy fox jumps", "lazy")
		zen.assertTextNotStartsWith("Text starts with", "lazy fox jumps", "jumps")

		/**
		 * Length, lists and text
		 */
		zen.assertIsLength("Is length text", "abc", 3)
		zen.assertIsLength("Is length list", list("a", "b", "c"), 3)
