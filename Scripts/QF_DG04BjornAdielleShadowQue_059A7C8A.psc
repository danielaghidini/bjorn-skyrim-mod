;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 47
Scriptname QF_DG04BjornAdielleShadowQue_059A7C8A Extends Quest Hidden

;BEGIN ALIAS PROPERTY GroshakBanditNote01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GroshakBanditNote01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thruzar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thruzar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY InnLocation
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_InnLocation Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LSGoToShack
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LSGoToShack Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DireclawCamp
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DireclawCamp Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY XMarkerCellar
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_XMarkerCellar Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aliasEbonyBandit01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aliasEbonyBandit01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY XMarkerHallDB
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_XMarkerHallDB Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aliasEbonyBoss01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aliasEbonyBoss01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Adielle
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Adielle Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bjorn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LittleShadow
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LittleShadow Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ThruzarToLargashbur
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ThruzarToLargashbur Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NightMother
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NightMother Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DeadMansInn
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_DeadMansInn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aliasEbonyBanditDC02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aliasEbonyBanditDC02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GroshakBanditNote02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GroshakBanditNote02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aliasEbonyBandit02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aliasEbonyBandit02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aliasEbonyBandit03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aliasEbonyBandit03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AdielleTG
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AdielleTG Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aliasEbonyBanditDC01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aliasEbonyBanditDC01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY EbonyBanditGenerator
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_EbonyBanditGenerator Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DireclawChestAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DireclawChestAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY XMarkerDeadsMan
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_XMarkerDeadsMan Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AliasTrigger01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AliasTrigger01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LSKillPlayer
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LSKillPlayer Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AdielleANordholm
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AdielleANordholm Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Mauhulakh
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Mauhulakh Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LightCellar01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LightCellar01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LightCellar02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LightCellar02 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10)
Alias_Adielle.GetReference().Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN CODE
Alias_LSKillPlayer.GetActorRef().GetActorBase().SetEssential(False)
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;SetObjectiveCompleted(20)
SetStage(111)
;SetObjectiveDisplayed(111)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_41
Function Fragment_41()
;BEGIN CODE
SetObjectiveCompleted(2)
SetObjectiveDisplayed(92)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
SetObjectiveCompleted(150)
SetObjectiveDisplayed(160)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
Alias_Thruzar.ForceRefTo(ThruzarRef)
ThruzarRef.MoveTo(Alias_XMarkerDeadsMan.GetRef())
SetObjectiveCompleted(20)
SetObjectiveCompleted(21)
SetObjectiveCompleted(96)
SetObjectiveCompleted(99)
SetObjectiveCompleted(111)
SetObjectiveDisplayed(114)
LSNoFollow.SetValue(1)
Alias_aliasEbonyBandit01.ForceRefTo(Bandit01FalkREF)
Alias_aliasEbonyBandit02.ForceRefTo(Bandit02FalkREF)
Alias_aliasEbonyBandit03.ForceRefTo(Bandit03FalkREF)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_45
Function Fragment_45()
;BEGIN CODE
Alias_Thruzar.ForceRefTo(ThruzarRef)
SetObjectiveCompleted(3)
SetObjectiveCompleted(20)
SetObjectiveCompleted(21)
SetObjectiveCompleted(96)
SetObjectiveCompleted(111)
SetObjectiveDisplayed(114)
LSNoFollow.SetValue(1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_37
Function Fragment_37()
;BEGIN CODE
Alias_LSKillPlayer.GetActorRef().RemoveFromFaction(ThievesGuildFaction)
Alias_LSKillPlayer.GetActorRef().EvaluatePackage()
Alias_LSKillPlayer.GetActorRef().RemoveFromFaction(DG04BjornFaction)
Alias_LSKillPlayer.GetActorRef().AddToFaction(DBAttackPlayerFaction)
Alias_LSKillPlayer.GetActorRef().SetRelationshipRank(Game.GetPlayer(), -4)
Alias_LSKillPlayer.GetActorRef().StartCombat(Game.GetPlayer())
Alias_Bjorn.GetActorRef().GetActorBase().SetEssential(False)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
CompleteAllObjectives()
;Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_44
Function Fragment_44()
;BEGIN CODE
SetObjectiveDisplayed(3)
;ThruzarRef.Enable()
Alias_Thruzar.ForceRefTo(ThruzarRef)
ThruzarRef.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_43
Function Fragment_43()
;BEGIN CODE
SetObjectiveDisplayed(2)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_39
Function Fragment_39()
;BEGIN CODE
SetObjectiveCompleted(20)
LSReturnTo.Clear()
Alias_LSGoToShack.ForceRefTo(AdielleREF)
AdielleREF.EvaluatePackage()
SetStage(95)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
Alias_aliasEbonyBandit01.GetReference().Disable()
Alias_aliasEbonyBandit02.GetReference().Disable()
Alias_aliasEbonyBandit03.GetReference().Disable()
SetObjectiveCompleted(160)
AdielleREF.disable()
CompleteAllObjectives()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
SetObjectiveCompleted(110)
SetObjectiveDisplayed(111, false, false)
aliasThruzar.ForceRefTo(ThruzarREF)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_38
Function Fragment_38()
;BEGIN CODE
SetObjectiveCompleted(92)
SetObjectiveDisplayed(93)
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

;BEGIN FRAGMENT Fragment_42
Function Fragment_42()
;BEGIN CODE
SetObjectiveCompleted(93)
SetObjectiveDisplayed(96)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
Alias_Adielle.GetActorRef().Disable()
SetObjectiveCompleted(2)
SetObjectiveCompleted(3)
SetObjectiveCompleted(113)
SetObjectiveCompleted(114)
SetObjectiveDisplayed(130)
aliasBandit01.ForceRefTo(Bandit01REF)
aliasBandit02.ForceRefTo(Bandit02REF)
aliasBoss01.ForceRefTo(Boss01REF)
aliasChest.ForceRefTo(ChestREF)
aliasBandit01.GetReference().Enable()
aliasBandit02.GetReference().Enable()
aliasBoss01.GetReference().Enable()
aliasChest.GetReference().Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_46
Function Fragment_46()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(99)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Activator Property Scene01Trigger  Auto  

ReferenceAlias Property aliasEbonyBandit01  Auto  

ReferenceAlias Property aliasEbonyBandit02  Auto  

ReferenceAlias Property aliasEbonyBandit03  Auto  

ReferenceAlias Property aliasBandit01  Auto  

ReferenceAlias Property aliasBandit02  Auto  

ReferenceAlias Property aliasChest  Auto  

Actor Property Bandit01REF  Auto  

Actor Property Bandit02REF  Auto  

ObjectReference Property ChestREF  Auto  

Quest Property questGroshak  Auto  

Actor Property AdielleREF  Auto  

Actor Property AstridRef  Auto  

ObjectReference Property XMarkerDBHall  Auto  

ObjectReference Property XMarkerDeadsMan  Auto  

Actor Property ThruzarREF  Auto  

Quest Property DB04Quest  Auto  

ReferenceAlias Property AdielleANordholm  Auto  

ReferenceAlias Property aliasThruzar  Auto  

ReferenceAlias Property AliasBoss01  Auto  

Actor Property Boss01REF  Auto  

Faction Property DBAttackPlayerFaction  Auto  

Faction Property DG04BjornFaction  Auto  

Idle Property IdleInjured  Auto  

Scene Property SceneDDB02  Auto  

Quest Property questBjorn  Auto  

Actor Property BjornRef  Auto  

Scene Property SceneNightMother01  Auto  

ReferenceAlias Property LSReturnTo  Auto  

GlobalVariable Property LSNoFollow  Auto  

Actor Property Bandit01FalkREF  Auto  

Actor Property Bandit02FalkREF  Auto  

Actor Property Bandit03FalkREF  Auto  

Faction Property ThievesGuildFaction  Auto  
