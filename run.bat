@echo off
TITLE VLIVE-BACKUP-BOT
CLS

IF exist venv (
ECHO ���� ����ȯ���� �����մϴ�.
ECHO.
rmdir /S /Q .\venv
)

ECHO ����ȯ���� �����մϴ�.
ECHO.
python -m venv venv

ECHO ���� ���α׷��� ��ġ�մϴ�.
ECHO.
.\venv\Scripts\python -m pip install --upgrade pip
.\venv\Scripts\python -m pip install -r requirements.txt

ECHO.
ECHO ���� ���α׷� ��ġ�� �Ϸ��߽��ϴ�.
ECHO.

ECHO ���α׷��� �����մϴ�.
ECHO.
TIMEOUT /t 1 > nul
cls

.\venv\Scripts\python core.py
