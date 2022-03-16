;Script by Moster
;Some of the code stolen by Specnr, the tts (im sorry)
;This macro is kinda slow but once there is tabbable selecting i can release tccrm 2.
; ^ means ctrl and * means shift. Feel free to change if you want (ps. do NOT remove the double colons)

#NoEnv
#Warn
SetWorkingDir %A_ScriptDir%
#SingleInstance Force

#IfWinActive, The Colorful Creature

global disableTTS = False ; if you want to have this on, go for it, if not, go for it. okayge
if (!disableTTS)
  ComObjCreate("SAPI.SpVoice").Speak("Time for resetting, gamer")


MenuReset()
{
	SetKeyDelay, 50
	Send, {Click 500 750} {Click 650 450}
	SetKeyDelay, 50
	Send, y
}

InGameReset()
{
	SetKeyDelay, 50
	Send, {esc} {Click, 980 700} {Click, 500 750} {Click, 660 450}
	SetKeyDelay, 50
	Send, y
}

^y:: ; Menu Run Macro
MenuReset()
return

^u:: ; In-Game Resetting
InGameReset()
return
