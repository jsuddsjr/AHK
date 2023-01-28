#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 2 ; any part of the title

^+1::
WinGetPos, X, Y, W, H, A
MsgBox, Active window is at %X%`,%Y% and its size is %W%x%H%
Return

; https://influencermarketinghub.com/youtube-video-size
#Up::WinMaximize, A   ; Maximize the active window
#Down::WinMinimize, A ; Minimize the active window
#Left::WinRestore, A  ; Restore the active window
#Right::WinClose, A   ; Close the active window

^#Up::WinMove, A,,,, 2560, 1440    ; 1440p
^#Right::WinMove, A,,,, 1920, 1080 ; 1080p
^#Left::WinMove, A,,,, 1280, 720   ; 720p
^#Down::WinMove, A,,,, 854, 480    ; 480p

; Find my window!
#F1::WinActivateBottom, ahk_exe msedge.exe
#F2::WinActivateBottom, ahk_exe code.exe
#F3::WinActivateBottom, ahk_exe devenv.exe
#F4::WinActivateBottom, ahk_exe Teams.exe
#F5::WinActivateBottom, ahk_exe Outlook.exe
