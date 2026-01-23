;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname SF_DG04SoulQBjornUlainScene0_05897F23 Extends Scene Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
(BjornQuest as DG04BjornCtrl).SetFollower(BjornRef)
GetOwningQuest().SetStage(35)
BjornBadMood.SetValue(1)
BjornRef.AddItem(AdagaRef, 1);
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property BjornQuest  Auto  

Actor Property BjornRef  Auto  

GlobalVariable Property BjornBadMood  Auto  

WEAPON Property AdagaRef  Auto  
