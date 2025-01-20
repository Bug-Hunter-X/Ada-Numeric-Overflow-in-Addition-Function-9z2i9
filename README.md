# Ada Numeric Overflow Example

This repository demonstrates an example of a potential numeric overflow bug in an Ada program. The `Add_Numbers` function adds two integers.  However, it lacks error handling for cases where the sum exceeds the maximum value representable by the `Integer` type.

The `bug.ada` file contains the erroneous code.  The solution, which includes overflow checks, is in `bugSolution.ada`.

This is a good example of a subtle Ada error that can be easily overlooked and illustrates the importance of robust error handling.