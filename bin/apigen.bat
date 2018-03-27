REM COPY TO vendor/bin
@ECHO OFF
setlocal DISABLEDELAYEDEXPANSION
SET BIN_TARGET=%~dp0/../apigen/apigen/bin/apigen
php -d memory_limit=512M "%BIN_TARGET%" %*
