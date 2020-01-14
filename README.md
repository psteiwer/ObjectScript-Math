# ObjectScript-Math
Math library for InterSystems ObjectScript. This library contains functions that are both standard to ObjectScript as well as functions that are not. For example TODO.

Once this library is installed, functions can be called two ways:
```
Set value=##class(Math.Math).LeastCommonMultiple(134,382)
```
or
```
Set value=$$$LeastCommonMultiple(134,382)
```

For installation guidance, [follow the steps below](#installing).

If you would like to contribute, please follow [the listed guidelines](#contributing).

To report a bug or request an enhancement, please use the [Issues feature](https://github.com/psteiwer/ObjectScript-Math/issues).

# Installing
## With ZPM
If ZPM is not installed, [see ZPM Open Exchange App](https://openexchange.intersystems.com/package/ObjectScript-Package-Manager-2) for instructions.

Once Installed, enter the "zpm" command to enter the zpm shell:
```
SAMPLES>zpm
zpm: SAMPLES>
```
Once inside zpm, run "install objectscript-math" to install the package:
```
zpm: SAMPLES>install objectscript-math
 
[objectscript-math]     Reload START
[objectscript-math]     Reload SUCCESS
[objectscript-math]     Module object refreshed.
[objectscript-math]     Validate START
[objectscript-math]     Validate SUCCESS
[objectscript-math]     Compile START
[objectscript-math]     Compile SUCCESS
[objectscript-math]     Activate START
[objectscript-math]     Configure START
[objectscript-math]     Configure SUCCESS
[objectscript-math]     Activate SUCCESS
```

## Without ZPM
If ZPM is not installed and you do not plan on installing it, you can still quickly install this library.

If you plan on contributing, simply clone this Repository and load the files

If you would just like to use this library, please follow these steps:
1. Navigate to the [latest release](https://github.com/psteiwer/ObjectScript-Math/releases/latest)
2. Download the .xml file (ObjectScript-MathvX-X-X.xml) from the assets and copy the path to the file
3. Run the following commands
```
Set path="COPIED PATH FROM STEP 2"
Do $system.OBJ.Load(path,"ck")
```
This will load Math.Math.cls, Math.Utils.cls, and Math.inc

# Contributing
Please see [the Contributing Guide](https://github.com/psteiwer/ObjectScript-Math/blob/master/CONTRIBUTING.md)
