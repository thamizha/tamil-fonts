#Tamil fonts installer creation script
!include FontReg.nsh
!include FontName.nsh
!include WinMessages.nsh

Name "ThamiZha! Tamil Fonts pack "

!define VERSION "1.0"
!define PUBLISHER "ThamiZha! community - thamizha.com"

OutFile "thamizha-tamil-fonts-installer-${VERSION}.exe"

#Installer's VersionInfo
  VIProductVersion                   "1.0.0.0"
  VIAddVersionKey "CompanyName"      "${PUBLISHER}"
  VIAddVersionKey "ProductName"      "tamilfonts" 
  VIAddVersionKey "ProductVersion"   "${VERSION}"
  VIAddVersionKey "FileDescription"  "ThamiZha Tamil Fonts Installer"
  VIAddVersionKey "FileVersion"      "${VERSION}"
  VIAddVersionKey "LegalCopyright"   "${PUBLISHER}"
  VIAddVersionKey "OriginalFilename" "thamizha-tamil-fonts-pack-${VERSION}.exe"

RequestExecutionLevel admin

LicenseText "You must agree to this license before installing."
LicenseData "license.txt"
 
Section "Fonts"
 
  StrCpy $FONT_DIR $FONTS
   
  !insertmacro InstallTTFFont 'fontfiles\1094_ChemmozhiComic.ttf'
  !insertmacro InstallTTFFont 'fontfiles\1094_ChemmozhiParanar.ttf' 
  !insertmacro InstallTTFFont 'fontfiles\1094_ChemmozhiThendral.ttf'
  !insertmacro InstallTTFFont 'fontfiles\1094_ChemmozhiThenee.ttf'
  !insertmacro InstallTTFFont 'fontfiles\1094_ChemmozhiTimes.ttf' 
  !insertmacro InstallTTFFont 'fontfiles\1094_ChemmozhiVaigai.ttf' 
  !insertmacro InstallTTFFont 'fontfiles\Lohit-Tamil.ttf' 
  !insertmacro InstallTTFFont 'fontfiles\TAMUni-Tamil150.ttf'
  !insertmacro InstallTTFFont 'fontfiles\TAMUni-Tamil042.ttf'
  !insertmacro InstallTTFFont 'fontfiles\Uni-Tamil150.ttf'
  !insertmacro InstallTTFFont 'fontfiles\TAMUni-Tamil195.ttf'
  !insertmacro InstallTTFFont 'fontfiles\TABUni-Tamil032.ttf'
  !insertmacro InstallTTFFont 'fontfiles\TABUni-Tamil021.ttf'
  !insertmacro InstallTTFFont 'fontfiles\TAMUni-Tamil046.ttf'
  !insertmacro InstallTTFFont 'fontfiles\Uni-Tamil042.ttf'
  !insertmacro InstallTTFFont 'fontfiles\Uni-Tamil195.ttf'
  !insertmacro InstallTTFFont 'fontfiles\Uni-Tamil046.ttf'  
  SendMessage ${HWND_BROADCAST} ${WM_FONTCHANGE} 0 0 /TIMEOUT=5000
SectionEnd