Include Math

Class UnitTests.TestMath.TestGreatestCommonDivisor Extends %UnitTest.TestCase
{

Method TestTwoNumbers()
{
	Set tResults=##class(Math.Math).GreatestCommonDivisor(252,105)
	Set tExpected=21
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestThreeNumbers()
{
	Set tResults=##class(Math.Math).GreatestCommonDivisor(8,40,100)
	Set tExpected=4
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestTwoNumbersWithOne()
{
	Set tResults=##class(Math.Math).GreatestCommonDivisor(1,15)
	Set tExpected=1
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestThreeNumbersWithOne()
{
	Set tResults=##class(Math.Math).GreatestCommonDivisor(1,8,15)
	Set tExpected=1
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestZero()
{
	Try {
		Set tResults=##class(Math.Math).GreatestCommonDivisor(0,8)
	} Catch ex {
		Set tResults=$SYSTEM.Status.GetErrorText(ex.AsStatus())
	}
	Set tExpected="ERROR #5001: Cannot compute GreatestCommonDivisor of 0"
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestEmpty()
{
	Try {
		Set tResults=##class(Math.Math).GreatestCommonDivisor()
	} Catch ex {
		Set tResults=$SYSTEM.Status.GetErrorText(ex.AsStatus())
	}
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestShortMethod()
{
	Set tResults=##class(Math.Math).GCD(8,40,100)
	Set tExpected=4
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestLongMacro()
{
	Set tResults=$$$GreatestCommonDivisor(8,40,100)
	Set tExpected=4
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestShortMacro()
{
	Set tResults=$$$GCD(8,40,100)
	Set tExpected=4
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

}
