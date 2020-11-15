	!define PRODUCT            "stack"
	!define STACK_DIR          "stack"
	!define STACK_VERSION      "0.1.0"
	!define STACK_BRANDINGTEXT "Stack language 0.1.0"
	CRCCheck On

	!include "${NSISDIR}\Contrib\Modern UI\System.nsh"
 
	OutFile "Stack.Windows.exe"
	ShowInstDetails "nevershow"
	ShowUninstDetails "nevershow"
 
	InstallDir "$PROGRAMFILES\${STACK_DIR}"

	!define MUI_WELCOMEPAGE  
	!define MUI_LICENSEPAGE
	!define MUI_DIRECTORYPAGE
	!define MUI_ABORTWARNING
	!define MUI_UNINSTALLER
	!define MUI_UNCONFIRMPAGE
	!define MUI_FINISHPAGE  
 
	!insertmacro MUI_LANGUAGE "English"

	!insertmacro MUI_SYSTEM
 
	LicenseData "..\README.md"

Section "install" Installation info
	File /r "..\build\*"

	CreateShortCut "$SMPROGRAMS\${PRODUCT}\Uninstall.lnk" "$INSTDIR\Uninstall.exe" "" "$INSTDIR\Uninstall.exe" 0
 
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "DisplayName" "${PRODUCT} (remove only)"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}" "UninstallString" "$INSTDIR\Uninstall.exe"

	WriteUninstaller "$INSTDIR\Uninstall.exe"
 
SectionEnd
 
  
Section "Uninstall"
	RMDir /r "$INSTDIR\*.*"    

	RMDir "$INSTDIR"
 
;Delete Uninstaller And Unistall Registry Entries
  DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\${PRODUCT}"
  DeleteRegKey HKEY_LOCAL_MACHINE "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT}"  
 
SectionEnd
 
 
;--------------------------------    
;MessageBox Section
 
 
;Function that calls a messagebox when installation finished correctly
Function .onInstSuccess
  MessageBox MB_OK "You have successfully installed ${STACK_BRANDINGTEXT}."
FunctionEnd
 
Function un.onUninstSuccess
  MessageBox MB_OK "You have successfully uninstalled ${STACK_BRANDINGTEXT}."
FunctionEnd