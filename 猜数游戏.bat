@echo off
setlocal enabledelayedexpansion
title 猜数游戏
:start
set random_num=%random%
set x=15
echo 随机数为0到65535的数字之一。
:: echo %random_num%
:begin
echo 您有 %x% 次机会。
set /p num=输入你猜的数:
echo 你猜的是 %num%。
if %num% EQU %random_num% (
	echo 恭喜你猜对了，还要继续吗？
    set /p ch=继续请输入1。
    if !ch! == "1" (
        goto start
    ) else (
        echo 按任意键结束，自动关闭。
        pause
        exit
    )
) else if %num% GTR %random_num% (
    set /a x-=1
    echo 猜错了呢，你猜的数太大了。
    goto begin
) else (
    set /a x-=1
    echo 猜错了呢，你猜的数太小了。
    goto begin
)
