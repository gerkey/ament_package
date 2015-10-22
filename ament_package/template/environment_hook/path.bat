:: copied from ament_package/template/environment_hook/path.bat

call:ament_prepend_unique_value PATH "%AMENT_CURRENT_PREFIX%\bin"

goto:eof

:: function to prepend non-duplicate values to environment variables
:: using colons as separators and avoiding trailing separators
:ament_prepend_unique_value
  setlocal enabledelayedexpansion
  :: arguments
  set "_listname=%~1"
  set "_value=%~2"
  :: expand the list variable
  set "_list=!%_listname%!"
  :: check if the list contains the value
  set "_is_duplicate="
  if "%_list%" NEQ "" (
    for %%a in ("%_list:;=";"%") do (
      if "%%~a" == "%_value%" set "_is_duplicate=1"
    )
  )
  :: if it is not a duplicate prepend it
  if "%_is_duplicate%" == "" (
    :: produces a trailing semicolon when the list empty, but that's ok
    set "_list=%_value%;%_list%"
  )
  (endlocal
    set "%~1=%_list%"
  )
goto:eof
