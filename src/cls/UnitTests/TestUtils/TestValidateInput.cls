Class UnitTests.TestUtils.TestValidateInput Extends %UnitTest.TestCase
{

Method TestNull()
{
    Set tResult=##class(Math.Utils).ValidateInput()
    Set tResult=$SYSTEM.Status.GetErrorText(tResult)
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

Method TestEmptyString()
{
    Set tResult=##class(Math.Utils).ValidateInput("")
    Set tResult=$SYSTEM.Status.GetErrorText(tResult)
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

Method TestEmptyArray()
{
    Set tArray($I(tArray))=""
    Set tResult=##class(Math.Utils).ValidateInput(tArray...)
    Set tResult=$SYSTEM.Status.GetErrorText(tResult)
	Set tExpected="ERROR #5001: Input must not be empty"
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

Method TestNumber()
{
    Set tResult=##class(Math.Utils).ValidateInput(17)
	Set tExpected=$$$OK
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

Method TestArray()
{
    Set tArray($I(tArray))=17
    Set tResult=##class(Math.Utils).ValidateInput(tArray...)
	Set tExpected=$$$OK
	Do $$$AssertEquals(tResult,tExpected,tExpected_" = "_tResult)
}

}
