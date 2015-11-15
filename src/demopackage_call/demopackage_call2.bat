@echo off
rem TCLLIBPATH is a Tcl-style whitespace-delimiter list, 
rem not a shell-style colon-delimiter list
set TCLLIBPATH=C:/Users/Public/archive/github/codebreaker/src/tcl/codebreaker %TCLLIBPATH%
rem set TCLLIBPATH=C:\Users\Public\archive\github\codebreaker\src\tcl\codebreaker %TCLLIBPATH%
tclsh demopackage_call2.tcl

