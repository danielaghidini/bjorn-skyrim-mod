;======================================================================================
; CATEGORY: Quests and Scenes
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Trigger script that starts various memory scenes (Scene01, Scene02 etc.) based on Main Quest 
; stages when the player enters the trigger.
;======================================================================================
Scriptname DG04BjornMemSceneTriggerScript extends ObjectReference  

Scene Property Scene01  Auto
Scene Property Scene02  Auto
Scene Property Scene03 Auto
Scene Property Scene07 Auto

Quest Property MQQuest Auto
Quest Property MQQuest02 Auto
Quest Property MQQuest03 Auto
Quest Property MQQuest301 Auto

Actor Property BjornREF Auto
ReferenceAlias Property BjornAlias Auto
Actor Property LydiaREF Auto
ReferenceAlias Property LydiaAlias Auto

Event OnTriggerEnter(ObjectReference akActionRef)
	int QuestStage = MQQuest.GetStage()
	int QuestStage02 = MQQuest02.GetStage()
	int QuestStage03 = MQQuest03.GetStage()
	int QuestStage301 = MQQuest301.GetStage()
	BjornAlias.ForceRefTo(BjornREF)
	LydiaAlias.ForceRefTo(LydiaREF)

	If akActionRef == Game.GetPlayer() && QuestStage == 75
     		Scene01.Start()
	EndIf

	If akActionRef == Game.GetPlayer() && QuestStage02 == 180
     		Scene02.Start()
	EndIf

	If akActionRef == Game.GetPlayer() && QuestStage03 == 10
     		Scene03.Start()
	EndIf

	If akActionRef == Game.GetPlayer() && QuestStage301 == 25
     		Scene07.Start()
	EndIf

EndEvent