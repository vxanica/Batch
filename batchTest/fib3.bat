@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

set /p number=Enter a number: 
call :fib RETURN %number% 0
echo fibonacci of %number% is %RETURN%
exit /b

:fib
    if %~2 EQU 0 (
        set /a %~1= 1
    ) else (
        if %~2 EQU 1 (
            set /a %~1= 1
        ) else (
            set /a tmp1%~3 = %~2-1
            set /a tmp2%~3 = %~2-2
            set /a nxt%~3 = %~3 + 1

            call :fib ret1%~3 !tmp1%~3! !nxt%~3!
            call :fib ret2%~3 !tmp2%~3! !nxt%~3!

            set /a "%~1=ret1%~3+ret2%~3"
        )
    )
