Class Math.Utils
{

ClassMethod ValidateInput(pIntegers... As %Integer) As %Status
{
	Set tSC=$$$OK
	
	If ('$Data(pIntegers))||(($Data(pIntegers))&&(pIntegers(1)="")) {
		Set tSC=$$$ERROR($$$GeneralError,"Input must not be empty")
	}
	
	Quit tSC
}

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
