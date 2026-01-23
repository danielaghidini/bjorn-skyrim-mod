;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname QF_DG04BjornAdielleFollowQue_059A2B86 Extends Quest Hidden

;BEGIN ALIAS PROPERTY LSNoFollow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LSNoFollow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Adielle
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Adielle Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AdielleVamp
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AdielleVamp Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AdielleTG
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AdielleTG Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LSReturnTo
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LSReturnTo Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AdielleFinalMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AdielleFinalMarker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveDisplayed(70)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;SetObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(70, false)
SetObjectiveDisplayed(80)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
