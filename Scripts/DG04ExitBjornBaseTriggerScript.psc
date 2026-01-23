;======================================================================================
; CATEGORY: Triggers and Events
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Updates ColdQuest stage to 50 when the player exits Bjorn's base (trigger enter) 
; while Bjorn is following.
;======================================================================================
Scriptname DG04ExitBjornBaseTriggerScript extends ObjectReference  

Quest Property ColdQuest Auto
Actor Property BjornRef Auto
Faction Property CurrentFollowerFaction Auto

Event OnTriggerEnter(ObjectReference akActionRef)
	int ColdStage = ColdQuest.GetStage()
 	if BjornRef.IsInFaction(CurrentFollowerFaction)
     		if ColdStage == 30
			ColdQuest.SetStage(50)
		EndIf
	EndIf
EndEvent


