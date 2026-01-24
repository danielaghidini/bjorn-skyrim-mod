;======================================================================================
; CATEGORY: Quests and Scenes
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Trigger script that starts scenes based on quest stages when the player enters the trigger.
;======================================================================================

Scriptname DG04AbandonedShackIntTriggerScript extends ObjectReference  

;======================================================================================
; PROPERTIES
;======================================================================================
Quest Property LSQuest Auto
Actor Property AdielleREF Auto
Actor Property BjornREF Auto
Actor Property PlayerREF Auto
Faction Property CurrentFollowerFaction Auto
Quest Property BjornFollowQuest Auto
Quest Property AdielleFollowQuest Auto
Quest Property DBDestroy Auto
ReferenceAlias Property AdielleTG Auto

;======================================================================================
; EVENTS
;======================================================================================

Event OnTriggerEnter(ObjectReference akActionRef)
	int QuestStage = LSQuest.GetStage()
		If akActionRef == PlayerREF && AdielleFollowQuest.GetStage() == 170
			AdielleREF.disable()
		EndIf
		If  akActionRef == PlayerREF && BjornREF.IsInFaction(CurrentFollowerFaction)
			(BjornFollowQuest as DG04BjornCtrl).FollowerRelax(BjornRef)
		EndIf	
		If  akActionRef == PlayerREF && BjornREF.IsInFaction(CurrentFollowerFaction)
			(AdielleFollowQuest as DG04AdielleCtrl).DismissFollower(0,0)
			AdielleTG.Clear()
		EndIf
EndEvent
