@echo off

rem http://qiita.com/mitsuru793/items/0c03bd18439c5b7ef026

echo �o�b�`�t�@�C���Ɠ����f�B���N�g�̂��ׂẴt�@�C�������l�[�����܂��B
echo �ǋL���镶�������Ɋ܂܂��t�@�C���̓��l�[���ΏۂɂȂ�܂���
echo;
echo �i�g���q���܂܂Ȃ��j�t�@�C�����̂ǂ̈ʒu�ɕ�����}�����܂����H
echo;
echo 0:�擪
echo 1:����

set /p select="�����őI�����ĉ������F"
set /p add="�ǋL���镶������͂��ĉ������F"

pause

if %select%==0 (
    for %%i in (*) do (
        rem ���s�o�b�`�t�@�C�����g�łȂ�
        if not %%i==%~n0%~x0 (
            rem �ǋL���镶�����܂܂�Ȃ�
            echo %%i | find "%add%" 1>nul
            if ERRORLEVEL 1 (
                rem �擪�ɒǋL
                ren %%i %add%%%~ni%%~xi
            )
        )
    )
) else (
    for %%i in (*) do (
        rem ���s�o�b�`�t�@�C�����g�łȂ�
        if not %%i==%~n0%~x0 (
            rem �ǋL���镶�����܂܂�Ȃ�
            echo %%i | find "%add%" 1>nul
            if ERRORLEVEL 1 (
                rem �擪�ɒǋL
                ren %%i %%~ni%add%%%~xi
            )
        )
    )
)