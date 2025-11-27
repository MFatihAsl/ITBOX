@echo off
color 0A
chcp 65001 >nul
title ITBOX

:: Başlangıç Menüsü
:MENU
cls
echo ============================================
echo                  ITBOX
echo ============================================
echo 1.  Bilgisayar ve Aktif Kullanıcı Adını Göster
echo 2.  Bilgisayar Seri Numarasını Göster (Yönetici)
echo 3.  Bilgisayarın Marka ve Modelini Göster
echo 4.  Bilgisayar Donanımı Hakkında Bilgi Al (systeminfo)
echo 5.  Windows Lisans Durumunu Göster
echo 6.  Etkin Windows Lisansını Göster
echo 7.  Windows Sürüm Bilgisi
echo 8.  Windows Güncelleme Durumunu Göster
echo 9.  Windows Store Uygulamalarını Güncelle
echo 10. Kurulu Tüm Programları Güncelle
echo 11. Windows Sistem Dosyalarını Onar (Yönetici)
echo 12. Windows Disk Temizliği Yap
echo 13. Gereksiz Dosyaları Temizle (Yönetici)
echo 14. Sistem Bilgilerini Görüntüle
echo 15. Kullanıcı Hesaplarını Listele
echo ==============================================
echo 16. Bağlı Wi-Fi Şifresini Göster (Yönetici)
echo 17. IP Adresini Görüntüle
echo 18. IP Yapılandırmasını Tümünü Görüntüle
echo 19. IP Yapılandırmasını Serbest Bırak (release) (Yönetici)
echo 20. IP Yapılandırmasını Yenile (renew) (Yönetici)
echo 21. Ağ DNS Önbelleğini Temizle (flushdns) (Yönetici)
echo 22. ARP (Adres Çözümleme) Tablosunu Göster
echo 23. Ping Testi Yap
echo 24. Yazıcı Durumunu Göster
echo 25. Yüklü Yazıcıları Listele
echo 26. Yazıcıyı Yeniden Başlat (Yönetici)
echo 27. Yazıcı Kuyruğunu Temizle (Yönetici)
echo 28. Son Format Tarihini Göster
echo 29. Güvenlik Duvarını Aç (Yönetici)
echo 30. Güvenlik Duvarını Kapat (Yönetici)
echo ==============================================
echo 31. BIOS Ayarlarını Aç
echo 32. Güvenli Modda Aç (Yönetici)
echo 33. Depolama Alanı Durumunu Göster
echo 34. Sabit Diski Tara (chkdsk) (Yönetici)
echo 35. Sabit Diski Detaylı Tara(Restart gerekir)(Yönetici)
echo 36. Disk Durumunu Kontrol Et
echo 37. CPU Bilgilerini Göster
echo 38. Ekran Kartı Bilgilerini Göster
echo 39. RAM Optimizasyonu Yap (explorer.exe)
echo 40. Bellek (RAM) Kullanımını Göster
echo 41. Grup Politikalarını Güncelle (gpupdate /force)
echo 42. Tüm Pogramları Zorla Kapat
echo 43. Bilgisayarı Kapat
echo 44. Bilgisayarı Yeniden Başlat
echo 45. Çıkış Yap
echo ============================================
echo.
echo ============EK ÖZELLİKLER===================
echo 46. Windows'u Etkinleştir(Win10-Crack)(Yönetici)
echo 47. Windows'u Etkinleştir(Key ile)(Yönetici)
echo 48. Yol İzleme(tracert)
echo 49. Wifi Şifrelerini Göster(Yönetici)
echo 50. Gereksiz Dosyaları Sil(temp)(Yalnızca Yetkili Erişim!)
echo.                              
set /p choice=Bir işlem numarası seçin (Çıkmak için X girin): 

:: Seçim Yapıldığında Yönlendirme
if "%choice%"=="1" goto COMPUTER_AND_USER
if "%choice%"=="2" goto SERIAL_NUMBER
if "%choice%"=="3" goto COMPUTER_MODEL
if "%choice%"=="4" goto SYSTEM_INFO
if "%choice%"=="5" goto WINDOWS_LICENSE_STATUS
if "%choice%"=="6" goto ACTIVE_WINDOWS_LICENSE
if "%choice%"=="7" goto WINVER
if "%choice%"=="8" goto WINDOWS_UPDATE_STATUS
if "%choice%"=="9" goto UPDATE_WINDOWS_STORE_APPS
if "%choice%"=="10" goto UPDATE_PROGRAMS
if "%choice%"=="11" goto SYSTEM_FILE_REPAIR
if "%choice%"=="12" goto DISK_CLEANUP
if "%choice%"=="13" goto CLEAN_TEMP_FILES
if "%choice%"=="14" goto SYSTEM_INFO_VIEW
if "%choice%"=="15" goto USER_LIST
if "%choice%"=="16" goto WIFI_PASSWORD
if "%choice%"=="17" goto IP_ADDRESS
if "%choice%"=="18" goto IP_CONFIG_ALL
if "%choice%"=="19" goto RELEASE_IP
if "%choice%"=="20" goto RENEW_IP
if "%choice%"=="21" goto FLUSH_DNS
if "%choice%"=="22" goto ARP_TEST
if "%choice%"=="23" goto PING_TEST
if "%choice%"=="24" goto PRINTER_STATUS
if "%choice%"=="25" goto PRINTER_LIST
if "%choice%"=="26" goto RESTART_PRINTER
if "%choice%"=="27" goto CLEAR_PRINTER_QUEUE
if "%choice%"=="28" goto LAST_FORMAT_DATE
if "%choice%"=="29" goto ENABLE_FIREWALL
if "%choice%"=="30" goto DISABLE_FIREWALL
if "%choice%"=="31" goto BIOS_SETTINGS
if "%choice%"=="32" goto SAFE_MODE
if "%choice%"=="33" goto STORAGE_STATUS
if "%choice%"=="34" goto CHKDSK
if "%choice%"=="35" goto D_CHDISK
if "%choice%"=="36" goto DISK_STATUS
if "%choice%"=="37" goto CPU_INFO
if "%choice%"=="38" goto GPU_INFO
if "%choice%"=="39" goto RAM_OPTIMIZATION
if "%choice%"=="40" goto RAM_USAGE
if "%choice%"=="41" goto GPUPDATE
if "%choice%"=="42" goto FORCE_CLOSE_PROGRAMS
if "%choice%"=="43" goto SHUTDOWN
if "%choice%"=="44" goto RESTART
if "%choice%"=="45" exit
if "%choice%"=="46" goto WIN_CRACK
if "%choice%"=="47" goto ACTIVATE_WIN
if "%choice%"=="48" goto TRACERT
if "%choice%"=="49" goto WIFI_PASSWRD
if "%choice%"=="50" goto TEMP_DEL
if /i "%choice%"=="X" exit
goto MENU

:: Bilgisayar ve Aktif Kullanıcı Adını Göster
:COMPUTER_AND_USER
cls
echo Bilgisayar Adı: %COMPUTERNAME%
echo Aktif Kullanıcı: %USERNAME%
pause
goto MENU

:: Bilgisayar Seri Numarasını Göster
:SERIAL_NUMBER
cls
wmic bios get serialnumber | find /v "SerialNumber" || echo Seri numarası alınamadı.
pause
goto MENU

:: Bilgisayarın Marka ve Modelini Göster
:COMPUTER_MODEL
cls
wmic computersystem get manufacturer,model | find /v "Manufacturer" || echo Bilgi alınamadı.
pause
goto MENU

:: Bilgisayar Donanımı Hakkında Bilgi Al (systeminfo)
:SYSTEM_INFO
cls
systeminfo
pause
goto MENU

:: Windows Lisans Durumunu Göster
:WINDOWS_LICENSE_STATUS
cls
slmgr /xpr
pause
goto MENU

:: Etkin Windows Lisansını Göster
:ACTIVE_WINDOWS_LICENSE
cls
slmgr /dlv
pause
goto MENU

:: Windows Sürüm Bilgisi
:WINVER
cls
start winver
pause
goto MENU

:: Windows Güncelleme Durumunu Göster
:WINDOWS_UPDATE_STATUS
cls
wmic qfe get HotfixID,InstalledOn || echo Güncelleme bilgisi alınamadı.
pause
goto MENU

:: Windows Store Uygulamalarını Güncelle
:UPDATE_WINDOWS_STORE_APPS
cls
start ms-windows-store://update
pause
goto MENU

:: Kurulu Tüm Programları Güncelle
:UPDATE_PROGRAMS
cls
winget upgrade --all
pause
goto MENU

:: Windows Sistem Dosyalarını Onar
:SYSTEM_FILE_REPAIR
cls
sfc /scannow
pause
goto MENU

:: Windows Disk Temizliği Yap
:DISK_CLEANUP
cls
cleanmgr
pause
goto MENU

:: Gereksiz Dosyaları Temizle
:CLEAN_TEMP_FILES
cls
del /q/f/s %temp%\*
pause
goto MENU

:: Sistem Bilgilerini Görüntüle
:SYSTEM_INFO_VIEW
cls
msinfo32
pause
goto MENU

:: Kullanıcı Hesaplarını Listele
:USER_LIST
cls
net user
pause
goto MENU

:: Bağlı Wi-Fi Şifresini Göster
:WIFI_PASSWORD
cls
netsh wlan show profile name=* key=clear
pause
goto MENU

:: IP Adresini Görüntüle
:IP_ADDRESS
cls
ipconfig
pause
goto MENU

:: IP Yapılandırmasını Tümünü Görüntüle
:IP_CONFIG_ALL
cls
ipconfig /all
pause
goto MENU

:: IP Yapılandırmasını Serbest Bırak
:RELEASE_IP
cls
ipconfig /release
pause
goto MENU

:: IP Yapılandırmasını Yenile
:RENEW_IP
cls
ipconfig /renew
pause
goto MENU

:: Ağ DNS Önbelleğini Temizle
:FLUSH_DNS
cls
ipconfig /flushdns
pause
goto MENU

:: ARP Tablosunu Göster
:ARP_TEST
cls
echo ARP Tablosu başlatılıyor...
arp -a
pause
goto MENU

:: Ping Testi Yap
:PING_TEST
cls
set /p ip=Pinglemek istediğiniz IP veya adresi girin: 
ping %ip%
pause
goto MENU

:: Yazıcı Durumunu Göster
:PRINTER_STATUS
cls
wmic printer get name,status
pause
goto MENU

:: Yüklü Yazıcıları Listele
:PRINTER_LIST
cls
wmic printer list brief
pause
goto MENU

:: Yazıcıyı Yeniden Başlat
:RESTART_PRINTER
cls
net stop spooler
net start spooler
pause
goto MENU

:: Yazıcı Kuyruğunu Temizle
:CLEAR_PRINTER_QUEUE
cls
net stop spooler
del /q/f/s %systemroot%\System32\spool\PRINTERS\*
net start spooler
pause
goto MENU

:: Son Format Tarihini Göster
:LAST_FORMAT_DATE
cls
wmic os get installdate
pause
goto MENU

:: Güvenlik Duvarını Aç
:ENABLE_FIREWALL
cls
netsh advfirewall set allprofiles state on
pause
goto MENU

:: Güvenlik Duvarını Kapat
:DISABLE_FIREWALL
cls
netsh advfirewall set allprofiles state off
pause
goto MENU

:: BIOS Ayarlarını Aç
:BIOS_SETTINGS
cls
start ms-settings:recovery
pause
goto MENU

:: Güvenli Modda Aç
:SAFE_MODE
cls
bcdedit /set {default} safeboot minimal
shutdown /r
pause
goto MENU

:: Depolama Alanı Durumunu Göster
:STORAGE_STATUS
cls
wmic logicaldisk get size,freespace,caption
pause
goto MENU

:: Sabit Diski Tara
:CHKDSK
cls
chkdsk
pause
goto MENU

:: Sabit Diski Detaylı Tara
:D_CHDISK
cls
chdisk /f/r/x
pause
goto MENU

:: Disk Durumunu Kontrol Et
:DISK_STATUS
cls
wmic diskdrive get status
pause
goto MENU

:: CPU Bilgilerini Göster
:CPU_INFO
cls
wmic cpu get name,CurrentClockSpeed
echo Kullanım Durumu: 
wmic cpu get loadpercentage
pause
goto MENU

:: Ekran Kartı Bilgilerini Göster
:GPU_INFO
cls
wmic path win32_VideoController get name, AdapterRAM, DriverVersion, VideoProcessor
pause
goto MENU

:: RAM Optimizasyonu Yap
:RAM_OPTIMIZATION
cls
echo RAM optimizasyonu yapılıyor...
echo.
echo Çalışan işlemler sonlandırılacak...
echo.
taskkill /f /im explorer.exe
start explorer.exe
pause
goto MENU

:: Bellek (RAM) Kullanımını Göster
:RAM_USAGE
cls
wmic OS get FreePhysicalMemory
pause
goto MENU

:: Grup Politikalarını Güncelle
:GPUPDATE
cls
gpupdate /force
pause
goto MENU

:: Tüm Programları Zorla Kapat
:FORCE_CLOSE_PROGRAMS
cls
shutdown -f
pause
goto MENU

:: Bilgisayarı Kapat
:SHUTDOWN
cls
shutdown /s
pause
goto MENU

:: Bilgisayarı Yeniden Başlat
:RESTART
cls
shutdown /r
pause
goto MENU

:: Windows 10 Crack
:WIN_CRACK
cls 
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX 
slmgr /skms kms8.msguides.com
slmgr /ato
echo Windows 10 etkinleştirildi.Lütfen Kontrol Ediniz
pause
goto MENU

:: Windows Etkinleştirme (Key)
:ACTIVATE_WIN
cls
echo Windows 11 Lisansını Etkinleştirmeniz için bir ürün anahtarı girin:
set /p productkey=Ürün Anahtarınızı Girin: 
slmgr /ipk %productkey%
slmgr /skms kms8.msguides.com
slmgr /ato
echo Windows etkinleştirildi.Lütfen Kontrol Ediniz
pause
goto MENU

::Hedefe kadar izlenen yol
:TRACERT
cls
echo Tracert (Yol İzleme) başlatılıyor...
set /p ip=Yol izlenecek IP adresini girin: 
tracert %ip%
pause
goto MENU

::Yüklü Wifi Şifrelerini Gösterir
:WIFI_PASSWRD
cls
echo Wi-Fi Şifresi:
netsh wlan show profile name=* key=clear | findstr /i "Key Content"
pause
goto MENU

:: Gereksiz Dosyaları Temizleme
:TEMP_DEL
cls
set /p onay=Geçici dosyaların temizlenmesini onaylıyor musunuz ?(E/H):
if /i "%onay%"=="E" (
    echo Geçici dosyalar temizleniyor...

    :: %TEMP% Klasöründeki Dosyaları Sil
    del /q /f /s %TEMP%\*

    :: %WINDIR%\Temp Klasöründeki Dosyaları Sil
    del /q /f /s %WINDIR%\Temp\*

    :: Windows Temp Klasörünü Temizle
    cleanmgr /sagerun:1
    echo Temizlik tamamlandı.
) else (
    echo İşlem iptal edildi!
    pause
)
goto MENU



:: wevtutil üzerine eklemeler yapılacak
:: APPCILATION // SECURITY // SYSTEM 
:: wevtutil epl Security C:\security_event_log.evtx (LOG KAYDI İÇİN)
:: wevtutil eq (Security-Application-System) /f:(biçim:xml-text)/c:(count- son"c" kadar log)





::attrib -h -s /s /d C:\FOUND.* / Gizli dosyalar veya kurtarılmış dosyaları gösterme

