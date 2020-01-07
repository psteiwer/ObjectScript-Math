Include Math

Class UnitTests.TestMath.TestFloor Extends %UnitTest.TestCase
{

Method TestNegative()
{
	Set tResults=##class(Math.Math).Floor(-183.43)
	Set tExpected=-184
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestPositive()
{
	Set tResults=##class(Math.Math).Floor(8394.6331)
	Set tExpected=8394
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestOverHalf()
{
	Set tResults=##class(Math.Math).Floor(16.89)
	Set tExpected=16
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestUnderHalf()
{
	Set tResults=##class(Math.Math).Floor(16.29)
	Set tExpected=16
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestMacro()
{
	Set tResults=$$$Floor(18374.17453)
	Set tExpected=18374
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestEmpty()
{
	Try {
		Set tResults=##class(Math.Math).Floor()
	} Catch ex {
		Set tResults=$SYSTEM.Status.GetErrorText(ex.AsStatus())
	}
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

}
