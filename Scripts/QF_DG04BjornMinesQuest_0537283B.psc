;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 23
Scriptname QF_DG04BjornMinesQuest_0537283B Extends Quest Hidden

;BEGIN ALIAS PROPERTY Bjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bjorn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY UlainRunAway
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_UlainRunAway Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardEbondrawnDoor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardEbondrawnDoor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardEbondrawnMine02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardEbondrawnMine02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY EbondrawnMine
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_EbondrawnMine Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Lorzub
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Lorzub Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LittleShadowShip
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LittleShadowShip Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY XMarkerUlain
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_XMarkerUlain Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Barni
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Barni Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY UlainBandit
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_UlainBandit Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SlaveMine01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SlaveMine01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY UlainFollow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_UlainFollow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardEbondrawnMine01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardEbondrawnMine01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY EbondrawnMineLoc
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_EbondrawnMineLoc Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Ulain
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Ulain Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY UlainEbondrawn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_UlainEbondrawn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY StandsInShallows
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_StandsInShallows Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardMine01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardMine01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SlaveMine03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SlaveMine03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY SlaveMine02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_SlaveMine02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardEbondrawnMine03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardEbondrawnMine03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LittleShadow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LittleShadow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardMine02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardMine02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GuardMine03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GuardMine03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Torborn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Torborn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Igrit
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Igrit Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
SetObjectiveCompleted(92)
SetObjectiveDisplayed(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
SetObjectiveCompleted(35)
setObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
SetObjectiveCompleted(50)
setObjectiveDisplayed(90)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
setObjectiveDisplayed(55)
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

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveCompleted(10)
setObjectiveDisplayed(15)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
CompleteAllObjectives()
Alias_SlaveMine01.GetActorRef().Disable()
Alias_SlaveMine02.GetActorRef().Disable()
Alias_SlaveMine03.GetActorRef().Disable()
Alias_Igrit.GetActorRef().Disable()
Alias_Torborn.GetActorRef().Disable()
Alias_GuardEbondrawnDoor.GetActorRef().Disable()
ChildQuest.SetStage(15)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
SetObjectiveCompleted(30)
setObjectiveDisplayed(35)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Alias_StandsInShallows.ForceRefTo(StandsInShallowsREF)
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
setObjectiveCompleted(55)
setObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
SetObjectiveCompleted(75)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
SetObjectiveCompleted(25)
setObjectiveDisplayed(30)
Alias_Bjorn.ForceRefTo(BjornREF)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
SetObjectiveCompleted(90)
setObjectiveDisplayed(91)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
SetObjectiveCompleted(70)
setObjectiveDisplayed(75)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
setObjectiveCompleted(40)
setObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(25)
;Alias_UlainBandit.Clear()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
SetObjectiveCompleted(90)
SetObjectiveCompleted(91)
setObjectiveDisplayed(92)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
SetObjectiveCompleted(60)
SetObjectiveDisplayed(72)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveCompleted(15)
Alias_XMarkerUlain.ForceRefTo(XMarkerUlain)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property StandsInShallowsREF  Auto  

ObjectReference Property XMarkerUlain  Auto  

Actor Property BjornRef  Auto  

Quest Property ChildQuest  Auto  
