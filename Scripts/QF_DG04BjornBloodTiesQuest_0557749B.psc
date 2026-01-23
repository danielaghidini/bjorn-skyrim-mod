;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 26
Scriptname QF_DG04BjornBloodTiesQuest_0557749B Extends Quest Hidden

;BEGIN ALIAS PROPERTY BookRitual
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BookRitual Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LSShackMarkerInt
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LSShackMarkerInt Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CragwallowForge
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CragwallowForge Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerH
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerH Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY WinterholdInn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_WinterholdInn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LittleShadow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LittleShadow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Roggvar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Roggvar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Slave05
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Slave05 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Slave03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Slave03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LSShackMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LSShackMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY XMarkerNightstoneExt
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_XMarkerNightstoneExt Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY UlainToNewGnisis
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_UlainToNewGnisis Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LSFrostMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LSFrostMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Slave02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Slave02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NighstoneMineGuard01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NighstoneMineGuard01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Slave06
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Slave06 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY OldOrc
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_OldOrc Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GroshakJournal
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GroshakJournal Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bjorn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Ulain
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Ulain Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BjornSlave
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BjornSlave Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RoggvarFollow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RoggvarFollow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Slave01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Slave01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Slave04
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Slave04 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NightstoneChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NightstoneChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY XMarkerNightstone
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_XMarkerNightstone Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY XMarkerBanditsNightstone
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_XMarkerBanditsNightstone Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY UlainFollow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_UlainFollow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Nanoud
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Nanoud Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
Alias_LittleShadow.GetActorRef().Enable()
Alias_LittleShadow.GetActorRef().GetActorBase().SetInvulnerable(true)
Alias_LittleShadow.GetActorRef().MoveTo(Alias_LSFrostMarker.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
SetObjectiveCompleted(85)
SetObjectiveDisplayed(110)
SetObjectiveDisplayed(115)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
SetObjectiveCompleted(60)
;SetObjectiveCompleted(65)
SetObjectiveDisplayed(70)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
SetObjectiveDisplayed(180)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
SetObjectiveCompleted(30)
setObjectiveDisplayed(50)
Alias_PlayerH.Clear()
Game.GetPlayer().StopCombatAlarm()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
SetObjectiveCompleted(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
SetObjectiveCompleted(130)
SetObjectiveDisplayed(140)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
SetObjectiveDisplayed(175)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
SetObjectiveCompleted(30)
setObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN CODE
SetObjectiveCompleted(140)
SetObjectiveCompleted(175)
Alias_Slave01.GetRef().Disable()
Alias_Slave02.GetRef().Disable()
Alias_Slave03.GetRef().Disable()
Alias_Slave04.GetRef().Disable()
Alias_Slave05.GetRef().Disable()
Alias_Slave06.GetRef().Disable()
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
SetObjectiveCompleted(70)
Alias_UlainFollow.Clear()
Alias_Ulain.GetActorRef().EvaluatePackage()
SetObjectiveDisplayed(85)
Alias_LittleShadow.GetActorRef().SetRelationshipRank(Alias_Ulain.GetActorRef(), 3)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveCompleted(15)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
;Alias_Bjorn.GetActorRef().StopCombat()
;Alias_Bjorn.GetActorRef().EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
setObjectiveDisplayed(65)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
SetObjectiveCompleted(120)
SetObjectiveDisplayed(130)
Alias_LittleShadow.GetRef().Disable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
SetObjectiveCompleted(10)
setObjectiveDisplayed(15)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
SetObjectiveCompleted(90)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
Alias_OldOrc.ForceRefTo(OldOrcRef)
Alias_GroshakJournal.GetRef().Enable()
Alias_BookRitual.GetRef().Enable()
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
SetObjectiveCompleted(110)
SetObjectiveDisplayed(120)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property OldOrcREF  Auto  
