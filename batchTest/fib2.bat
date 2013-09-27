@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

set /p number=Enter a number: 
call :fact RETURN %number%
echo Factorial of %number% is %RETURN%
exit /b


:fact
if %~2 EQU 0 (
    set %~1=1
) else (
    set /a num=%~2 - 1    
    call :fact ret !num!
    echo fact !num! = !ret!
    set /a %~1=%~2 * ret
)