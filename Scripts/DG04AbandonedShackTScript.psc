;======================================================================================
; CATEGORY: Quests and Scenes
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Trigger script that starts scenes based on quest stages when the player enters the trigger.
;======================================================================================
Scriptname DG04AbandonedShackTScript extends ObjectReference  

;======================================================================================
; PROPERTIES
;======================================================================================
Quest Property DBBjorn Auto
Quest Property DB02 Auto
Quest Property AdielleQuest Auto
Quest Property LSQuest Auto
Quest Property DBDestroy Auto
Quest Property BjornFamily Auto
Actor Property AdielleREF Auto
Actor Property BjornREF Auto
GlobalVariable Property BjornFriendship Auto
ReferenceAlias Property AliasBjorn Auto
ReferenceAlias Property AliasAdielle Auto
ReferenceAlias Property LSKillPlayer Auto
ReferenceAlias Property AliasPack  Auto  
ObjectReference Property AbShack Auto
ObjectReference Property XMarkerShack Auto
ObjectReference Property XMarkerShacExt Auto
ObjectReference Property XMarkerDB Auto
GlobalVariable Property BjornRelax  Auto  
Faction Property FollowerFaction Auto
Faction Property DarkBrotherhoodFaction Auto

Float Property distanceBjorn  Auto  
Float Property distanceLS  Auto  

;======================================================================================
; FUNCTIONS
;======================================================================================
Function InitAdielleDB()
		AdielleREF.Enable()
		AdielleREF.MoveTo(XMarkerDB)
		Utility.Wait(1.0)
		AdielleREF.AddToFaction(DarkBrotherhoodFaction)
		AliasBjorn.ForceRefTo(BjornREF)
		AliasAdielle.ForceRefTo(AdielleREF)
EndFunction

;======================================================================================
; EVENTS
;======================================================================================
Event OnTriggerEnter(ObjectReference AkActivator)
	If(game.getPlayer()==AkActivator)
		;Bjorn appears if the player has been kidnapped and he is a follower.
		If BjornREF.IsInFaction(FollowerFaction) && BjornFriendship.GetValue() > 20	
			; If the player destroys the DB or wants to enter		
			If DBDestroy.GetStage () == 10 || DB02.GetStage () == 40 
				BjornREF.MoveTo(XMarkerShacExt)
				BjornREF.SetActorValue("WaitingForPlayer", 0)
				BjornRelax.SetValue(0)
				AliasPack.ForceRefTo(BjornREF)	
				BjornREF.EvaluatePackage()
			EndIf		
		EndIf
		;Little Shadow appears if the DB are destroyed
		If DBDestroy.GetStage () == 10
			AdielleRef.Enable()
			InitAdielleDB()			
		EndIf
	Endif
EndEvent
