#!/usr/bin/env tclsh

global externalTest0
# Eclipse with DLT, if first item: 
# "!/usr/bin/env tclsh"

proc test0 {} {
    # Eclipse with DLT, if first item: 
    # "!/usr/bin/env tclsh"
    return "Test0"
}

global test1
# Eclipse with DLT displays comment #1
# at the top of the definition of the procedure 

# If this comment #1 is missing,
# Eclipse with DLT: 
# "Note: This element has no documentation 
# and hence no information could be found"
proc test1 {} {
    return "Test1"
}

# If this comment #2 is missing,
# Eclipse with DLT: 
# "Note: This element has no documentation 
# and hence no information could be found"
namespace eval test2 {
    
    # If this comment #3 is missing,
    # Eclipse with DLT: 
    # "Note: This element has no documentation 
    # and hence no information could be found"
    proc test3 {} {
	return "Test3"
   }

    test3
    # Eclipse with DLT displays comment
    # at the top of the definition of the procedure 
}

# If this comment #4 is missing,
# Eclipse with DLT: 
# "Note: This element has no documentation 
# and hence no information could be found"
::oo::class create Test4 {

    constructor {} {
	# Eclipse with DLT: No message is displayed
	catch {now}  
    }   

    destructor {
        # Eclipse with DLT: No message is displayed
        catch {now}
    }

    method test4 {} {
        # Eclipse with DLT: No message is displayed
        return "Test4"
    }	
}

namespace import test2
namespace import ::oo:::Test4  
# Eclipse with DLT: 
# No message is displayed for imports

test1
# Eclipse with DLT displays comment #1
# at the top of the definition of the procedure 

set testresult1 test1
# Eclipse with DLT: No message is displayed

test3
# Eclipse with DLT displays comment #3
# at the top of the definition of the procedure 

# If this comment #4 is missing,
# Eclipse with DLT: 
# "Note: This element has no documentation 
# and hence no information could be found"
variable test4 

variable test5 

Test4 create test4
# Eclipse with DLT displays comment #4
# at the top of the definition of the procedure 
