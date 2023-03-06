#include <ScreenCapture.au3>
HotKeySet("^!s", "_ScreenCapture")
HotKeySet("^!e", '_exit')
While 1
    Sleep(100)
WEnd

Func _ScreenCapture()
    ; Nhập tên tập tin ảnh từ người dùng
    $input = InputBox("Nhập tên tập tin ảnh", "Vui lòng nhập tên tập tin ảnh (không bao gồm phần mở rộng)", "")
    ; Nếu người dùng nhập tên tập tin
    If $input <> "" Then
        ; Chụp ảnh màn hình và lưu vào thư mục script
Beep(1000, 100)
		        _ScreenCapture_Capture(@ScriptDir & '\' &  $input & '.jpg')
MsgBox(64, 'hoan hô!', 'lưu ảnh thành công')
    EndIf
EndFunc

Func _exit()
MsgBox(0, 'được rồi', 'thoát trương chình thành công')
Exit

EndFunc