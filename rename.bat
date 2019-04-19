@echo off

rem http://qiita.com/mitsuru793/items/0c03bd18439c5b7ef026

echo バッチファイルと同じディレクトのすべてのファイルをリネームします。
echo 追記する文字が既に含まれるファイルはリネーム対象になりません
echo;
echo （拡張子を含まない）ファイル名のどの位置に文字を挿入しますか？
echo;
echo 0:先頭
echo 1:末尾

set /p select="数字で選択して下さい："
set /p add="追記する文字を入力して下さい："

pause

if %select%==0 (
    for %%i in (*) do (
        rem 実行バッチファイル自身でない
        if not %%i==%~n0%~x0 (
            rem 追記する文字が含まれない
            echo %%i | find "%add%" 1>nul
            if ERRORLEVEL 1 (
                rem 先頭に追記
                ren %%i %add%%%~ni%%~xi
            )
        )
    )
) else (
    for %%i in (*) do (
        rem 実行バッチファイル自身でない
        if not %%i==%~n0%~x0 (
            rem 追記する文字が含まれない
            echo %%i | find "%add%" 1>nul
            if ERRORLEVEL 1 (
                rem 先頭に追記
                ren %%i %%~ni%add%%%~xi
            )
        )
    )
)