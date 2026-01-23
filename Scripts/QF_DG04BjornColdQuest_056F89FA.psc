;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 21
Scriptname QF_DG04BjornColdQuest_056F89FA Extends Quest Hidden

;BEGIN ALIAS PROPERTY Barni
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Barni Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ShagraFollower
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ShagraFollower Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bjorn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thruzar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thruzar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thurak
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thurak Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Lorzub
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Lorzub Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ShagraBasement
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ShagraBasement Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GloomSpawn03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GloomSpawn03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CragwallowDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CragwallowDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NoteThruzar01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NoteThruzar01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GloomSpawn02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GloomSpawn02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GloomSpawn01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GloomSpawn01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NoteLS01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NoteLS01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Shagra
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Shagra Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveCompleted(5)
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(5)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
SetObjectiveCompleted(70)
setObjectiveDisplayed(85)
Alias_Thruzar.GetActorRef().GetActorBase().SetInvulnerable(false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
setObjectiveCompleted(40)
setObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
setObjectiveCompleted(85)
;setObjectiveDisplayed(90)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
setObjectiveCompleted(30)
setObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE DG04ColdQuestCtrl
Quest __temp = self as Quest
DG04ColdQuestCtrl kmyQuest = __temp as DG04ColdQuestCtrl
;END AUTOCAST
;BEGIN CODE
;(kmyQuest as DG04ColdQuestCtrl).BjornLearnSpells(Alias_Bjorn.GetActorRef())
;Debug.Notification("Bjorn can now heal himself")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
SetObjectiveDisplayed(15)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
SetObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
SetObjectiveCompleted(115)
SetObjectiveDisplayed(120)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
;SetObjectiveCompleted(130)
;SetObjectiveCompleted(140)
CompleteAllObjectives()
;SoulQuest.SetStage(5)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
SetObjectiveDisplayed(130)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
setObjectiveCompleted(15)
setObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;setObjectiveCompleted(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
setObjectiveDisplayed(115)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;SetObjectiveCompleted(20)
;SetObjectiveDisplayed(25)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
SetObjectiveCompleted(60)
SetObjectiveDisplayed(70)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;setObjectiveCompleted(90)
setObjectiveDisplayed(100)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Book Property NoteLS01REF  Auto  

Quest Property AliasWICourier  Auto  

Quest Property SoulQuest  Auto  
