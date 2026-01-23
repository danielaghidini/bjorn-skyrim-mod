;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 13
Scriptname QF_DG04BjornMarriageQuest_05CD21E6 Extends Quest Hidden

;BEGIN ALIAS PROPERTY BardsLeapAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BardsLeapAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY XMarkerSummit
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_XMarkerSummit Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LoveInterestWedding
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LoveInterestWedding Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ChestRingAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ChestRingAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LoveInterest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LoveInterest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bjorn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Maramal
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Maramal Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
CompleteAllObjectives()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
CompleteAllObjectives()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
ChestRing.GetReference().Enable()
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

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveCompleted(20)
setObjectiveCompleted(30)
setObjectiveDisplayed(40)
ChestRing.GetReference().Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
setObjectiveCompleted(50)
SetObjectiveDisplayed(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
setObjectiveCompleted(40)
setObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property ChestRing  Auto  

Actor Property BjornRef  Auto  
