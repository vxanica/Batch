@echo off

set "arg=2"
set "ret=0"

call:factorial ret,%arg%
echo.The factorial of %arg% is %ret%

echo.&pause&goto:eof

:factorial 
SETLOCAL
set /a "num1=%~1"
set /a "num2=%~2"

if /i %num2% EQU 0 (
    set "num1=1"
    echo num1 is %num1%
    goto:eof
) else (
    set /a "temp=num2-1"
    echo temp is %temp%
    
) 