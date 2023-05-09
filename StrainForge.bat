REM **************************************************************
REM 	Author:		Antonio Perrucci
REM 	Company:	Magellano srl
REM 	Date:		09/05/2023
REM	
REM 	LICENSE:	GPLv3
REM     URL:		https://github.com/antogit-sys/StrainForge.git
REM
REM **************************************************************

@ECHO OFF
TITLE StrainForge
COLOR 0b
 
:main
	cls
	echo STRESS-TEST CPU
	echo ===============
	set /p n="number of stress intensities: "
	echo.
	set cycles=0
	echo execute test ...
	timeout 3 > null
	echo.
	echo start
	echo.
	:startpoint
		set /a cycles=cycles+1
		start cmd /c
		if %cycles% == %n% (
			taskmgr
			echo closed stress-test ...
			color       
			exit /B 0
		)
		goto startpoint
