;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname QF_DG04BjornThruzarFollowQue_05308215 Extends Quest Hidden

;BEGIN ALIAS PROPERTY ThruzarCourage
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ThruzarCourage Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thruzar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thruzar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bjorn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ThruzarMapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ThruzarMapMarker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Alias_Thruzar.ForceREFTo(ThruzarREF)
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;SetObjectiveDisplayed(15)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property QuestThruzar  Auto  

Actor Property ThruzarREF  Auto  
