;======================================================================================
; CATEGORY: Triggers and Events
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Manages Adielle's presence and faction membership in the Thieves Guild based on quest 
; progression (LSQuest, DBDestroyQuest).
;======================================================================================
Scriptname DG04BjornTGTriggerScript extends ObjectReference  


Quest Property DBDestroyQuest Auto
Quest Property TG04 Auto
Quest Property BjornQuestWWT Auto
Quest Property LSQuest Auto

Actor Property AdielleREF  Auto  
Actor Property DelvinREF Auto

ReferenceAlias Property AliasAdielleTG Auto

Faction Property ThievesGuildFaction  Auto  
Faction Property DarkBrotherhoodFaction  Auto  

GlobalVariable Property BjornFriendship Auto


Function InitAdielleTG()

		AdielleREF.Enable()
		Utility.Wait(1.0)
		AdielleREF.AddToFaction(ThievesGuildFaction)
		AliasAdielleTG.ForceRefTo(AdielleREF)
		AdielleREF.EvaluatePackage()
		AdielleREF.MoveTo(DelvinREF)

EndFunction


Event OnTriggerEnter(ObjectReference akActionRef)

	int DBDestroyStage = DBDestroyQuest.GetStage()
	If akActionRef == Game.GetPlayer() && DBDestroyStage < 10
		If LSQuest.GetStage() < 20 && BjornQuestWWT.GetStage() >=40
			InitAdielleTG()
		EndIf
	EndIf

	If akActionRef ==  Game.GetPlayer() && LSQuest.GetStage() >= 130
		AdielleREF.disable()
	EndIf

	If akActionRef ==  Game.GetPlayer() && DBDestroyStage > 10
		;AdielleREF.disable()
	EndIf

EndEvent