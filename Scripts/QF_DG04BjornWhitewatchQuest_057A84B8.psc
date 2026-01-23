;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 7
Scriptname QF_DG04BjornWhitewatchQuest_057A84B8 Extends Quest Hidden

;BEGIN ALIAS PROPERTY WhitewatchTrigger
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WhitewatchTrigger Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BanditChief01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BanditChief01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bjorn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WhitewatchMapMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WhitewatchMapMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BanditMelee01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BanditMelee01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BanditMelee02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BanditMelee02 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
ReferenceAlias Property aliasTrigger  Auto  

ReferenceAlias Property aliasBandit01  Auto  

ReferenceAlias Property aliasBandit02  Auto  

ReferenceAlias Property aliasBandit03  Auto  

GlobalVariable Property globalInn  Auto  
