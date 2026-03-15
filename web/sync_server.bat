@echo off
chcp 65001 >nul
echo 正在同步 server.js 到服务器...
echo.

scp server.js root@43.139.231.252:/root/server_20260212125150/server.js

if %errorlevel% equ 0 (
    echo ✓ server.js 同步成功！
) else (
    echo ✗ server.js 同步失败，请检查网络连接或SSH配置。
    pause
    exit /b 1
)

echo.
echo 正在同步 update 目录到服务器...
echo.

scp -r update root@43.139.231.252:/root/server_20260212125150/

if %errorlevel% equ 0 (
    echo ✓ update 目录同步成功！
) else (
    echo ✗ update 目录同步失败，请检查网络连接或SSH配置。
)

echo.
echo 正在同步 public 目录到服务器...
echo.

scp -r public root@43.139.231.252:/root/server_20260212125150/

if %errorlevel% equ 0 (
    echo ✓ public 目录同步成功！
) else (
    echo ✗ public 目录同步失败，请检查网络连接或SSH配置。
)

echo.
pause
