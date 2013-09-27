@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

set /p number=Enter a number: 
call :odd return %number% 0
echo  prop that %number% is odd is !return!
exit /b


:even
if %~2 EQU 0 (
    set %~1=true
) else (
    set /a temp%~3= %~2 - 1
    set /a evennxt%~3=%~3 + 1
    call :odd evenret%~3 !temp%~3! !evennxt%~3!
    set %~1=!evenret%~3!
)
goto:eof

:odd
if %~2 EQU 0 (
    set %~1=false
) else (
    set /a temp%~3= %~2 - 1
    set /a oddnxt%~3=%~3 + 1
    
    call :even oddret%~3 !temp%~3! !oddnxt%~3!
    set %~1=!oddret%~3!
)
goto:eof
