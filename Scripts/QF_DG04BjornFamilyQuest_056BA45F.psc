;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 16
Scriptname QF_DG04BjornFamilyQuest_056BA45F Extends Quest Hidden

;BEGIN ALIAS PROPERTY Bjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bjorn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thruzar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thruzar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY OrcsQuestItem
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_OrcsQuestItem Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Orc_Chief
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Orc_Chief Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY MapMarkerNordholm
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_MapMarkerNordholm Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LittleShadow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LittleShadow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Garakh
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Garakh Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Yatul
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Yatul Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveCompleted(50)
SetObjectiveDisplayed(60)
Alias_Thruzar.ForceRefTo(ThruzarREF)
Alias_Thruzar.GetReference().Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
setObjectiveCompleted(40)
setObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
SetObjectiveCompleted(80)
SetObjectiveDisplayed(85)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
setObjectiveCompleted(30)
setObjectiveDisplayed(40)
Alias_Bjorn.GetReference().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
setObjectiveDisplayed(30)
Alias_MapMarkerNordholm.GetReference().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
SetObjectiveCompleted(80)
SetObjectiveDisplayed(75)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
SetObjectiveCompleted(100)
SetObjectiveDisplayed(105)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
SetObjectiveCompleted(70)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
SetObjectiveCompleted(90)
SetObjectiveCompleted(95)
SetObjectiveDisplayed(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveCompleted(60)
SetObjectiveDisplayed(70)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
SetObjectiveCompleted(100)
CompleteAllObjectives()
GlobalLSNoFollow.SetValue(0)
;stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
SetObjectiveCompleted(80)
SetObjectiveCompleted(90)
SetObjectiveDisplayed(95)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
SetObjectiveCompleted(70)
SetObjectiveCompleted(75)
SetObjectiveCompleted(80)
SetObjectiveCompleted(85)
SetObjectiveDisplayed(90)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment



ReferenceAlias Property PlayerRef  Auto  

Faction Property PlayerFaction  Auto  

Actor Property ThruzarREF  Auto  

Quest Property QuestOrcs  Auto  

GlobalVariable Property globalLSNoFollow  Auto  

Quest Property OrcsQuest  Auto  

Armor Property ItemQuestAlias  Auto  

Faction Property OrcFriendFaction  Auto  

Quest Property DialogueOrcsQuest  Auto  
