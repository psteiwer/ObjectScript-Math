Class Math.Utils
{

ClassMethod ValidateInput(pIntegers... As %Integer) As %Status
{
	Set tSC=$$$OK
	
	If ('$Data(pIntegers))||(($Data(pIntegers))&&(pIntegers(1)="")) {
		Set tSC=$$$ERROR(5001,"Input must not be empty")
	}
	
	Quit tSC
}

}
