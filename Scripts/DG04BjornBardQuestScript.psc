;======================================================================================
; CATEGORY: Quests and Scenes
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Manages the Bard Quest logic (Stages 10-60). Handles alias assignment for Pantea, Bjorn, 
; and quest items, and coordinates time-based stage progression.
;======================================================================================
Scriptname DG04BjornBardQuestScript extends Quest  

Quest Property BardQuest Auto
ReferenceAlias Property AliasBjornBard Auto
ReferenceAlias Property AliasPantea Auto
ReferenceAlias Property AliasBook Auto
ReferenceAlias Property AliasBjornCollege Auto
ReferenceAlias Property AliasBjornSkeever Auto
Actor Property PanteaRef Auto
Actor Property BjornRef Auto
ObjectReference Property BookRef Auto
GlobalVariable Property GlobalBardDay Auto
GlobalVariable Property GlobalBard Auto

Function BardQuestCtrl()

	If GlobalBard.GetValue() == 1 && BardQuest.GetStage() == 0
		BardQuest.SetStage(10)
	EndIf

	If BardQuest.GetStage() >= 10 && BardQuest.GetStage() < 100
		AliasBjornBard.ForceRefTo(BjornRef)
		AliasPantea.ForceRefTo(PanteaRef)
		AliasBook.ForceRefTo(BookRef)
	EndIf

	If BardQuest.GetStage() == 50
		AliasBjornCollege.ForceRefTo(BjornRef)
		;Debug.Notification(BjornFollowTimer.GetValue() + GlobalBardDay.GetValue())
		;If BjornFollowTimer.GetValue() >= GlobalBardDay.GetValue() + 10
			;BardQuest.SetStage(60) 
		;EndIf
	EndIf

	If BardQuest.GetStage() == 60
		AliasBjornCollege.Clear()
		AliasBjornSkeever.ForceRefTo(BjornRef)
		BjornRef.EvaluatePackage()
	EndIf

EndFunction