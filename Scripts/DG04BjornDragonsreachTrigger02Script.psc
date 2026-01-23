;======================================================================================
; CATEGORY: Triggers and Events
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Placeholder trigger script for Dragonsreach, currently contains no active logic.
;======================================================================================
Scriptname DG04BjornDragonsreachTrigger02Script extends ObjectReference  

Event OnTriggerEnter(ObjectReference AkActivator)
    If(game.getPlayer()==AkActivator)	
    Endif
EndEvent
