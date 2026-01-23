;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 14
Scriptname QF_DG04BjornThruzarQuest_0530820A Extends Quest Hidden

;BEGIN ALIAS PROPERTY XMarkerRedwater
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_XMarkerRedwater Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ShagraRiftWatchtower
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ShagraRiftWatchtower Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thruzar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thruzar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ThruzarRiftWatchtower
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ThruzarRiftWatchtower Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bjorn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY StandsInShallows
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_StandsInShallows Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BanditMeleeRift02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BanditMeleeRift02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BanditChiefRift01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BanditChiefRift01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Shagra
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Shagra Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BanditMeleeRift01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BanditMeleeRift01 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
SetObjectiveCompleted(80)
SetObjectiveDisplayed(85)
ShagraREF.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
SetObjectiveCompleted(40)
SetObjectiveDisplayed(45)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Alias_Thruzar.ForceRefTo(ThruzarREF)
Alias_Bjorn.ForceRefTo(BjornREF)
Alias_Thruzar.GetRef().MoveTo(Game.GetPlayer(), 1200.0, 0.0, 0.0)
setObjectiveCompleted(5)
setObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
SetObjectiveCompleted(70)
SetObjectiveDisplayed(80)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
setObjectiveCompleted(30)
setObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
SetObjectiveDisplayed(5)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
SetObjectiveCompleted(90)
SetObjectiveCompleted(91)
QuestMines.SetStage(10)
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

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
Alias_StandsInShallows.ForceRefTo(StandsInShallowsREF)
setObjectiveCompleted(10)
setObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
SetObjectiveCompleted(45)
Alias_Shagra.ForceRefTo(ShagraREF)
Alias_Shagra.GetReference().Enable()
SetObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
SetObjectiveCompleted(85)
;SetObjectiveDisplayed(90)
SetObjectiveDisplayed(91)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property ThruzarREF  Auto  

Actor Property BjornRef  Auto  

Quest Property QuestFollow  Auto  

Actor Property StandsInShallowsREF  Auto  

Actor Property ShagraREF  Auto  

Actor Property BanditChiefREF  Auto  

Quest Property QuestMines  Auto  

Quest Property QuestThruzar  Auto  
