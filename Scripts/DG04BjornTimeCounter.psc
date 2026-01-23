;======================================================================================
; CATEGORY: Miscellaneous
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Central heartbeat script that checks quest stages and conditions to trigger appropriate 
; scenes and updates for the Main Quest, Guilds, and custom quests.
;======================================================================================
Scriptname DG04BjornTimeCounter extends Quest

Actor Property BjornRef Auto
Actor Property UlainRef Auto
Actor Property LSRef Auto

Faction Property CurrentFollowerFaction Auto

GlobalVariable Property BjornTimeCounter Auto

Quest Property DBDestroy Auto
Quest Property QuestLS Auto
Quest Property QuestBMines Auto
Quest Property QuestPAlduin Auto
Quest Property QuestPCompanions Auto
Quest Property QuestPDBrotherhood Auto
Quest Property QuestScenes Auto
Quest Property MQ103 Auto
Quest Property MQ305 Auto
Quest Property C00 Auto
Quest Property C06 Auto
Quest Property DB01 Auto
Quest Property DB11 Auto
Quest Property BloodQuest Auto
Quest Property ColdQuest Auto
Quest Property SoulQuest Auto
Quest Property NemesisQuest Auto

ObjectReference Property LSMarker Auto

Key Property FrostMineKey Auto

Function ScenesTrigger()
	;Updates
	if BloodQuest.GetStage() == 15
		BloodQuest.SetStage(20)
	endif
	if ColdQuest.GetStage() == 5
		ColdQuest.SetStage(10)
	endif

	;Bugs
	If QuestBMines.GetStage() >= 110 && UlainRef.GetRelationshipRank(Game.GetPlayer()) < 3
		UlainRef.SetRelationshipRank(Game.GetPlayer(), 3)
	EndIf
	If SoulQuest.GetStage() >= 5 && SoulQuest.GetStage()  < 200
		(SoulQuest as DG04SoulQuestCtrl).UpdateQuest()
	EndIf

	;Quests Scenes
	
	if QuestBMines.GetStage() > 0 && QuestBMines.GetStage() < 110
		(QuestBMines as DG04MinesScenesCtrl).ScenesTriggerMines()
	endIf

	if MQ103.GetStage() > 0 && MQ305.GetStage() < 200
		(QuestPAlduin as DG04MQScenesCtrl).ScenesTriggerMQ()
	endif

	if C00.GetStage() > 0  && C06.GetStage() < 200
		(QuestPCompanions as DG04COScenesCtrl).ScenesTriggerCO()
	endIf
	
	if DB01.GetStage() > 0 && DB11.GetStage() < 200 && DBDestroy.GetStage() < 200
		(QuestPDBrotherhood as DG04DBScenesCtrl).ScenesTriggerDB()			
	endIf

	if DBDestroy.GetStage() >= 10 && (DBDestroy.GetStage() < 200 && QuestLS.GetStage() < 90)
		(QuestPDBrotherhood as DG04DBScenesCtrl).ScenesTriggerDBDestroy()
	endIf

	;NPCS Scenes

	(QuestScenes as DG04BjornScenesQuestScript).ScenesQuestTrigger()

EndFunction
