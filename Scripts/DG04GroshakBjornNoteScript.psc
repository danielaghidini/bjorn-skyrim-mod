;======================================================================================
; CATEGORY: Items and Objects
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Advances 'GroshakQuest' from stage 45 to 50 when the note is read by the player.
;======================================================================================
Scriptname DG04GroshakBjornNoteScript extends ObjectReference  

Quest Property GroshakQuest Auto  

event onRead()
	If GroshakQuest.GetStage() == 45
		GroshakQuest.SetStage(50)
	EndIf
endEvent


