:%1   tools路径
:%2   Console 接口名称
:%3   串口波特率
:%4   固件名称

@echo off

setlocal enabledelayedexpansion 2>nul

set tools_path=%1
set console=%2
set baud_speed=%3
set img_file=%4

python -V 1>python_v.txt 2>nul
set /p python_Ver=<python_v.txt
del /s /q python_v.txt  1>nul
set "python3_v=%python_Ver:* =%"
for /f "tokens=1,2,3 delims=." %%a in ("%python3_v%") do set python3_mv=%%a

python -V 2>nul 1>nul
if "!ERRORLEVEL!" == "0" (
if "%python3_mv%" NEQ "3" (
    echo Current Python main version is not 3, Use binary to upgrade the firmware.
    %tools_path%/download.exe -c %console% -b %baud_speed% -f %img_file% 
    exit !ERRORLEVEL!
)
  pip --version 2>nul 1>nul
  if "!ERRORLEVEL!" == "0" (
	pip show pyserial 1>nul 2>nul
	if "!ERRORLEVEL!" == "0" (
	  pip show pyprind 1>nul 2>nul
	  if "!ERRORLEVEL!" == "0" (
	    echo Use python script to upgrade the firmware.
		echo python %tools_path%/w600tool.py -p %console% --upload %img_file% --upload-baud %baud_speed%
		echo.
	    REM python %tools_path%/download.py -c %console% -b %baud_speed% -f %img_file%
		python %tools_path%\w600tool.py -p %console% --upload %img_file% --upload-baud %baud_speed%
		exit !ERRORLEVEL!
	  ) else (
            echo Not install pyprind via pip, Use binary to upgrade the firmware.
            %tools_path%/download.exe -c %console% -b %baud_speed% -f %img_file% 
            exit !ERRORLEVEL!
	  )
	) else (  
          echo Not install pyserial via pip, Use binary to upgrade the firmware.
          %tools_path%/download.exe -c %console% -b %baud_speed% -f %img_file% 
          exit !ERRORLEVEL!
	)
  ) else (
    echo Not install pip in python environment, Use binary to upgrade the firmware.
    %tools_path%/download.exe -c %console% -b %baud_speed% -f %img_file% 
    exit !ERRORLEVEL!
  )
) else ( 
  echo Use binary to upgrade the firmware but using script instead!
  rem %tools_path%/download.exe -c %console% -b %baud_speed% -f %img_file% 
  echo.
  echo python3 w600tool.py -p %console% --upload %img_file% --upload-baud %baud_speed%
  REM python %tools_path%/download.py -c %console% -b %baud_speed% -f %img_file%
  python %tools_path%\w600tool.py -p %console% --upload %img_file% --upload-baud %baud_speed%
  echo.
  exit !ERRORLEVEL!
)

echo on
