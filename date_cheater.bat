REM
REM ���t���ꎞ�I�ɕύX����o�b�`
REM
REM �T�v�F�N�����Ɏw����t�ɓ��t��ύX�A�I�����Ɍ��ɖ߂��܂�
REM
REM �����F�Ǘ��Ҍ������K�v
REM

@echo off

set TARGET_DATE=2014/1/1
set TODAY_FILENAME=today.txt

echo �����̓��t���o�b�N�A�b�v���܂��B
date /t > %~dp0%TODAY_FILENAME%

echo ���t��ύX�i%TARGET_DATE%�j���܂��B
date %TARGET_DATE%

echo ���s����ƁA���t�����ɖ߂��܂��B
pause

echo ���t�����[���o�b�N���܂��B
for /f %%i in (%~dp0%TODAY_FILENAME%) do date %%i
del /Q %~dp0%TODAY_FILENAME%

