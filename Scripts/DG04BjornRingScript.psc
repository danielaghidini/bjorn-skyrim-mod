;======================================================================================
; CATEGORY: Items and Objects
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Handles quest progression for Marriage Quest. When picked up by the player at specific stages, 
; it auto-equips the ring on Bjorn and advances the quest.
;======================================================================================
Scriptname DG04BjornRingScript extends ObjectReference  

Quest Property QuestRing  Auto  

Armor Property RingBjorn Auto

Actor Property BjornREF Auto

Event OnContainerChanged(ObjectReference newContainer, ObjectReference oldContainer)

	if (newContainer == Game.GetPlayer()) && QuestRing.GetStage () == 30 ||  (newContainer == Game.GetPlayer()) && QuestRing.GetStage () == 40
		QuestRing.SetObjectiveCompleted(30)
		QuestRing.SetObjectiveCompleted(40)
		QuestRing.SetStage(50)
		BjornREF.AddItem(RingBjorn, 1)		
		BjornREF.EquipItem(RingBjorn)
	endif

EndEvent