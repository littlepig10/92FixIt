;; 92FixIt for Windows
;; Mac style hotkeys
;; Version: FX.MSH-170813A

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN

#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
#SingleInstance force ; Single instance, only newest one
SetTitleMatchMode RegEx
SetTitleMatchMode Slow

; Force close
#InputLevel 0
$#+q Up::WinKill, A, , 0
$#q Up::send, !{f4}

; mimic Shift+Delete
#InputLevel 0
$+Backspace::send, +{Delete} ;shift+Backspace
$^Backspace::send, +{Delete} ;ctrl+Backspace
$^+Backspace::send, +{Delete} ;ctrl+shift+Backspace

; cmd+X series
#InputLevel 0
$#x::send, ^x
$#c::send, ^c
$#v::send, ^v
$#s::send, ^s
$#a::send, ^a
$#z::send, ^z

; PrintScreen series
#InputLevel 0
; $^+#4::
$^+#3::send, {PrintScreen}
$+#4::send ^+#4
; $+#3::
