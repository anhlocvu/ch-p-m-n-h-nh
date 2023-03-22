#include <GUIConstants.au3>
#include <ColorConstants.au3>
#include <ScreenCapture.au3>

HotKeySet('!^c', 'catture')
While True
WEnd


Func catture()
GUICreate('Capture_', 300, 300)
GUISetBkColor($COLOR_BLUE)
$lb_filename=GUICtrlCreateLabel('file name', 10, 10, 280, 20)
$enter_filename=GUICtrlCreateInput('', 10, 40, 199, 20)
$brow=GUICtrlCreateButton('brow', 250, 40, 50, 20)
$jpg=GUICtrlCreateCheckbox('jpg', 10, 80, 280,20)
$png=GUICtrlCreateCheckbox('png', 10, 1200, 280,20)
 Global $f


GUISetState()
While True
$msg=GUIGetMsg()
if $msg=$GUI_EVENT_CLOSE Then
Exit

EndIf

if $msg=$brow Then
$f=FileSelectFolder('Select Folder', '')
EndIf


if $msg=$jpg Then
$doc=GUICtrlRead($enter_filename)
GUIDelete()

_ScreenCapture_Capture($f & '\' & $doc & '.jpg')
MsgBox(64, 'hooray!', 'screenshot successful')
Exit
ElseIf $msg=$png Then
$doc=GUICtrlRead($enter_filename)
GUIDelete()

_ScreenCapture_Capture($f & '\' & $doc & '.png')
MsgBox(64, 'hooray!', 'screenshot successful')
Exit

EndIf
WEnd

EndFunc