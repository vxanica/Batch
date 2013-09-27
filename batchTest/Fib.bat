@echo off

set "fst=0"
set "fib=1"
set "limit=6"
call:myFibo fib,%fst%,%limit%
echo.The next Fibonacci number greater or equal %limit% is %fib%.

goto:eof


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
set /a "Limit=%~3"
set /a "NumberN=Number1 + Number2"


if /i %NumberN% LSS %Limit% call:myFibo NumberN,%Number1%,%Limit%
(ENDLOCAL
    echo NumberN is %NumberN%
    IF "%~1" NEQ "" SET "%~1=%NumberN%"
)
goto:eof