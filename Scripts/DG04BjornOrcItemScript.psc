;======================================================================================
; CATEGORY: Items and Objects
; PARENT SCRIPT: ReferenceAlias
;
; DESCRIPTION:
; Updates 'QuestFamily' to stage 85 when the item is picked up by the player, 
; if the quest is past stage 70.
;======================================================================================
Scriptname DG04BjornOrcItemScript extends ReferenceAlias  

Quest Property QuestFamily  Auto  

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)
	if (newContainer == Game.GetPlayer()) && QuestFamily.GetStage () > 70
		QuestFamily.SetStage(85)
	endif
EndEvent