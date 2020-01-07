Include Math

Class UnitTests.TestMath.TestFactorial Extends %UnitTest.TestCase
{

Method TestSmall()
{
	Set tResults=##class(Math.Math).Factorial(6)
	Set tExpected=720
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestMax()
{
	Set tResults=##class(Math.Math).Factorial(23)
	Set tExpected=25852016738884976640000
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestTooLarge()
{
	Try {
		Set tResults=##class(Math.Math).Factorial(35)
	} Catch ex {
		Set tResults=$SYSTEM.Status.GetErrorText(ex.AsStatus())
	}
	Set tExpected="ERROR #5001: Value out of range"
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestTooSmall()
{
	Try {
		Set tResults=##class(Math.Math).Factorial(-35)
	} Catch ex {
		Set tResults=$SYSTEM.Status.GetErrorText(ex.AsStatus())
	}
	Set tExpected="ERROR #5001: Value out of range"
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestOne()
{
	Set tResults=##class(Math.Math).Factorial(1)
	Set tExpected=1
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestZero()
{
	Set tResults=##class(Math.Math).Factorial(0)
	Set tExpected=0
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestNegativeEven()
{
	Set tResults=##class(Math.Math).Factorial(-16)
	Set tExpected=-20922789888000
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestNegativeOdd()
{
	Set tResults=##class(Math.Math).Factorial(-15)
	Set tExpected=-1307674368000
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestEmpty()
{
	Try {
		Set tResults=##class(Math.Math).Factorial()
	} Catch ex {
		Set tResults=$SYSTEM.Status.GetErrorText(ex.AsStatus())
	}
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestMacro()
{
	Set tResults=$$$Factorial(16)
	Set tExpected=20922789888000
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

}
