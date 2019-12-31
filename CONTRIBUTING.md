# Contributing to ObjectScript-Math

### Table of contents
- [Bug Reports](#bug-reports)
- [Enhancement Requests](#enhancement-requests)
- [Submitting Code](#submitting-code)
  - [Code Style](#code-style)
  - [Method Names](#method-names)
  - [Macros](#macros)
  - [Unit Tests](#unit-tests)
- [Running Unit Tests](#running-unit-tests)
  - [With ZPM](#with-zpm)
  - [Without ZPM](#without-zpm)


## Bug Reports

## Enhancement Requests

## Submitting Code

**Pull requests will NOT be approved until these conditions are met**. These requirements will ensure that the code can easily be maintained and worked on by multiple contributers. It will also help maintain the integrity and reliability of the code base.

### Code Style
- Please view LeastCommonMultiple() and follow the syntax for naming conventions, command styles, indentations, and line breaks
- TODO, formalize style

### Method names
- Functions should contain short and long versions
- Example:
  - LeastCommonMultiple()
  - LCM()
  
### Macros
- All methods must have a corresponding macro
  - Both long and short versions

### Unit Tests
- Unit tests must accompany new functions.
- Any bug fixes should add a new test case to the existing unit test

## Running Unit Tests
### With ZPM
Running Unit Tests with ZPM is extremely simple. Once in the ZPM prompt, you can run "objectscript-math test. This will run the Unit Tests and provide a link to the results. Before following the link to the results, you can quickly check the output for success if "ALL PASSED"
```
SAMPLES>zpm
zpm: SAMPLES>objectscript-math test
```

### Without ZPM
- Check if ^UnitTestRoot is defined
  - If it is already defined
    - Move the contents of UnitTests to the path of ^UnitTestRoot + "/ObjectScript-Math/"
  - If it is not defined
    - Either point ^UnitTestRoot to the path of the UnitTests directory on your system or create a new directory for unit tests, set ^UnitTestRoot to this new directory, and then follow the steps for already having ^UnitTestRoot defined
- Note: if your unit test directory is not in your git repo, you will need to manually move files to get updated tests

After Unit Tests are configured, run the following:
```
Do ##class(%UnitTest.Manager).RunTest("ObjectScript-Math")
```
You can optionally include the second parameter of "/nodelete", which will not delete the classes inside of Caché/InterSystems IRIS. This can be useful if you are modifying the Unit Test and your class is not stored on the local file system.
