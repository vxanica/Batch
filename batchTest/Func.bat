@echo off
setlocal enabledelayedexpansion

set "fst=0"
set "fib=0"

call:myFibo fib,%fst%
echo.The next Fibonacci is %fib%.

echo.&pause&goto:eof



::--------------------------------------------------------
::-- Function section starts below here
::--------------------------------------------------------

:myFibo  -- calculate recursively the next Fibonacci number greater or equal to a limit
::       -- %~1: return variable reference and current Fibonacci number
::       -- %~2: previous value
::       -- %~3: limit
SETLOCAL
set /a "Number1=%~1"
set /a "Number2=%~2"
:: --set /a "Limit=%~3"
:: --set /a "NumberN=Number1 + Number2"
:: if /i %NumberN% LSS %Limit% call:myFibo NumberN,%Number1%,%Limit%
if /i !Number2! EQU 0 (
        ENDLOCAL
        set "%~1=1"
        goto:eof
        ) else if /i !Number2! EQU 1 (
        ENDLOCAL
        set "%~1=1"
        goto:eof
        )  else (
            set /a "arg1=Number1-1"
            echo arg1 is !arg1!
            call:myFibo ret1,!arg1!
        ::    set /a "arg2=Number1-2"
        ::    echo arg2 is !arg2!
        ::    call:myFibo ret2 !arg2!
        ::    ENDLOCAL
        ::    set /a "%~1=ret1+ret2"
        )
        

::(ENDLOCAL
::    IF "%~1" NEQ "" SET "%~1=%NumberN%"
::)
