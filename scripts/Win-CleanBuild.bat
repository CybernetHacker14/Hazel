@echo off
pushd %~dp0\..\
RMDIR /S /Q .vs
DEL *.sln 
DEL /S /Q *.vcxproj *.vcxproj.filters *.vcxproj.user
FOR /d /r . %%d IN ("bin") DO @IF EXIST "%%d" rd /s /q "%%d"
FOR /d /r . %%d IN ("bin-int") DO @IF EXIST "%%d" rd /s /q "%%d"
popd
PAUSE