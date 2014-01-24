rem Needed to get server-mode working.
@echo off
"%~dp0emacsclientw.exe" --server-file=%HOMEPATH%\.emacs.d\server\server -na "%~dp0runemacs.exe" "%1"
