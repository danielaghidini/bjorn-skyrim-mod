;======================================================================================
; CATEGORY: Miscellaneous
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Trigger script for 'Bards Leap'. Initializes aliases and advances 'BMQuest' from stage 10 
; to 20 when triggered.
;======================================================================================
Scriptname DG04BjornBardsLeapScript extends ObjectReference  

Quest Property BMQuest Auto

Event OnTriggerEnter(ObjectReference AkActivator)
	If(game.getPlayer()==AkActivator) && BMQuest.GetStage() == 10
			XMarkerLeap.ForceRefTo(XMarkerSummit)
			Bjorn.ForceRefTo(BjornREF)
			ChestRing.ForceRefTo(ChestRingREF)
			BMQuest.SetObjectiveCompleted(10)
			BMQuest.SetStage(20)
			BMQuest.SetObjectiveDisplayed(20)
	EndIf
EndEvent

ReferenceAlias Property XMarkerLeap  Auto  
ReferenceAlias Property Bjorn  Auto  
ReferenceAlias Property ChestRing  Auto  
ObjectReference Property XMarkerSummit  Auto  
Actor Property BjornRef  Auto  
ObjectReference Property ChestRingREF  Auto  
