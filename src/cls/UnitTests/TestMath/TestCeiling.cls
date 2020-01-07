Include Math

Class UnitTests.TestMath.TestCeiling Extends %UnitTest.TestCase
{

Method TestNegative()
{
	Set tResults=##class(Math.Math).Ceiling(-183.43)
	Set tExpected=-183
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestPositive()
{
	Set tResults=##class(Math.Math).Ceiling(8394.6331)
	Set tExpected=8395
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestOverHalf()
{
	Set tResults=##class(Math.Math).Ceiling(16.89)
	Set tExpected=17
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestUnderHalf()
{
	Set tResults=##class(Math.Math).Ceiling(16.29)
	Set tExpected=17
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestMacro()
{
	Set tResults=$$$Ceiling(18374.17453)
	Set tExpected=18375
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestEmpty()
{
	Try {
		Set tResults=##class(Math.Math).Ceiling()
	} Catch ex {
		Set tResults=$SYSTEM.Status.GetErrorText(ex.AsStatus())
	}
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

}
