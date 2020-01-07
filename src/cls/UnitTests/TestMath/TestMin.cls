Include Math

Class UnitTests.TestMath.TestMin Extends %UnitTest.TestCase
{

Method TestOneNumber()
{
	Set tResults=##class(Math.Math).Min(58372)
	Set tExpected=58372
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestTwoNumbers()
{
	Set tResults=##class(Math.Math).Min(1847,9428)
	Set tExpected=1847
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestThreeNumbers()
{
	Set tResults=##class(Math.Math).Min(4748,10394,8374)
	Set tExpected=4748
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestOneNegative()
{
	Set tResults=##class(Math.Math).Min(4748,10394,-8374)
	Set tExpected=-8374
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestAllNegative()
{
	Set tResults=##class(Math.Math).Min(-4748,-10394,-8374)
	Set tExpected=-10394
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestEmpty()
{
	Try {
		Set tResults=##class(Math.Math).Min()
	} Catch ex {
		Set tResults=$SYSTEM.Status.GetErrorText(ex.AsStatus())
	}
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestMacro()
{
	Set tResults=$$$Min(15,32,91)
	Set tExpected=15
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

}
