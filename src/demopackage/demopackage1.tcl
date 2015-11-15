#!/usr/bin/env tclsh
set appDirPath [file dirname [info script]]
lappend auto_path $appDirPath 
package provide DemoPackage 1.0

 ##
 #  @package   demopackage
 #  @file      demopackage1.tcl
 #  @brief     DemoPackage
 #  @author    Rolf Hemmerling <hemmerling@gmx.net>
 #  @date      2015-07-01
 #  @copyright GNU LESSER GENERAL PUBLIC LICENSE, Version 2.1
 #
 #  DemoPackage - Test of Tcl package feature
 #
 #  Copyright 2015 Rolf Hemmerling
 #
 #  Licensed under the GNU LESSER GENERAL PUBLIC LICENSE, Version 2.1
 #  (the "License"); you may not use this file except in compliance with
 #  the License. You may obtain a copy of the License at
 #
 #  http://www.gnu.org/licenses/old-licenses/lgpl-2.1.en.html
 #
 #  Unless required by applicable law or agreed to in writing, software
 #  distributed under the License is distributed on an "AS IS" BASIS,
 #  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 #  See the License for the specific language governing permissions and
 #  limitations under the License.
##

namespace eval DemoPackage1 {
    namespace export demoPackage1
    proc demoPackage1 {} {
	puts "DemoPackage1"
    }
}

puts "File 'DemoPackage1'"

namespace import ::DemoPackage1::*
#set fail [catth {source demopackage2.tcl} resultOfScript]
#set fail [catch {source ./demopackage/demopackage2.tcl} resultOfScript]
#set fail [catch {source ../demopackage/demopackage2.tcl} resultOfScript]
set test2Path $appDirPath
append test2Path "/demopackage2.tcl"
source $test2Path
namespace import ::DemoPackage2::*
demoPackage1
demoPackage2
