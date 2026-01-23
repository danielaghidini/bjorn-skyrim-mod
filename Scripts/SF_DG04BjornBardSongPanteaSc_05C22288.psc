;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname SF_DG04BjornBardSongPanteaSc_05C22288 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
(QuestFollow as DG04BjornCtrl).DismissFollower(BjornRef,0,0)
PackCollegeAlias.ForceRefTo(BjornRef)
BjornRef.EvaluatePackage()
GlobalBardDay.SetValue(Utility.GetCurrentGameTime())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property QuestFollow  Auto  

Actor Property BjornRef  Auto  

ReferenceAlias Property PackCollegeAlias  Auto  

GlobalVariable Property GlobalBardDay  Auto  

GlobalVariable Property GlobalTimerBjorn  Auto  
