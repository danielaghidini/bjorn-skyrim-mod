;======================================================================================
; CATEGORY: Quests and Scenes
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Checks conditions (distances, quest stages) to trigger specific contextual scenes involving 
; Bjorn and other NPCs like Sven or Galmar.
;======================================================================================
Scriptname DG04BjornScenesQuestScript extends Quest

Actor Property PlayerRef Auto
Actor Property BjornRef Auto
Actor Property SvenRef Auto
Actor Property GalmarRef Auto
Quest Property MS13 Auto
Quest Property MG06 Auto
Quest Property CW01B Auto
GlobalVariable Property SvenComm Auto
GlobalVariable Property GlobalGalmar Auto
Faction Property CurrentFollowerFaction Auto
Scene Property SvenBFB01 Auto
Scene Property SvenBFB02 Auto
Scene Property SceneReactionsPQ Auto
Scene Property SceneGalmar Auto
ReferenceAlias Property AliasSvenBFB Auto
Location Property BleakFallsBarrowLocation Auto

Function ScenesQuestTrigger()

	float distanceBjorn = BjornRef.GetDistance(PlayerRef)
	float distanceSven = SvenRef.GetDistance(PlayerRef)
	float distanceBjornGalmar = BjornRef.GetDistance(GalmarRef)

	If AliasSvenBFB.GetReference() != BjornRef && MS13.GetStage() > 35 && MS13.GetStage() < 60 && PlayerRef.IsInLocation(BleakFallsBarrowLocation) && distanceBjorn < 1600 &&  distanceSven < 1600
		SvenBFB01.Start()
	EndIf	

	If AliasSvenBFB.GetReference() == BjornRef && PlayerRef.IsInLocation(BleakFallsBarrowLocation) == false && distanceBjorn < 1600 &&  distanceSven < 1600
		;Debug.Notification("Script OK")
		SvenBFB02.Start()
		AliasSvenBFB.Clear()
	EndIf

	If MG06.GetStage() ==55
		SceneReactionsPQ.Start()
	EndIf
	
	If CW01B.GetStage() == 1 && distanceBjornGalmar <= 1600 && GlobalGalmar.GetValue() == 0
		SceneGalmar.Start()
		GlobalGalmar.SetValue(1)
	EndIf
		
EndFunction
