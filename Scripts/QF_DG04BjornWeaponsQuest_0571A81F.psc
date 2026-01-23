;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname QF_DG04BjornWeaponsQuest_0571A81F Extends Quest Hidden

;BEGIN ALIAS PROPERTY Gholug
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Gholug Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bjorn Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
MapMarker.AddToMap()
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property MapMarker  Auto  
