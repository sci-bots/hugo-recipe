REM Copy full archive contents to Conda environment.
set INSTALL_PATH=%PREFIX%\library\opt\%PKG_NAME%
xcopy /S /Y /I /Q "%SRC_DIR%" "%INSTALL_PATH%"

REM Make link to main executable in `Scripts` directory.
set EXE_PATH=%CONDA_PREFIX%/library/opt/%PKG_NAME%/%PKG_NAME%.exe
set BAT_PATH=%PREFIX%/Scripts/%PKG_NAME%.bat
echo @echo off >> "%BAT_PATH%"
if errorlevel 1 exit 1
echo "%EXE_PATH%" %%* >> "%BAT_PATH%"
if errorlevel 1 exit 1
