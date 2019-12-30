Class Math.Math
{

ClassMethod ValidateInput(pIntegers... As %Integer) As %Status
{
	Set tSC=$$$OK
	
	If '$Data(pIntegers) {
		Set tSC=$$$ERROR(5001,"Input must not be empty")
	}
	
	Quit tSC
}

ClassMethod LeastCommonMultiple(pIntegers... As %Integer) As %Integer
{
	Set tSC=##class(Math.Math).ValidateInput(pIntegers...)
	If $$$ISERR(tSC) $$$ThrowStatus(tSC)
	
	Set tRes=1
	Set tMax=0
	
	For tCounter=1:1:pIntegers {
		If pIntegers(tCounter)=0 {
			$$$ThrowStatus($$$ERROR(5001,"Cannot compute LeastCommonMultiple of 0"))
		} ElseIf pIntegers(tCounter)>tMax {
			Set tMax=pIntegers(tCounter)
		}
	}
	
	For tDivisor=2:1:tMax {
		Set tReset=0
		For tCounter=1:1:pIntegers {
			If ((pIntegers(tCounter)/tDivisor)=(pIntegers(tCounter)\tDivisor)) {
				Set pIntegers(tCounter)=pIntegers(tCounter)/tDivisor
				Set:'tReset tFactors=$i(tFactors)
				Set tFactors(tFactors)=tDivisor
				Set tReset=1
			}
		}
		Set:tReset tDivisor=1
	}
	
	For tCounter=1:1:tFactors {
		set tRes=tRes*tFactors(tCounter)
	}
	
	Quit tRes
}

ClassMethod LCM(pFactors...) As %Integer [ CodeMode = expression ]
{
	##class(Math.Math).LeastCommonMultiple(pFactors...)
}

}