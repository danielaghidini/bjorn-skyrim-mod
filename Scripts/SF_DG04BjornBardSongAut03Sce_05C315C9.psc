;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname SF_DG04BjornBardSongAut03Sce_05C315C9 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
BjornPlayLute.SetValue(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
BjornPlayLute.SetValue(0)
If GlobalAllSongs.GetValue() == 1
      SceneSong03.Start()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property BjornPlayLute  Auto  
GlobalVariable Property GlobalAllSongs  Auto  
Scene Property SceneSong03 Auto
