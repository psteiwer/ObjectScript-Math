Class Math.Math
{

ClassMethod LeastCommonMultiple(pIntegers... As %Integer) As %Integer
{
	Set tSC=##class(Math.Utils).ValidateInput(pIntegers...)
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

ClassMethod Max(pIntegers...) As %Integer
{
	Set tSC=##class(Math.Utils).ValidateInput(pIntegers...)
	If $$$ISERR(tSC) $$$ThrowStatus(tSC)
	
	Set tMax=""
	Set tPosition=$o(pIntegers(""),1,tValue)
	While tPosition'="" {
		Set:((tMax="")||(tMax<tValue)) tMax=tValue
		Set tPosition=$o(pIntegers(tPosition),1,tValue)
	}
	
	Quit tMax
}

ClassMethod Min(pIntegers...) As %Integer
{
	Set tSC=##class(Math.Utils).ValidateInput(pIntegers...)
	If $$$ISERR(tSC) $$$ThrowStatus(tSC)
	
	Set tMin=""
	Set tPosition=$o(pIntegers(""),1,tValue)
	While tPosition'="" {
		Set:((tMin="")||(tMin>tValue)) tMin=tValue
		Set tPosition=$o(pIntegers(tPosition),1,tValue)
	}
	
	Quit tMin
}

ClassMethod GreatestCommonDivisor(pIntegers...) As %Integer
{
	Set tRes=""
	
	Set tSC=##class(Math.Utils).ValidateInput(pIntegers...)
	If $$$ISERR(tSC) $$$ThrowStatus(tSC)

	Set tMin=##class(Math.Math).Min(pIntegers...)

	If tMin=0 {
		$$$ThrowStatus($$$ERROR(5001,"Cannot compute GreatestCommonDivisor of 0"))
	}

	// This can be optimized, but it works for now
	For tNum=tMin:-1:1 {
		For tInteger=1:1:pIntegers {
			Set tRes=tNum
			If (pIntegers(tInteger)/tNum)'=(pIntegers(tInteger)\tNum) {
				Set tRes=""
				Quit
			}
		}
		Quit:tRes'=""
	}
	
	Quit tRes
}

ClassMethod GCD(pFactors...) As %Integer [ CodeMode = expression ]
{
##class(Math.Math).GreatestCommonDivisor(pFactors...)
}

ClassMethod Factorial(pValue = "") As %Integer
{
	Set tSC=##class(Math.Utils).ValidateInput(pValue)
	If $$$ISERR(tSC) $$$ThrowStatus(tSC)

	Set tSC=##class(Math.Utils).ValidateRange(pValue,-23,23)
	If $$$ISERR(tSC) $$$ThrowStatus(tSC)

	// This is not a boolean, but a multiplier for if the number is negative
	Set tNegative=1
	If pValue<0 {
		Set tNegative=-1
		Set pValue=$ZAbs(pValue)
	}
	Set tRes=pValue
	For tVal=pValue-1:-1:1 {
		Set tRes=tRes*tVal
	}

	Set tRes=tRes*tNegative

	Quit tRes
}

ClassMethod Ceiling(pValue = "") As %Integer
{
	Set tSC=##class(Math.Utils).ValidateInput(pValue)
	If $$$ISERR(tSC) $$$ThrowStatus(tSC)
	
	Quit $SYSTEM.SQL.CEILING(pValue)
}

ClassMethod Floor(pValue = "") As %Integer
{
	Set tSC=##class(Math.Utils).ValidateInput(pValue)
	If $$$ISERR(tSC) $$$ThrowStatus(tSC)
	
	Quit $SYSTEM.SQL.FLOOR(pValue)
}

}
