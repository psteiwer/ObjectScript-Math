Class UnitTests.TestUtils.TestValidateRange Extends %UnitTest.TestCase
{

Method TestAllNull()
{
    Set tResult=##class(Math.Utils).ValidateRange()
    Set tResult=$SYSTEM.Status.GetErrorText(tResult)
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

Method TestpValueNull()
{
    Set tResult=##class(Math.Utils).ValidateRange(,2,8)
    Set tResult=$SYSTEM.Status.GetErrorText(tResult)
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

Method TestpMinNull()
{
    Set tResult=##class(Math.Utils).ValidateRange(18,,49)
    Set tResult=$SYSTEM.Status.GetErrorText(tResult)
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

Method TestpMaxNull()
{
    Set tResult=##class(Math.Utils).ValidateRange(14,2)
    Set tResult=$SYSTEM.Status.GetErrorText(tResult)
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

Method TestPositiveValue()
{
    Set tResult=##class(Math.Utils).ValidateRange(14,1,20)
	Set tExpected=$$$OK
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

Method TestNegativeValue()
{
    Set tResult=##class(Math.Utils).ValidateRange(-15,-20,-10)
	Set tExpected=$$$OK
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

Method TestTooLow()
{
    Set tResult=##class(Math.Utils).ValidateRange(20,50,100)
    Set tResult=$SYSTEM.Status.GetErrorText(tResult)
	Set tExpected="ERROR #5001: Value out of range"
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

Method TestTooHigh()
{
    Set tResult=##class(Math.Utils).ValidateRange(100,0,20)
    Set tResult=$SYSTEM.Status.GetErrorText(tResult)
	Set tExpected="ERROR #5001: Value out of range"
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

}
