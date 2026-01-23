;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 43
Scriptname QF_DG04BjornGroshakQuest_05B9824F Extends Quest Hidden

;BEGIN ALIAS PROPERTY Thug02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thug02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Bjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Bjorn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY BjornNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_BjornNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AdielleDead
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AdielleDead Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thug01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thug01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY XMarkerNewGnisis
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_XMarkerNewGnisis Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY AdielleVamp
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AdielleVamp Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY XMarkerDamphallDLC
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_XMarkerDamphallDLC Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Groshak
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Groshak Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Thug03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Thug03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Ulain
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Ulain Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GjalundWindhelm
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GjalundWindhelm Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_38
Function Fragment_38()
;BEGIN CODE
SetObjectiveCompleted(95)
SetObjectiveDisplayed(96)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_39
Function Fragment_39()
;BEGIN CODE
SetObjectiveCompleted(96)
SetObjectiveDisplayed(97)
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

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
SetObjectiveCompleted(20)
SetObjectiveDisplayed(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveCompleted(45)
setObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_30
Function Fragment_30()
;BEGIN CODE
SetObjectiveDisplayed(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
SetObjectiveCompleted(60)
SetObjectiveDisplayed(65)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
SetObjectiveCompleted(35)
setObjectiveDisplayed(40)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
SetObjectiveCompleted(50)
setObjectiveDisplayed(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_37
Function Fragment_37()
;BEGIN CODE
SetObjectiveCompleted(86)
SetObjectiveDisplayed(87)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_41
Function Fragment_41()
;BEGIN CODE
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
SetObjectiveCompleted(30)
setObjectiveDisplayed(35)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_32
Function Fragment_32()
;BEGIN CODE
Alias_Groshak.GetActorRef().SetRelationshipRank(Game.GetPlayer(), -4)
Alias_Groshak.GetActorRef().StartCombat(Game.GetPlayer())
Alias_Groshak.GetActorRef().GetActorBase().SetInvulnerable(false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveCompleted(5)
SetObjectiveCompleted(7)
SetObjectiveDisplayed(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_36
Function Fragment_36()
;BEGIN CODE
SetObjectiveDisplayed(86)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN CODE
;SetObjectiveDisplayed(75)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
SetObjectiveCompleted(65)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
SetObjectiveCompleted(5)
SetObjectiveDisplayed(7)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
Alias_Player.RegisterForSleep()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_40
Function Fragment_40()
;BEGIN CODE
Alias_Groshak.GetActorRef().SetRelationshipRank(Game.GetPlayer(), -4)
Alias_Groshak.GetActorRef().StartCombat(Alias_Bjorn.GetActorRef())
Alias_Bjorn.GetActorRef().StartCombat(Alias_Groshak.GetActorRef())
Alias_Groshak.GetActorRef().GetActorBase().SetInvulnerable(false)
Alias_Groshak.GetActorRef().GetActorBase().SetEssential(false)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
SetObjectiveCompleted(40)
SetObjectiveDisplayed(45)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
Game.GetPlayer().StopCombatAlarm()
Game.GetPlayer().StopCombat()
Alias_Bjorn.GetActorRef().StopCombat()
Alias_Groshak.GetActorRef().StopCombat()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_34
Function Fragment_34()
;BEGIN CODE
;Alias_AdielleDead.GetActorRef().GetActorBase().SetEssential(False)
;Alias_AdielleDead.GetActorRef().Kill(Alias_Groshak.GetActorRef())
;SceneGroshak.Start()
;Alias_Groshak.GetActorRef().GetActorBase().SetEssential(False)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
Alias_Bjorn.GetActorRef().MoveTo(Alias_XMarkerNewGnisis.GetReference())
SetObjectiveDisplayed(20)
Alias_Thug01.GetRef().Disable()
Alias_Thug02.GetRef().Disable()
Alias_Thug03.GetRef().Disable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_31
Function Fragment_31()
;BEGIN CODE
SetObjectiveCompleted(87)
SetObjectiveDisplayed(95)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_35
Function Fragment_35()
;BEGIN CODE
SetObjectiveDisplayed(93)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property ColdQuest  Auto  

Scene Property SceneGroshak  Auto  
