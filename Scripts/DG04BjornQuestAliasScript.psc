;======================================================================================
; CATEGORY: Miscellaneous
; PARENT SCRIPT: ReferenceAlias
;
; DESCRIPTION:
; Handles general follower alias behaviors: dismissal on combat with player, cleanup on death, 
; and teleportation logic when mounting/dismounting.
;======================================================================================
Scriptname DG04BjornQuestAliasScript extends ReferenceAlias  

Faction Property CurrentHireling Auto
Message Property FollowerDismissMessage  Auto
Actor Property BjornRef Auto
Actor Property PlayerREF Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
    ;if akCaster == Game.GetPlayer()
        ;Debug.Notification("Obrigado por me curar!")
    ;endif
EndEvent

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
     If (akTarget == PlayerREF)
          (GetOwningQuest() as DG04BjornCtrl).DismissFollower(BjornRef,0,0)
     EndIf
EndEvent

Event OnDeath(Actor akKiller)
     Self.GetActorRef().RemoveFromFaction(CurrentHireling)
     Self.Clear()
EndEvent

Event OnCellDetach()
	If (Self.GetActorRef().IsOnMount() && PlayerREF.IsInInterior())
		Self.GetActorRef().MoveTo(PlayerREF)
	EndIf
	If (Self.GetActorRef().IsOnMount())
        	Location kCurrentLoc = PlayerREF.GetCurrentLocation()
        	If (kCurrentLoc != None)
           		 If (kCurrentLoc == Whiterun || kCurrentLoc == Riften || kCurrentLoc == Markarth || kCurrentLoc == Solitude || kCurrentLoc == Windhelm)
				 Self.GetActorRef().MoveTo(PlayerREF)
			 EndIf
        	EndIf
	EndIf
endEvent

Location Property Whiterun Auto
Location Property Riften Auto
Location Property Markarth Auto
Location Property Solitude Auto
Location Property Windhelm Auto