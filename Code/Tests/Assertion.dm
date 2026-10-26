zen/assertion_tests
	hidden = 0

	/**
	 * Test all the assertions that zen supports
	 */
	test()
		zen.assertEquals("equals 1 1", 1, 1)
		zen.assertIsArea("isArea new/area()", new/area())
		zen.assertIsFile("isFile 'Code/zen.dm'", 'Code/zen.dm')
		zen.assertIsGreaterThan("isGreaterThan 2 1",2,1)
		zen.assertIsGreaterThanOrEquals("greaterThanOrEquals 2 1", 2, 1)
		zen.assertIsGreaterThanOrEquals("greaterThanOrEquals 2 2", 2, 2)
		zen.assertIsIcon("isIcon new/icon()", new/icon())
		zen.assertIsInf("isInf 1.#INF", 1.#INF)
		zen.assertIsLength("isLength \"abc\" 3", "abc", 3)
		zen.assertIsLength(@{"isLength list("a", "b", "c") 3"}, list("a", "b", "c"), 3)
		zen.assertIsLessThan("isLessThan 1 2", 1, 2)
		zen.assertIsLessThanOrEquals("isLessThanOrEquals 1 2", 1, 2)
		zen.assertIsLessThanOrEquals("isLessThanOrEquals 2 2", 2, 2)
		zen.assertIsList("isList", list())
		zen.assertIsLoc("isLoc /mob", new/mob().loc)
		zen.assertIsLoc("isLoc /obj", new/obj().loc)
		zen.assertIsMob("ismob new/mob()", new/mob())
		zen.assertIsMovable("ismovable new/mob()", new/mob())
		zen.assertIsMovable("ismovable new/obj()", new/obj())
		var/zero = 0
		zero += 5
		zero -= 5
		var/nan = zero / zero
		zen.assertIsNan("isNan 0 / 0", nan)
		zen.assertIsNotEquals("isNotEquals 1 2", 1, 2)
		zen.assertIsNotNull("isNotNull 1", 1)
		zen.assertIsNull("isNull null", null)
		zen.assertIsNumber("isNumber 1", 1)
		zen.assertIsObj("isObj new/obj()", new/obj())
		zen.assertIsPath("isPath /mob", /mob)
		var/someVar = 1
		var/pointer = someVar
		zen.assertIsPointer("isPointer", pointer)

		var/zen_mock_data/mockData = zen.mock(/mock/zen_mock_data)

		zen.assertIsSaved("isSaved mockData.normalVariable", issaved(mockData.normalVariable))
		zen.assertIsText("isText abc", "abc")
		zen.assertIsType("isType new/mob() /mob", new/mob(), /mob)
		zen.assertListContains(@{"listContains list("a","b") "b""}, list("a","b"), "b")
		zen.assertListEndsWith(@{"listEndsWith list("a","b") "b""}, list("a","b"), "b")
		zen.assertListIsEmpty(@{"listIsNotEmpty list(1)"}, list(1))
		zen.assertListNotContains(@{"listNotContains list(1,2), 3"}, list(1,2), 3)
		zen.assertListStartsWith(@{"listStartsWith list(1,2)"}, list(1,2), 1)
		zen.assertTextContains(@{"textContains "lazy fox jumps", "fox""}, "lazy fox jumps", "fox")
		zen.assertTextEndsWith(@{"textEndsWith "lazy fox jumps", "jumps""}, "lazy fox jumps", "jumps")
		zen.assertTextStartsWith(@{"textEndsWith "lazy fox jumps", "lazy""}, "lazy fox jumps", "lazy")