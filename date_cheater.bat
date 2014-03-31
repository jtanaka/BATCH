REM
REM 日付を一時的に変更するバッチ
REM
REM 概要：起動時に指定日付に日付を変更、終了時に元に戻します
REM
REM 権限：管理者権限が必要
REM

@echo off

set TARGET_DATE=2014/1/1
set TODAY_FILENAME=today.txt

echo 今日の日付をバックアップします。
date /t > %~dp0%TODAY_FILENAME%

echo 日付を変更（%TARGET_DATE%）します。
date %TARGET_DATE%

echo 続行すると、日付を元に戻します。
pause

echo 日付をロールバックします。
for /f %%i in (%~dp0%TODAY_FILENAME%) do date %%i
del /Q %~dp0%TODAY_FILENAME%

