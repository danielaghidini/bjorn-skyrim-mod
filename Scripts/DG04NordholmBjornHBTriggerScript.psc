;======================================================================================
; CATEGORY: Triggers and Events
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Trigger script that updates stages for Child and Cold quests and starts related scenes 
; when the player enters with Bjorn.
;======================================================================================
Scriptname DG04NordholmBjornHBTriggerScript extends ObjectReference  

Quest Property ChildQuest Auto
Quest Property ColdQuest Auto

Actor Property BjornRef Auto
Actor Property BarniRef Auto
Scene Property SceneBjorn Auto
Scene Property SceneBarni01 Auto
Scene Property SceneBasement Auto

Faction Property DismissedFollowerFaction Auto

Faction Property CurrentFollowerFaction Auto

Event OnTriggerEnter(ObjectReference akActionRef)

	int ChildStage = ChildQuest.GetStage()
	int ColdStage = ColdQuest.GetStage()
 	if akActionRef == Game.GetPlayer() && BjornRef.IsInFaction(CurrentFollowerFaction)
     		if ChildStage == 50
			ChildQuest.SetStage(51)
			SceneBjorn.Start()
		EndIf
		if ColdStage == 20
			ColdQuest.SetStage(25)
			SceneBarni01.Start()
		EndIf
		if ColdStage == 120
			BarniREF.AddToFaction(DismissedFollowerFaction)
			ColdQuest.SetObjectiveCompleted(120)
			SceneBasement.Start()			
		EndIf
	EndIf

EndEvent




