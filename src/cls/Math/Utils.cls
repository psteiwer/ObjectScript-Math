Class Math.Utils
{

/// This method will validate the input to confirm there are values to process</br>
/// <var>pIntegers</var> accepts a variable number of parameters</br>
/// If <var>pIntegers</var> has no data or subscript 1 has no data, it will return an error
ClassMethod ValidateInput(pIntegers... As %Integer) As %Status
{
	Set tSC=$$$OK
	
	If ('$Data(pIntegers))||(($Data(pIntegers))&&(pIntegers(1)="")) {
		Set tSC=$$$ERROR($$$GeneralError,"Input must not be empty")
	}
	
	Quit tSC
}

/// This method will check to see if pValue is within the range of pMin to pMax</br>
/// <var>pValue</var> is the value that is being evaluated</br>
/// <var>pMin</var> is the lowest value of the acceptable range</br>
/// <var>pMax</var> is the highest value of the acceptable range
ClassMethod ValidateRange(pValue As %Integer = "", pMin As %Integer = "", pMax As %Integer = "") As %Status
{
	Set tSC=$$$OK

    For tTest=pValue,pMin,pMax {
        Set tSC=##class(Math.Utils).ValidateInput(tTest)
        If $$$ISERR(tSC) Return tSC
    }
    
    If ((pValue<pMin)||(pValue>pMax)) {
		Set tSC=$$$ERROR($$$GeneralError,"Value out of range")
    }
	
	Quit tSC
}

}
