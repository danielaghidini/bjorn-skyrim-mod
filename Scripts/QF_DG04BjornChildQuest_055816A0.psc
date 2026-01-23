;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 9
Scriptname QF_DG04BjornChildQuest_055816A0 Extends Quest Hidden

;BEGIN ALIAS PROPERTY GragwallowSlopeLocation
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_GragwallowSlopeLocation Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Lorzub
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Lorzub Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Barni
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Barni Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Nordholm
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_Nordholm Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LorzubFollow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LorzubFollow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bjorn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NordholmAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NordholmAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GragwallowSlope
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GragwallowSlope Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BarniNordholm
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BarniNordholm Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
setObjectiveCompleted(40)
setObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveCompleted(50)
setObjectiveDisplayed(55)
Alias_Lorzub.GetActorRef().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveCompleted(20)
setObjectiveDisplayed(25)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
setObjectiveCompleted(55)
;stop()
;setObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveCompleted(10)
setObjectiveDisplayed(15)
SetObjectiveDisplayed(16)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
setObjectiveCompleted(15)
setObjectiveCompleted(16)
;setObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
setObjectiveCompleted(25)
setObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
setObjectiveCompleted(30)
setObjectiveDisplayed(40)
QuestBarniFollow.SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property QuestBarniFollow  Auto  
