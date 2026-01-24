;======================================================================================
; CATEGORY: Core Controller
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Central management script for Bjorn follower system. Handles alias updates, faction checks, 
; quest stages (Bard, Memories, Adoption), and periodic timers for relationship and state maintenance.
;======================================================================================

Scriptname DG04ABjornFollowQuestCtrl extends Quest  

Actor Property BjornRef Auto
Actor Property ShagraRef Auto
Actor Property AdielleRef Auto
Actor Property AdielleVampRef Auto
Actor Property AdielleFinalRef Auto
Actor Property ThruzarRef Auto
Actor Property SvenRef Auto

Faction Property CurrentFollowerFaction Auto

GlobalVariable Property BjornFollowTimer Auto
GlobalVariable Property GlobalNpcsAliases Auto
GlobalVariable Property OldBjornTimer01 Auto
GlobalVariable Property OldBjornTimer02 Auto
GlobalVariable Property BjornLTTimeStamp Auto
GlobalVariable Property BjornLTNextInt Auto
GlobalVariable Property BjornMemMQ Auto
GlobalVariable Property BjornMemDB Auto
GlobalVariable Property BjornMemCO Auto
GlobalVariable Property DG04GroshakReturns Auto
GlobalVariable Property DG04AdielleFriendship Auto

Quest Property QuestNpcs Auto
Quest Property QuestFollow Auto
Quest Property QuestMemories Auto
Quest Property QuestScenes Auto
Quest Property QuestCold Auto
Quest Property QuestBarniAdopted Auto
Quest Property QuestC00 Auto
Quest Property MQ104 Auto

ReferenceAlias Property AliasVoiceAdielle Auto
ReferenceAlias Property AliasBjornThruzar Auto
ReferenceAlias Property AliasShagraBasement Auto
ReferenceAlias Property SvenAliasScenes Auto
ReferenceAlias Property SvenAliasNPCs Auto

;Bard Quest Fix
Quest Property BardQuest Auto
GlobalVariable Property GlobalBardDay Auto
ReferenceAlias Property AliasBjornCollege Auto
ReferenceAlias Property AliasBjornSkeever Auto

;DDB fix
Quest Property QuestLS Auto
Quest Property DestroyDB Auto
ReferenceAlias Property AliasLSKill Auto
Quest Property BjornFamilyQuest Auto

;Barni Adopted Aliases
Actor Property ConstanceRef  Auto  
Actor Property BarniRef Auto
Actor Property DanicaRef Auto
ReferenceAlias Property BarniAliasAdoption Auto
ReferenceAlias Property DanicaAliasAdoption Auto
ReferenceAlias Property BjornAliasAdoption Auto
ReferenceAlias Property ConstanceAliasAdoption Auto
ReferenceAlias Property BarniFollowQuestAlias Auto

Quest Property DawnguardPrevQuest Auto
Quest Property DGDawnguardQuest Auto
Quest Property AdielleFollowQuest Auto

Quest Property QuestThruzarFollow Auto
Quest Property QuestGroshak Auto
ReferenceAlias Property ThruzarForceGreet02Alias Auto
ReferenceAlias Property ThruzarSoulQPatrol Auto
ReferenceAlias Property AdielleFinalMarker Auto
Keyword Property LocTypeInn Auto
ReferenceAlias Property ThruzarMapMarker Auto
Quest Property LastQuest Auto 
Quest Property AdielleRedemption Auto 
Location Property RiftenInnLocation Auto
Location Property WinterholdInnLocation Auto
Location Property KynesgroveInnLocation Auto
Location Property WindhelmInnLocation Auto

ReferenceAlias Property AliasScenesVampAdielle Auto
ReferenceAlias Property AliasScenesThruzar Auto

GlobalVariable Property GlobalFocus Auto
GlobalVariable Property globalRegisterSleep Auto 
GlobalVariable Property globalGoodMorning Auto
GlobalVariable Property GlobalAdielleFalion Auto

;======================================================================================
; GROSHAK MINE - SOUL CHAINS
;======================================================================================
Actor Property GroshakRef Auto
ReferenceAlias Property AliasGroshak Auto
Location Property DamphallMineLocation Auto
Quest Property SoulQuest Auto
ObjectReference Property MiningMarker Auto
ObjectReference Property MineDoor01 Auto
ObjectReference Property BlackPlane01 Auto
ObjectReference Property Pilar01 Auto
ObjectReference Property Pilar02 Auto
ObjectReference Property RockTopDoor01 Auto
ObjectReference Property CaveLamp Auto
ObjectReference Property FireLamp Auto

Function GroshakMine()	
	MineDoor01.Enable()
	BlackPlane01.Enable()
	Pilar01.Enable()
	Pilar02.Enable()
	RockTopDoor01.Enable()
	CaveLamp.Disable()
	FireLamp.Disable()
	MiningMarker.Disable()
	AliasGroshak.ForceRefTo(GroshakRef)
	SoulQuest.SetStage(65)
EndFunction

;======================================================================================
;  EVENTS
;======================================================================================

Event OnInit()
   	RegisterForSingleUpdate(10)
	(QuestScenes as DG04BjornScenesNPCsDetection ).CheckAllMods()
EndEvent

Event OnPlayerLoadGame()
	(QuestScenes as DG04BjornScenesNPCsDetection ).CheckAllMods()
endEvent

Event OnSleepStart(float afStartTime, float afEndTime) 
	If globalRegisterSleep.GetValue() == 1
		globalGoodMorning.SetValue(1) 
	EndIf
EndEvent

;======================================================================================
; ON UPDATE
;======================================================================================
Event OnUpdate()
	
	If BjornRef.IsInFaction(CurrentFollowerFaction)

		;GOODMORNING REGISTER
		If globalRegisterSleep.GetValue() == 0
			RegisterForSleep()
			globalRegisterSleep.SetValue(1)
		Endif

		;FOCUS MANAGEMENT
		If MQ104.GetStage() >= 40 && MQ104.GetStage() < 65
			GlobalFocus.SetValue(1)
		Else
			GlobalFocus.SetValue(0)
		EndIf		

		;FIX ALIAS FILLING

		BarniAliasAdoption.ForceRefTo(BarniRef)
		DanicaAliasAdoption.ForceRefTo(DanicaRef)
		BjornAliasAdoption.ForceRefTo(BjornRef)
		ConstanceAliasAdoption.ForceRefTo(ConstanceRef)
        SvenAliasScenes.ForceRefTo(SvenRef)
	    SvenAliasNPCs.ForceRefTo(SvenRef)
        AliasScenesVampAdielle.ForceRefTo(AdielleVampRef)
	    AliasScenesThruzar.ForceRefTo(ThruzarRef)	

	    If AdielleRef.IsInFaction(CurrentFollowerFaction)
		    AliasVoiceAdielle.ForceRefTo(AdielleRef)
	    EndIf
	    If AdielleVampRef.IsInFaction(CurrentFollowerFaction)
		    AliasVoiceAdielle.ForceRefTo(AdielleVampRef)		
	    EndIf
	    If ThruzarRef.IsInFaction(CurrentFollowerFaction)
		    AliasBjornThruzar.ForceRefTo(BjornRef)
	    EndIf
	    If QuestCold.GetStage() >= 40
		    AliasShagraBasement.ForceRefTo(ShagraRef)
		    ShagraRef.EvaluatePackage()
	    EndIf
		If QuestLS.GetStage() < 10 && DestroyDB.GetStage() >= 10 && BjornFamilyQuest.GetStage() > 100
			AliasLSKill.ForceRefTo(AdielleREF)	
		EndIf

		;EXTERNAL FUNCTIONS
		(QuestFollow as DG04BjornTimeCounter).ScenesTrigger()
		(QuestNpcs as DG04BjornTimerNPC).TimerNPC()		
        (QuestNpcs as DG04ANPCsVanillaCtrl).NpcsAliases()

		;COUNTERS

		CounterLetsTalk()

        float newTimeBjorn = BjornFollowTimer.GetValue() + 1
		float newTimeBjorn01 =  OldBjornTimer01.GetValue() + 1
		float newTimeBjorn02 =  OldBjornTimer02.GetValue() + 1
		BjornFollowTimer.SetValue(newTimeBjorn)
		OldBjornTimer01.SetValue(newTimeBjorn01)
		OldBjornTimer02.SetValue(newTimeBjorn02)

		If BjornMemMQ.GetValue() > 0
			CounterMemMQ()
		EndIf
		If BjornMemDB.GetValue() > 0
			CounterMemDB()
		EndIf
		If BjornMemCO.GetValue() > 0 || QuestC00.GetStage() >= 10
			CounterMemCO()
		EndIf

        ;GROSHAK MINE - SOUL CHAINS

        If SoulQuest.GetStage() == 60 && Game.GetPlayer().IsInLocation(DamphallMineLocation)
		    GroshakMine()
	    EndIf

		;ADIELLE REDEMPTION QUEST

		If DG04GroshakReturns.GetValue() > 0  && DG04GroshakReturns.GetValue() < 1000 && DG04AdielleFriendship.GetValue() < 30
			CounterGroshakReturns()
		EndIf
		If DG04GroshakReturns.GetValue() >= 1000			
			;something evil
		EndIf
		If DG04AdielleFriendship.GetValue() >= 20 && LastQuest.GetStageDone(200)
			If AdielleRedemption.GetStage() == 20 || AdielleRedemption.GetStage() == 50
				AdielleRedemption.SetStage(60)
			EndIf
		EndIf
		
		If AdielleRedemption.GetStage() == 70 && GlobalAdielleFalion.GetValue() > 0
			float timeTravel = GlobalAdielleFalion.GetValue() + 1			
			GlobalAdielleFalion.SetValue(timeTravel)
			If GlobalAdielleFalion.GetValue() >= 70 && AdielleRedemption.GetStage() != 80
				AdielleVampRef.Disable()
				AdielleRedemption.SetStage(80)
			EndIf
			If AdielleRedemption.GetStage() == 80
				AdielleFinalRef.Enable()
				AdielleRedemption.SetStage(90)
				AdielleFinalMarker.ForceRefTo(AdielleFinalRef)
				(AdielleFollowQuest as DG04AdielleCtrl).SetFollower(AdielleFinalRef)
				AdielleFollowQuest.SetStage(80)
			EndIf
		EndIf

		;THRUZAR COURAGE QUEST

		If QuestThruzarFollow.GetStage() == 10 && LastQuest.GetStageDone(200)
			Location currentLoc = Game.GetPlayer().GetCurrentLocation()
			If currentLoc == RiftenInnLocation || currentLoc == WinterholdInnLocation || currentLoc == KynesgroveInnLocation || currentLoc == WindhelmInnLocation		
				float distance = 1512.0			
				QuestThruzarFollow.SetStage(15)
				ThruzarSoulQPatrol.Clear()
				ThruzarForceGreet02Alias.ForceRefTo(ThruzarRef)
				ThruzarMapMarker.ForceRefTo(ThruzarRef)
				ThruzarRef.EvaluatePackage()
				ThruzarRef.MoveTo(Game.GetPlayer(), distance, 0.0, 0.0)
			EndIf
		EndIf
        
		;DAWNGUARD QUEST
		If DGDawnguardQuest.GetStage() < 10 && DawnguardPrevQuest.GetStage() > 0
			DGDawnguardQuest.SetStage(10)
		EndIf

		;NPCs QUESTS INITIALIZATION
		If QuestNpcs.GetStage() == 0
			QuestNpcs.SetStage(5)
		EndIf

	    ;BARD QUEST

	    If BardQuest.GetStage() == 50
     		Float startTime = GlobalBardDay.GetValue()
     		If startTime == 0.0
            		GlobalBardDay.SetValue(Utility.GetCurrentGameTime())
        		Return
        	EndIf
       	Float currentTime = Utility.GetCurrentGameTime()
      		If Math.Floor(currentTime) > Math.Floor(startTime)
            		BardQuest.SetStage(60)
            		GlobalBardDay.SetValue(0.0)
        	EndIf
    	EndIf
	    If BardQuest.GetStage() == 60
		    AliasBjornCollege.Clear()
		    AliasBjornSkeever.ForceRefTo(BjornRef)
		    BjornRef.EvaluatePackage()
	    EndIf        
		
	Endif

	RegisterForSingleUpdate(10)

EndEvent

;======================================================================================
; COUNTERS FUNCTIONS
;======================================================================================

Function CounterLetsTalk()
	float passedTimeLT = BjornLTTimeStamp.GetValue() + 10
	float nextInteration = BjornLTNextInt.GetValue() + 1
	If OldBjornTimer01.GetValue() == passedTimeLT && BjornLTTimeStamp.GetValue() > 0
		BjornLTNextInt.SetValue(nextInteration)
	EndIf
EndFunction

Function CounterMemMQ()
	float passedTime = BjornMemMQ.GetValue() + 1
	BjornMemMQ.SetValue(passedTime) 	
EndFunction

Function CounterMemDB()
	float passedTime = BjornMemDB.GetValue() + 1
	BjornMemDB.SetValue(passedTime)
EndFunction

Function CounterMemCO()
	float passedTime = BjornMemCO.GetValue() + 1
	BjornMemCO.SetValue(passedTime) 
EndFunction

Function CounterGroshakReturns()
	float passedTime = DG04GroshakReturns.GetValue() + 1
	DG04GroshakReturns.SetValue(passedTime)
EndFunction