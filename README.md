# ObjectScript-Math
Math library for InterSystems ObjectScript. This library contains functions that are both standard to ObjectScript as well as functions that are not. For example TODO.

For installation guidance, [follow the steps below](#installing).

If you would like to contribute, please follow [the listed guidelines](#contributing).

To report a bug or request an enhancement, please use the [Issues feature](https://github.com/psteiwer/ObjectScript-Math/issues).

# Installing
## With ZPM
- TODO

## Without ZPM
- TODO

# Contributing
## Method names
- Functions should contain short and long versions
- Example:
  - LeastCommonMultiple()
  - LCM()
  
## Macros
- All methods must have a corresponding macro
  - Both long and short versions

## Unit Tests
- Unit tests must accompany new functions.
- Any bug fixes should add a new test case to the existing unit test

# Running Unit Tests
- Check if ^UnitTestRoot is defined
  - If it is already defined
    - Move the contents of UnitTests to the path of ^UnitTestRoot + "/ObjectScript-Math/"
  - If it is not defined
    - Either point ^UnitTestRoot to the path of the UnitTests directory on your system or create a new directory for unit tests, set ^UnitTestRoot to this new directory, and then follow the steps for already having ^UnitTestRoot defined
- Note: if your unit test directory is not in your git repo, you will need to manually move files to get updated tests
