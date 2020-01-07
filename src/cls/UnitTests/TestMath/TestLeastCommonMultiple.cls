Include Math

Class UnitTests.TestMath.TestLeastCommonMultiple Extends %UnitTest.TestCase
{

Method TestTwoNumbers()
{
	Set tResults=##class(Math.Math).LeastCommonMultiple(3,8)
	Set tExpected=24
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestThreeNumbers()
{
	Set tResults=##class(Math.Math).LeastCommonMultiple(7,3,8)
	Set tExpected=168
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestTwoNumbersWithOne()
{
	Set tResults=##class(Math.Math).LeastCommonMultiple(1,15)
	Set tExpected=15
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestThreeNumbersWithOne()
{
	Set tResults=##class(Math.Math).LeastCommonMultiple(1,8,15)
	Set tExpected=120
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestZero()
{
	Try {
		Set tResults=##class(Math.Math).LeastCommonMultiple(0,8)
	} Catch ex {
		Set tResults=$SYSTEM.Status.GetErrorText(ex.AsStatus())
	}
	Set tExpected="ERROR #5001: Cannot compute LeastCommonMultiple of 0"
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestLarge()
{
	Set tResults=##class(Math.Math).LeastCommonMultiple(58372,94382,38942)
	Set tExpected=53635460155492
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestEmpty()
{
	Try {
		Set tResults=##class(Math.Math).LeastCommonMultiple()
	} Catch ex {
		Set tResults=$SYSTEM.Status.GetErrorText(ex.AsStatus())
	}
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestShortMethod()
{
	Set tResults=##class(Math.Math).LCM(7,3,8)
	Set tExpected=168
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestLongMacro()
{
	Set tResults=$$$LeastCommonMultiple(15,32,91)
	Set tExpected=43680
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestShortMacro()
{
	Set tResults=$$$LCM(15,32,91)
	Set tExpected=43680
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

}
