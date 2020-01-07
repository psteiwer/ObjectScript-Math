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
1. Download the ZIP file from this repository
2. Extract the files and copy the path
3. Run the following commands
```
Set path="COPIED PATH FROM STEP 2"
Do $system.OBJ.LoadDir(path_"/src/cls/Math/","ck")
Do $system.OBJ.ImportDir(path_"/src/inc/")
```
This will load Math.Math.cls, Math.Utils.cls, and Math.inc
4. If you would also plan on developing/contributing to this library, run the following command
```
Do $system.OBJ.LoadDir(path_"/src/cls/UnitTests/","ck",,1)
```
This will additionally load the Unit Tests

# Contributing
Please see [the Contributing Guide](https://github.com/psteiwer/ObjectScript-Math/blob/master/CONTRIBUTING.md)
