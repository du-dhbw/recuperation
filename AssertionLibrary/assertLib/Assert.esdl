package assertLib;

/**
 * Interface to google-test framework with numeric assertion functions that verify the behavior of a class state or 
 * function against the expected behavior.
 * <p>
 * The assertions come in pairs that test the same thing but have different effects on the current function. 
 * <li> assert* versions generate fatal failures when they fail, and abort the current function.
 * <li> expect* versions generate nonfatal failures, which don't abort the current function.
 * <p>
 * Generic representation types are handled, with integer (sint32) and unsigned integer (uint32) assertion added beside of the
 * default real type check.
 */
@include("Etas_Ascet_Assertion.h")
static class Assert using Impl {
	
	/* ***********************************************************************************************************
	 * assert* versions generate fatal failures when they fail, and abort the current function
	 * Use assert* if it doesn't make sense to continue when the assertion in question fails.
	 * ***********************************************************************************************************/
	 
	/**
	 * Basic assertion that verifies aCondition is true.
	 * The method yields a fatal failure and returns from the current function
	 */
	extern public void assertTrue(boolean aCondition);
	
	/**
	 * Basic assertion that verifies aCondition is false.
	 * The method yields a fatal failure and returns from the current function
	 */
	extern public void assertFalse(boolean aCondition);
	
	/**
	 * Binary comparison that verifies two real values are equal (value == expected). The method yields a fatal failure and 
	 * returns from the current function. 
	 * <p>
	 * Due to round-off errors, it is very unlikely that two floating-points will match exactly. Therefore,
	 * it is better to compare by a fixed relative error bound, except for values close to 0 due to the lost of precision.
	 * <p>
	 * See also:
	 * <li> assertFloatEqual(value, expected)
	 * <li> assertDoubleEqual(value, expected)
	 * <li> assertNear(value, expected, abs_error)
	 * <p>
	 */
	extern public void assertEqual(real value, real expected);
	
	/**
	 * Binary comparison that verifies two integer values are equal (value == expected).
	 * The method yields a fatal failure and returns from the current function.
	 */	
	extern public void assertIntEqual(integer value, integer expected);
	
	/**
	 * Binary comparison that verifies two unsigned integer values are equal (value == expected).
	 * The method yields a fatal failure and returns from the current function.
	 */	
	extern public void assertUIntEqual(integer value, integer expected);
	
	/**
	 * Floating-point comparison that verifies two float values are almost equal (abs(value - expected) <= FLT_EPSILON.
	 * FLT_EPSILON is set to 4ULPs (Units in the Last Place). The method yields a fatal failure and returns from the current function.
	 * <p>
	 * To select a specific error bound, use assertNear(value, expected, abs_error)
	 */	
	extern public void assertFloatEqual(real value, real expected);
	
	/**
	 * Floating-point comparison that verifies two double values are almost equal (abs(value - expected) <= FLT_EPSILON).
	 * FLT_EPSILON is set to 4ULPs (Units in the Last Place). The method yields a fatal failure and returns from the current function.
	 * <p>
	 * To select a specific error bound, use assertNear(value, expected, abs_error)
	 */	
	extern public void assertDoubleEqual(real value, real expected);
	
	/**
	 * Floating-point comparison that verifies two double values are almost equal with the difference does not exceed the given absolute error.
	 * The method yields a fatal failure and returns from the current function.
	 * <p>
	 * If the system default error bound shall be selected, use 
	 * <li>assertFloatEqual(value, expected)
	 * <li>assertDoubleEqual(value, expected)
	 */	
	extern public void assertNear(real value, real expected, real abs_error);
	
	/**
	 * Binary comparison that verifies two real values are not equal (value != expected).
	 * The method yields a fatal failure and returns from the current function.
	 */	
	extern public void assertNotEqual(real value, real expected);
	
	/**
	 * Binary comparison that verifies two integer values are not equal (value != expected).
	 * The method yields a fatal failure and returns from the current function.
	 */	
	extern public void assertIntNotEqual(integer value, integer expected);
	
	/**
	 * Binary comparison that verifies two unsigned integer values are not equal (value != expected).
	 * The method yields a fatal failure and returns from the current function.
	 */	
	extern public void assertUIntNotEqual(integer value, integer expected);

	/**
	 * Binary comparison that verifies a real value is less than expected (value < expected).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertLessThan(real value, real expected);

	/**
	 * Binary comparison that verifies an integer value is less than expected (value < expected).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertIntLessThan(integer value, integer expected);

	/**
	 * Binary comparison that verifies an unsigned integer value is less than expected (value < expected).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertUIntLessThan(integer value, integer expected);
	
	/**
	 * Binary comparison that verifies a real value is less than or equal to expected (value <= expected).
	 * The method yields a fatal failure and returns from the current function.
	 */	
	extern public void assertLessThanOrEqual(real value, real expected);
	
	/**
	 * Binary comparison that verifies an integer value is less than or equal to expected (value <= expected).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertIntLessThanOrEqual(integer value, integer expected);

	/**
	 * Binary comparison that verifies an unsigned integer value is less than or equal to expected (value <= expected).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertUIntLessThanOrEqual(integer value, integer expected);
	
	/**
	 * Binary comparison that verifies a real value is greater than expected (value > expected).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertGreaterThan(real value, real expected);
	
	/**
	 * Binary comparison that verifies an integer value is greater than expected (value <= expected).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertIntGreaterThan(integer value, integer expected);

	/**
	 * Binary comparison that verifies an unsigned integer value is greater than expected (value <= expected).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertUIntGreaterThan(integer value, integer expected);

	/**
	 * Binary comparison that verifies a real value is greater than or equal to expected (value >= expected).
	 * The method yields a fatal failure and returns from the current function.
	 */			
	extern public void assertGreaterThanOrEqual(real value, real expected);
	
	/**
	 * Binary comparison that verifies an integer value is greater than or equal to expected (value >= expected).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertIntGreaterThanOrEqual(integer value, integer expected);

	/**
	 * Binary comparison that verifies an unsigned integer value is greater than or equal to expected (value >= expected).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertUIntGreaterThanOrEqual(integer value, integer expected);
	
	/**
	 * Numeric comparison that verifies a real value is in expected range (left <= value <= right).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertBetween(real value, real left, real right);
	
	/**
	 * Numeric comparison that verifies an integer value is in expected range (left <= value <= right).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertIntBetween(integer value, integer left, integer right);
	
	/**
	 * Numeric comparison that verifies an unsigned integer value is in expected range (left <= value <= right).
	 * The method yields a fatal failure and returns from the current function.
	 */		
	extern public void assertUIntBetween(integer value, integer left, integer right);
	
	/* ***********************************************************************************************************
	 * EXPECT_* versions generate nonfatal failures, which don't abort the current function. 
	 * Usually EXPECT_* are preferred, as they allow more than one failure to be reported in a test.
	 * ***********************************************************************************************************/
	 
	/**
	 * Basic expect assertion that verifies aCondition is true.
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */	
	extern public void expectTrue(boolean aCondition);

	/**
	 * Basic expect assertion that verifies aCondition is false.
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */
	extern public void expectFalse(boolean aCondition);

	/**
	 * Binary comparison that verifies two real values are equal (value == expected). The method yields a nonfatal failure, 
	 * allowing the function to continue running.
	 * <p>
	 * Due to round-off errors, it is very unlikely that two floating-points will match exactly. Therefore,
	 * it is better to compare by a fixed relative error bound, except for values close to 0 due to the lost of precision.
	 * <p>
	 * See also:
	 * <li> expectFloatEqual(value, expected)
	 * <li> expectDoubleEqual(value, expected)
	 * <li> expectNear(value, expected, abs_error)
	 * <p>
	 */
	extern public void expectEqual(real value, real expected);

	/**
	 * Binary comparison that verifies two integer values are equal (value == expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */	
	extern public void expectIntEqual(integer value, integer expected);

	/**
	 * Binary comparison that verifies two unsinged integer values are equal (value == expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */	
	extern public void expectUIntEqual(integer value, integer expected);

	/**
	 * Floating-point comparison that verifies two float values are almost equal (abs(value - expected) <= FLT_EPSILON.
	 * FLT_EPSILON is set to 4ULPs (Units in the Last Place). The method yields a nonfatal failure, allowing the function to continue running.
	 * <p>
	 * To select a specific error bound, use expectNear(value, expected, abs_error)
	 */	
	extern public void expectFloatEqual(real value, real expected);
	
	/**
	 * Floating-point comparison that verifies two double values are almost equal (abs(value - expected) <= FLT_EPSILON).
	 * FLT_EPSILON is set to 4ULPs (Units in the Last Place). The method yields a nonfatal failure, allowing the function to continue running.
	 * <p>
	 * To select a specific error bound, use expectNear(value, expected, abs_error)
	 */	
	extern public void expectDoubleEqual(real value, real expected);
	
	/**
	 * Floating-point comparison that verifies two double values are almost equal with the difference does not exceed the given absolute error.
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 * <p>
	 * If the system default error bound shall be selected, use 
	 * <li>expectFloatEqual(value, expected)
	 * <li>expectDoubleEqual(value, expected)
	 */	
	extern public void expectNear(real value, real expected, real abs_error);
	
	/**
	 * Binary comparison that verifies two real values are not equal (value != expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */	
	extern public void expectNotEqual(real value, real expected);
	
	/**
	 * Binary comparison that verifies two integer values are not equal (value != expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */	
	extern public void expectIntNotEqual(integer value, integer expected);
	
	/**
	 * Binary comparison that verifies two unsigned integer values are not equal (value != expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */	
	extern public void expectUIntNotEqual(integer value, integer expected);

	/**
	 * Binary comparison that verifies a real value is less than expected (value < expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectLessThan(real value, real expected);

	/**
	 * Binary comparison that verifies an integer value is less than expected (value < expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectIntLessThan(integer value, integer expected);

	/**
	 * Binary comparison that verifies an unsigned integer value is less than expected (value < expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectUIntLessThan(integer value, integer expected);
	
	/**
	 * Binary comparison that verifies a real value is less than or equal to expected (value <= expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */	
	extern public void expectLessThanOrEqual(real value, real expected);
	
	/**
	 * Binary comparison that verifies an integer value is less than or equal to expected (value <= expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectIntLessThanOrEqual(integer value, integer expected);

	/**
	 * Binary comparison that verifies an unsigned integer value is less than or equal to expected (value <= expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectUIntLessThanOrEqual(integer value, integer expected);
	
	/**
	 * Binary comparison that verifies a real value is greater than expected (value > expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectGreaterThan(real value, real expected);
	
	/**
	 * Binary comparison that verifies an integer value is greater than expected (value <= expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectIntGreaterThan(integer value, integer expected);

	/**
	 * Binary comparison that verifies an unsigned integer value is greater than expected (value <= expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectUIntGreaterThan(integer value, integer expected);

	/**
	 * Binary comparison that verifies a real value is greater than or equal to expected (value >= expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */			
	extern public void expectGreaterThanOrEqual(real value, real expected);
	
	/**
	 * Binary comparison that verifies an integer value is greater than or equal to expected (value >= expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectIntGreaterThanOrEqual(integer value, integer expected);

	/**
	 * Binary comparison that verifies an unsigned integer value is greater than or equal to expected (value >= expected).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectUIntGreaterThanOrEqual(integer value, integer expected);
	
	/**
	 * Numeric comparison that verifies a real value is in expected range (left <= value <= right).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectBetween(real value, real left, real right);
	
	/**
	 * Numeric comparison that verifies an integer value is in expected range (left <= value <= right).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectIntBetween(integer value, integer left, integer right);
	
	/**
	 * Numeric comparison that verifies an unsigned integer value is in expected range (left <= value <= right).
	 * The method yields a nonfatal failure, allowing the function to continue running.
	 */		
	extern public void expectUIntBetween(integer value, integer left, integer right);
	
	representation Impl {
	    represent 
	    	assertEqual.expected, assertEqual.value, 
	    	assertDoubleEqual.expected, assertDoubleEqual.value, 
	    	assertNear.expected, assertNear.value, assertNear.abs_error,
	    	assertNotEqual.expected, assertNotEqual.value, 
	    	assertLessThan.expected, assertLessThan.value, 
	    	assertLessThanOrEqual.expected, assertLessThanOrEqual.value, 
	    	assertGreaterThan.expected, assertGreaterThan.value, 
	    	assertGreaterThanOrEqual.expected, assertGreaterThanOrEqual.value, 
	    	assertBetween.left, assertBetween.right, assertBetween.value,
	    	expectEqual.expected, expectEqual.value, 
	    	expectDoubleEqual.expected, expectDoubleEqual.value, 
	    	expectNear.expected, expectNear.value, expectNear.abs_error,
	    	expectNotEqual.expected, expectNotEqual.value, 
	    	expectLessThan.expected, expectLessThan.value, 
	    	expectLessThanOrEqual.expected, expectLessThanOrEqual.value, 
	    	expectGreaterThan.expected, expectGreaterThan.value, 
	    	expectGreaterThanOrEqual.expected, expectGreaterThanOrEqual.value, 
	    	expectBetween.left, expectBetween.right, expectBetween.value
	    using {
	    	datatype = float64;
	    };
	    represent 
	    	assertFloatEqual.expected, assertFloatEqual.value, 
	    	expectFloatEqual.expected, expectFloatEqual.value
	    using {
	    	datatype = float32;
	    };
	    represent 
	    	assertIntEqual.expected, assertIntEqual.value, 
	    	assertIntNotEqual.expected, assertIntNotEqual.value, 
	    	assertIntLessThan.expected, assertIntLessThan.value, 
	    	assertIntLessThanOrEqual.expected, assertIntLessThanOrEqual.value, 
	    	assertIntGreaterThan.expected, assertIntGreaterThan.value, 
	    	assertIntGreaterThanOrEqual.expected, assertIntGreaterThanOrEqual.value, 
	    	assertIntBetween.left, assertIntBetween.right, assertIntBetween.value,
	    	expectIntEqual.expected, expectIntEqual.value, 
	    	expectIntNotEqual.expected, expectIntNotEqual.value, 
	    	expectIntLessThan.expected, expectIntLessThan.value, 
	    	expectIntLessThanOrEqual.expected, expectIntLessThanOrEqual.value, 
	    	expectIntGreaterThan.expected, expectIntGreaterThan.value, 
	    	expectIntGreaterThanOrEqual.expected, expectIntGreaterThanOrEqual.value, 
	    	expectIntBetween.left, expectIntBetween.right, expectIntBetween.value
	    using {
	    	datatype = sint32;
	    };
	    represent 
	    	assertUIntEqual.expected, assertUIntEqual.value, 
	    	assertUIntNotEqual.expected, assertUIntNotEqual.value, 
	    	assertUIntLessThan.expected, assertUIntLessThan.value, 
	    	assertUIntLessThanOrEqual.expected, assertUIntLessThanOrEqual.value, 
	    	assertUIntGreaterThan.expected, assertUIntGreaterThan.value, 
	    	assertUIntGreaterThanOrEqual.expected, assertUIntGreaterThanOrEqual.value, 
	    	assertUIntBetween.left, assertUIntBetween.right, assertUIntBetween.value,
	    	expectUIntEqual.expected, expectUIntEqual.value, 
	    	expectUIntNotEqual.expected, expectUIntNotEqual.value, 
	    	expectUIntLessThan.expected, expectUIntLessThan.value, 
	    	expectUIntLessThanOrEqual.expected, expectUIntLessThanOrEqual.value, 
	    	expectUIntGreaterThan.expected, expectUIntGreaterThan.value, 
	    	expectUIntGreaterThanOrEqual.expected, expectUIntGreaterThanOrEqual.value, 
	    	expectUIntBetween.left, expectUIntBetween.right, expectUIntBetween.value
	    using {
	    	datatype = uint32;
	    };
	    @symbol("ASSERT_TRUE")
	    represent assertTrue;
	    @symbol("ASSERT_FALSE")
		represent assertFalse;
	    @symbol("ASSERT_EQ")
	    represent assertEqual;
	    @symbol("ASSERT_INT_EQ")
		represent assertIntEqual;
		@symbol("ASSERT_UINT_EQ")
		represent assertUIntEqual;
		@symbol("ASSERT_FLOAT_EQ")
		represent assertFloatEqual;
		@symbol("ASSERT_DOUBLE_EQ")
		represent assertDoubleEqual;
		@symbol("ASSERT_NEAR")
		represent assertNear;
		@symbol("ASSERT_NE")
		represent assertNotEqual;
		@symbol("ASSERT_INT_NE")
		represent assertIntNotEqual;
		@symbol("ASSERT_UINT_NE")
		represent assertUIntNotEqual;
		@symbol("ASSERT_LT")
		represent assertLessThan;
		@symbol("ASSERT_INT_LT")
		represent assertIntLessThan;
		@symbol("ASSERT_UINT_LT")
		represent assertUIntLessThan;
		@symbol("ASSERT_LE")
		represent assertLessThanOrEqual;
		@symbol("ASSERT_INT_LE")
		represent assertIntLessThanOrEqual;
		@symbol("ASSERT_UINT_LE")
		represent assertUIntLessThanOrEqual;
		@symbol("ASSERT_GT")
		represent assertGreaterThan;
		@symbol("ASSERT_INT_GT")
		represent assertIntGreaterThan;
		@symbol("ASSERT_UINT_GT")
		represent assertUIntGreaterThan;
		@symbol("ASSERT_GE")
		represent assertGreaterThanOrEqual;
		@symbol("ASSERT_INT_GE")
		represent assertIntGreaterThanOrEqual;
		@symbol("ASSERT_UINT_GE")
		represent assertUIntGreaterThanOrEqual;
		@symbol("ASSERT_BETWEEN")
		represent assertBetween;
		@symbol("ASSERT_INT_BETWEEN")
		represent assertIntBetween;
		@symbol("ASSERT_UINT_BETWEEN")
		represent assertUIntBetween;
		@symbol("EXPECT_TRUE")
		represent expectTrue;
		@symbol("EXPECT_FALSE")
		represent expectFalse;
		@symbol("EXPECT_EQ")
		represent expectEqual;
		@symbol("EXPECT_INT_EQ")
		represent expectIntEqual;
		@symbol("EXPECT_UINT_EQ")
		represent expectUIntEqual;
		@symbol("EXPECT_FLOAT_EQ")
		represent expectFloatEqual;
		@symbol("EXPECT_DOUBLE_EQ")
		represent expectDoubleEqual;
		@symbol("EXPECT_NEAR")
		represent expectNear;
		@symbol("EXPECT_NE")
		represent expectNotEqual;
		@symbol("EXPECT_INT_NE")
		represent expectIntNotEqual;
		@symbol("EXPECT_UINT_NE")
		represent expectUIntNotEqual;
		@symbol("EXPECT_LT")
		represent expectLessThan;
		@symbol("EXPECT_INT_LT")
		represent expectIntLessThan;
		@symbol("EXPECT_UINT_LT")
		represent expectUIntLessThan;
		@symbol("EXPECT_LE")
		represent expectLessThanOrEqual;
		@symbol("EXPECT_INT_LE")
		represent expectIntLessThanOrEqual;
		@symbol("EXPECT_UINT_LE")
		represent expectUIntLessThanOrEqual;
		@symbol("EXPECT_GT")
		represent expectGreaterThan;
		@symbol("EXPECT_INT_GT")
		represent expectIntGreaterThan;
		@symbol("EXPECT_UINT_GT")
		represent expectUIntGreaterThan;	
		@symbol("EXPECT_GE")
		represent expectGreaterThanOrEqual;	
		@symbol("EXPECT_INT_GE")
		represent expectIntGreaterThanOrEqual;
		@symbol("EXPECT_UINT_GE")
		represent expectUIntGreaterThanOrEqual;	
		@symbol("EXPECT_BETWEEN")
		represent expectBetween;	
		@symbol("EXPECT_INT_BETWEEN")
		represent expectIntBetween;	
		@symbol("EXPECT_UINT_BETWEEN")
		represent expectUIntBetween;
	}
	
}