@echo off
setlocal enabledelayedexpansion
title ������Ϸ
:start
echo �˴�������@chenyuxuan__2009
set random_num=%random%
set x=15
echo �����Ϊ0��65535������֮һ��
::echo %random_num% 
:: ɾ������һ�е����㣬�ͻ���ʾ�����
if %x% EQU 0 (
	echo �����ù��ˣ����� %random_num%������һ�Σ�
	goto start
)

echo ���� %x% �λ��ᡣ
set /p num=������µ���:
echo ��µ��� %num%��
if %num% EQU %random_num% (
	echo ��ϲ��¶��ˣ���Ϸ��������Ҫֹͣ�رռ��ɡ�
	echo 10 ����Զ���յ�ǰ��Ļ������ȷ������������������˳����롣
	timeout /t 10
	cls
	goto start
    
) else if %num% GTR %random_num% (
    set /a x-=1
    echo �´����أ���µ���̫���ˡ�
    goto begin
) else (
    set /a x-=1
    echo �´����أ���µ���̫С�ˡ�
    goto begin
)
pause
