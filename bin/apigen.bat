REM COPY TO vendor/bin
@ECHO OFF
setlocal DISABLEDELAYEDEXPANSION
SET BIN_TARGET=%~dp0/../apigen/apigen/bin/apigen
php -d memory_limit=1024M "%BIN_TARGET%" %*
