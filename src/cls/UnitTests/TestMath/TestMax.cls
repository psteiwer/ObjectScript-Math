Include Math

Class UnitTests.TestMath.TestMax Extends %UnitTest.TestCase
{

Method TestOneNumber()
{
	Set tResults=##class(Math.Math).Max(58372)
	Set tExpected=58372
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestTwoNumbers()
{
	Set tResults=##class(Math.Math).Max(1847,9428)
	Set tExpected=9428
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestThreeNumbers()
{
	Set tResults=##class(Math.Math).Max(4748,10394,8374)
	Set tExpected=10394
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestOneNegative()
{
	Set tResults=##class(Math.Math).Max(4748,-10394,8374)
	Set tExpected=8374
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestAllNegative()
{
	Set tResults=##class(Math.Math).Max(-4748,-10394,-8374)
	Set tExpected=-4748
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestEmpty()
{
	Try {
		Set tResults=##class(Math.Math).Max()
	} Catch ex {
		Set tResults=$SYSTEM.Status.GetErrorText(ex.AsStatus())
	}
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

Method TestMacro()
{
	Set tResults=$$$Max(15,32,91)
	Set tExpected=91
	Do $$$AssertEquals(tResults,tExpected,tExpected_" = "_tResults)
}

}
