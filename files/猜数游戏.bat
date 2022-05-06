@echo off
setlocal enabledelayedexpansion
title 猜数游戏
:start
echo 此代码来自@chenyuxuan__2009
set random_num=%random%
set x=15
echo 随机数为0到65535的数字之一。
::echo %random_num% 
:: 删除上面一行的两点，就会显示随机数
if %x% EQU 0 (
	echo 机会用光了，答案是 %random_num%，再来一次！
	goto start
)

echo 您有 %x% 次机会。
set /p num=输入你猜的数:
echo 你猜的是 %num%。
if %num% EQU %random_num% (
	echo 恭喜你猜对了，游戏继续，若要停止关闭即可。
	echo 10 秒后将自动清空当前屏幕，若已确定，按下任意键即可退出读秒。
	timeout /t 10
	cls
	goto start
    
) else if %num% GTR %random_num% (
    set /a x-=1
    echo 猜错了呢，你猜的数太大了。
    goto begin
) else (
    set /a x-=1
    echo 猜错了呢，你猜的数太小了。
    goto begin
)
pause
