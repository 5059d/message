@echo ����1����Ŀ��������2�����汾�ţ�����3��perso�汾��0 or ZZ������4��teleweb�汾
@set project=
@set maincode_version= 
@set perso_version=
@set teleweb_version=
set /p project=^<pixi3-45^> ^:
set /p maincode_version=^<6D27-3^> ^:
set /p perso_version=^<0^> ^:
set /p teleweb_version=^<3.5.1^> ^:
python c:\XwingDownloadBin.py %project% %maincode_version% %perso_version% %teleweb_version%
pause