@echo off
setlocal enabledelayedexpansion
title ������Ϸ
:start
set random_num=%random%
set x=15
echo �����Ϊ0��65535������֮һ��
:: echo %random_num%
:begin
echo ���� %x% �λ��ᡣ
set /p num=������µ���:
echo ��µ��� %num%��
if %num% EQU %random_num% (
	echo ��ϲ��¶��ˣ���Ҫ������
    set /p ch=����������1��
    if !ch! == "1" (
        goto start
    ) else (
        echo ��������������Զ��رա�
        pause
        exit
    )
) else if %num% GTR %random_num% (
    set /a x-=1
    echo �´����أ���µ���̫���ˡ�
    goto begin
) else (
    set /a x-=1
    echo �´����أ���µ���̫С�ˡ�
    goto begin
)
