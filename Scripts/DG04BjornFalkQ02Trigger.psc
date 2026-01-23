;======================================================================================
; CATEGORY: Triggers and Events
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Handles complex staging for 'LSQuest' upon entering trigger. Moves/enables actors 
; (Thruzar, Bandits), assigns aliases, and updates quest objectives.
;======================================================================================
Scriptname DG04BjornFalkQ02Trigger extends ObjectReference  

Actor Property TrhuzarREF Auto
Actor Property OldOrcREF Auto
Actor Property PlayerREF Auto
ReferenceAlias Property aliasEbonyBandit01 Auto
ReferenceAlias Property aliasEbonyBandit02 Auto
ReferenceAlias Property aliasEbonyBandit03 Auto
ReferenceAlias Property aliasNote Auto
Quest Property LSQuest Auto
Quest Property LSFollowQuest Auto
Quest Property BjornFQuest Auto
Actor Property Bandit01Falk Auto
Actor Property Bandit02Falk Auto
Actor Property Bandit03Falk Auto
GlobalVariable Property BjornInter Auto
GlobalVariable Property GlobalLSListener Auto

Event OnTriggerEnter(ObjectReference AkActivator)
	If(game.getPlayer()==AkActivator)
		If LSQuest.GetStage () == 3 || LSQuest.GetStage () == 113 || LSQuest.GetStage () == 114
			TrhuzarREF.MoveTo(xMarkerQ02)
			OldOrcREF.disable()			
		EndIf
		;If  LSQuest.GetStage()  == 0 && BjornInter.GetValue() == 7 || GlobalLSListener.GetValue() == 2 && LSQuest.GetStage () <= 113
			;TrhuzarREF.MoveTo(xMarkerQ02)
			;OldOrcREF.disable()			
			;LSQuest.SetStage(113)
		;EndIf
		If LSQuest.GetStage () == 130
			Bandit01Falk.Enable()			
			Bandit02Falk.Enable()			
			Bandit03Falk.Enable()
			aliasEbonyBandit01.ForceRefTo(Bandit01Falk)
			aliasEbonyBandit02.ForceRefTo(Bandit02Falk)
			aliasEbonyBandit03.ForceRefTo(Bandit03Falk)
			aliasEbonyBandit01.GetReference().AddItem(NoteRef, 1)
			aliasEbonyBandit02.GetReference().AddItem(NoteRef, 1)
			aliasEbonyBandit03.GetReference().AddItem(NoteRef, 1)
			If LSQuest.GetStage() == 130
				LSQuest.SetObjectiveCompleted(120)
				LSQuest.SetStage(140)
			EndIf
		EndIf
		If LSQuest.GetStage() >= 150
			aliasEbonyBandit01.GetReference().Disable()			
			aliasEbonyBandit02.GetReference().Disable()			
			aliasEbonyBandit03.GetReference().Disable()
		EndIf
	Endif
EndEvent

ObjectReference Property xMarkerQ02 Auto
Book Property NoteRef Auto

