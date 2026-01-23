;======================================================================================
; CATEGORY: Core Controller
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Comprehensive controller for Bjorn follower state. Manages recruitment/dismissal, equipment, 
; specific locations (Home/Inn), moods (Angry/Sad/Drunk), and integrates with Scene detection.
;======================================================================================
Scriptname DG04BjornCtrl extends Quest  

;======================================================================================
; PROPERTIES: CORE & ACTORS
;======================================================================================
Actor Property PlayerREF Auto
Actor Property BjornREF Auto

;======================================================================================
; PROPERTIES: EQUIPMENT (ARMOR)
;======================================================================================
Armor Property BjornGauntlets Auto
Armor Property BjornArmor Auto
Armor Property BjornBoots Auto

;======================================================================================
; PROPERTIES: FACTIONS & HIRELING SYSTEM
;======================================================================================
Faction Property DismissedFollowerFaction Auto
Faction Property CurrentHireling Auto
SetHirelingRehire Property HirelingRehireScript Auto
GlobalVariable Property FollowerRecruited Auto
Int Property iFollowerDismiss Auto Conditional

;======================================================================================
; PROPERTIES: MESSAGES
;======================================================================================
Message Property  FollowerDismissMessage Auto
Message Property  FollowerDismissMessageWedding Auto
Message Property  FollowerDismissMessageCompanions Auto
Message Property  FollowerDismissMessageCompanionsMale Auto
Message Property  FollowerDismissMessageCompanionsFemale Auto
Message Property  FollowerDismissMessageWait Auto

;======================================================================================
; PROPERTIES: ALIASES & LOCATIONS
;======================================================================================
ReferenceAlias Property FollowerAlias Auto
ReferenceAlias Property BjornWWT Auto
ReferenceAlias Property BjornPlayerHome Auto
ReferenceAlias Property BjornGoToInn Auto
ReferenceAlias Property BjornWanderAlias Auto

;======================================================================================
; PROPERTIES: GLOBALS (MOODS & STATE)
;======================================================================================
GlobalVariable Property BjornRelaxGlobal  Auto  
GlobalVariable Property BjornGlobalInn Auto 
GlobalVariable Property BjornWander Auto 
GlobalVariable Property BjornFriendship Auto
GlobalVariable Property BjornTimeCounter Auto
GlobalVariable Property BjornAngry Auto
GlobalVariable Property BjornSad Auto
GlobalVariable Property BjornDrunk Auto

;======================================================================================
; PROPERTIES: QUESTS
;======================================================================================
Quest Property FriendQuest Auto
Quest Property ScenesQuest Auto

;======================================================================================
; FUNCTIONS
;======================================================================================

Function SetFollower(ObjectReference FollowerRef)
	actor FollowerActor = FollowerRef as Actor
	FollowerActor.RemoveFromFaction(DismissedFollowerFaction)

	int FriendQuestStage = FriendQuest.GetStage()
	If FriendQuestStage < 50 || FriendQuestStage == 70
		FollowerActor.SetRelationshipRank(PlayerREF, 3)
	EndIf
	If FriendQuestStage >= 50 && FriendQuestStage < 70
		FollowerActor.SetRelationshipRank(PlayerREF, 4)
	EndIf

	FollowerActor.SetPlayerTeammate()
	FollowerAlias.ForceRefTo(FollowerActor)
	BjornArmor()
	BjornAngry.SetValue(0)
	BjornDrunk.SetValue(0)
	BjornSad.SetValue(0)
	BjornWander.SetValue(0)
	BjornWanderAlias.Clear()
	BjornWWT.Clear()
	BjornGotoInn.Clear()
	BjornPlayerHome.Clear()
	FollowerActor.EvaluatePackage()
	FollowerRecruited.SetValue(1)
	(ScenesQuest as DG04BjornScenesNPCsDetection ).CheckAllMods()
EndFunction

Function SetFollowerSimple(ObjectReference FollowerRef)
	actor FollowerActor = FollowerRef as Actor
	FollowerActor.RemoveFromFaction(DismissedFollowerFaction)
	int FriendQuestStage = FriendQuest.GetStage()
	FollowerActor.SetPlayerTeammate()
	FollowerAlias.ForceRefTo(FollowerActor)
	FollowerActor.EvaluatePackage()
	FollowerRecruited.SetValue(1)
	(ScenesQuest as DG04BjornScenesNPCsDetection ).CheckAllMods()
EndFunction

Function FollowerWait(ObjectReference FollowerRef)
     	actor FollowerActor = FollowerRef as Actor
       FollowerActor.SetActorValue("WaitingForPlayer", 1)
    	SetObjectiveDisplayed(10, abforce = true)
	(ScenesQuest as DG04BjornScenesNPCsDetection ).CheckAllMods()
EndFunction

Function FollowerRelax(ObjectReference FollowerRef)
	actor FollowerActor = FollowerRef as Actor
	FollowerActor.SetActorValue("WaitingForPlayer", 1)
	SetObjectiveDisplayed(10, false, false)
	BjornRelaxGlobal.SetValue(1)
	(ScenesQuest as DG04BjornScenesNPCsDetection ).CheckAllMods()
EndFunction
 
Function FollowerFollow(ObjectReference FollowerRef)
	actor FollowerActor = FollowerRef as Actor
	FollowerActor.SetActorValue("WaitingForPlayer", 0)
	SetObjectiveDisplayed(10, abdisplayed = false)
	BjornGotoInn.Clear()
       BjornPlayerHome.Clear()
	BjornGlobalInn.SetValue(0)
	BjornWander.SetValue(0)
	BjornWanderAlias.Clear()
	BjornRelaxGlobal.SetValue(0)
	FollowerActor.EvaluatePackage()
	(ScenesQuest as DG04BjornScenesNPCsDetection ).CheckAllMods()
EndFunction

Function DismissFollower(ObjectReference FollowerRef, Int iMessage = 0, Int iSayLine = 1)
     If FollowerAlias && FollowerAlias.GetActorReference().IsDead() == False
          If iMessage == 0
              FollowerDismissMessage.Show()
          ElseIf iMessage == 1
              FollowerDismissMessageWedding.Show()
          ElseIf iMessage == 2
              FollowerDismissMessageCompanions.Show()
          ElseIf iMessage == 3
              FollowerDismissMessageCompanionsMale.Show()
          ElseIf iMessage == 4
              FollowerDismissMessageCompanionsFemale.Show()
          ElseIf iMessage == 5
              FollowerDismissMessageWait.Show()
          Else
             	FollowerDismissMessage.Show()
          EndIf
          actor DismissedFollowerActor = FollowerRef as Actor
          DismissedFollowerActor.StopCombatAlarm()
          DismissedFollowerActor.AddToFaction(DismissedFollowerFaction)
          DismissedFollowerActor.SetPlayerTeammate(false)
          DismissedFollowerActor.RemoveFromFaction(CurrentHireling)
          DismissedFollowerActor.SetActorValue("WaitingForPlayer", 0)
          FollowerRecruited.SetValue(0)
          HirelingRehireScript.DismissHireling(DismissedFollowerActor.GetActorBase())
          If iSayLine == 1
              iFollowerDismiss = 1
              DismissedFollowerActor.EvaluatePackage()
              Utility.Wait(2)
          EndIf
             FollowerAlias.Clear()
		BjornPlayerHome.Clear()
		BjornGoToInn.Clear()
             iFollowerDismiss = 0
     EndIf
EndFunction

Function GoToHome()
	 actor DismissedFollowerActor = FollowerAlias.GetActorRef() as Actor
        DismissedFollowerActor.StopCombatAlarm()
        DismissedFollowerActor.AddToFaction(DismissedFollowerFaction)
        DismissedFollowerActor.SetPlayerTeammate(false)
        DismissedFollowerActor.RemoveFromFaction(CurrentHireling)
        DismissedFollowerActor.SetActorValue("WaitingForPlayer", 0)
        FollowerRecruited.SetValue(0)
 	 FollowerAlias.Clear()
	 BjornPlayerHome.ForceRefTo(DismissedFollowerActor)
	 DismissedFollowerActor.EvaluatePackage()
	(ScenesQuest as DG04BjornScenesNPCsDetection ).CheckAllMods()
EndFunction

Function GoToInn()
	   actor DismissedFollowerActor = FollowerAlias.GetActorRef() as Actor
          DismissedFollowerActor.StopCombatAlarm()
          DismissedFollowerActor.AddToFaction(DismissedFollowerFaction)
          DismissedFollowerActor.SetPlayerTeammate(false)
          DismissedFollowerActor.RemoveFromFaction(CurrentHireling)
          DismissedFollowerActor.SetActorValue("WaitingForPlayer", 0)
          FollowerRecruited.SetValue(0)
 	   FollowerAlias.Clear()
	   BjornGotoInn.ForceRefTo(DismissedFollowerActor)
	   DismissedFollowerActor.EvaluatePackage()
	   (ScenesQuest as DG04BjornScenesNPCsDetection ).CheckAllMods()
EndFunction

Function BjornFriend()
	float newValue = BjornFriendship.GetValue() + 1
	BjornFriendship.SetValue(newValue)
	(ScenesQuest as DG04BjornScenesNPCsDetection ).CheckAllMods()
EndFunction

Function BjornArmor()
	BjornREF.EquipItem(BjornGauntlets)
	BjornREF.EquipItem(BjornArmor)
	BjornREF.EquipItem(BjornBoots)
EndFunction
