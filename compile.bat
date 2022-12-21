@echo off

pip install -r requirements.txt
pyinstaller --noconfirm --onefile --windowed --icon "icon.ico" --version-file "version.py" --add-data "logs;logs/" --add-data "keyboards;keyboards/" --add-data "functions;functions/" --add-data "videoplayback.mp4;."  "main.py"


rmdir /s /q __pycache__
rmdir /s /q build

:cmd
pause null