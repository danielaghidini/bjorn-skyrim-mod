;======================================================================================
; CATEGORY: Magic and Abilities
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Trigger script that teleports Bjorn to the player and advances 'BMQuest' to stage 40 
; when the player enters, provided stage is 30.
;======================================================================================
Scriptname DG04BjornLeapScript extends ObjectReference  

Quest Property BMQuest Auto

Event OnTriggerEnter(ObjectReference AkActivator)
	If(game.getPlayer()==AkActivator) && BMQuest.GetStage() == 30			
			BjornREF.MoveTo(game.getPlayer(), 200)
			BMQuest.SetStage(40)
	EndIf
EndEvent

Actor Property BjornRef  Auto  

