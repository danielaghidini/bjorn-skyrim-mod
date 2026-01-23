;======================================================================================
; CATEGORY: Miscellaneous
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Manages timers for Bjorn's moods and periodic interactions with the player and other 
; supported follower NPCs.
;======================================================================================
Scriptname DG04BjornTimerNPC extends Quest  

;======================================================================================
; PROPERTIES: ACTORS
;======================================================================================
Actor Property BjornRef Auto
Actor Property PlayerRef Auto
Actor Property ThruzarRef Auto

;======================================================================================
; PROPERTIES: TIMERS (BJORN MOOD & STATE)
;======================================================================================
GlobalVariable Property BjornTimeCounter Auto
GlobalVariable Property BjornTimeStamp Auto
GlobalVariable Property BjornNextInt Auto
GlobalVariable Property BjornRelaxInnTime Auto
GlobalVariable Property BjornNotRelaxInnTime Auto
GlobalVariable Property BjornBadMood Auto
GlobalVariable Property BjornAngry Auto
GlobalVariable Property BjornDrunk Auto
GlobalVariable Property BjornSad Auto

;======================================================================================
; PROPERTIES: TIMERS (NPC INTERACTIONS)
;======================================================================================
GlobalVariable Property KaidanTimeStamp Auto
GlobalVariable Property KaidanNextInt Auto
GlobalVariable Property AdielleTimeStamp Auto
GlobalVariable Property AdielleNextInt Auto
GlobalVariable Property InigoTimeStamp Auto
GlobalVariable Property InigoNextInt Auto
GlobalVariable Property LydiaTimeStamp Auto
GlobalVariable Property LydiaNextInt Auto
GlobalVariable Property GoreTimeStamp Auto
GlobalVariable Property GoreNextInt Auto

;======================================================================================
; PROPERTIES: QUESTS & FACTIONS
;======================================================================================
Faction Property CurrentFollowerFaction Auto
Faction Property DismissedFollowerFaction Auto
Quest Property FriendQuest Auto
Quest Property FamilyQuest Auto
Quest Property LSQuest Auto
Quest Property questNPCDetection Auto

;======================================================================================
; PROPERTIES: LOCATIONS & MERCENARY LIFE
;======================================================================================
ReferenceAlias Property AliasBjornMercLife Auto
ReferenceAlias Property AliasGotoInn Auto
GlobalVariable Property GlobalBjornMercLife Auto
Keyword Property LocTypeInn  Auto
Location Property Falkreath Auto

;======================================================================================
; FUNCTIONS
;======================================================================================

Function CounterBjornBadMood()
	If (BjornBadMood.GetValue() > 0)
		float BjornBadMoodCounter = BjornBadMood.GetValue() + 1
		BjornBadMood.SetValue(BjornBadMoodCounter)
		float valueBadMood = BjornBadMood.GetValue()
		If valueBadMood == 10
			BjornBadMood.SetValue(0)
			BjornAngry.SetValue(0)
			BjornDrunk.SetValue(0)
			BjornSad.SetValue(0)
		EndIf
	EndIf
EndFunction

Function CounterBjornRelaxInn()
	float BjornRelax = BjornRelaxInnTime.GetValue()
	float BjornNotRelax = BjornNotRelaxInnTime.GetValue()
	If BjornRelax > 0
		float BjornRelaxCounter = BjornRelaxInnTime.GetValue() + 1
		BjornRelaxInnTime.SetValue(BjornRelaxCounter)
	EndIf
	If BjornNotRelax > 0
		float BjornNotRelaxCounter = BjornNotRelaxInnTime.GetValue() + 1
		BjornNotRelaxInnTime.SetValue(BjornNotRelaxCounter)
	EndIf
EndFunction

Function CounterBjorn()
	float passedTimeBjorn = BjornTimeStamp.GetValue() + 3
	float nextInteractionBjorn = BjornNextInt.GetValue() + 1
	If  BjornTimeCounter.GetValue() == passedTimeBjorn &&  BjornTimeStamp.GetValue() > 0
		BjornNextInt.SetValue(nextInteractionBjorn)
	EndIf
EndFunction

Function CounterAdielle()
	float passedTimeAdielle = AdielleTimeStamp.GetValue() + 3
	float nextInteraction = AdielleNextInt.GetValue() + 1
	If  BjornTimeCounter.GetValue() == passedTimeAdielle &&  AdielleTimeStamp.GetValue() > 0
		AdielleNextInt.SetValue(nextInteraction)
	EndIf
EndFunction

Function CounterInigo()
	float passedTimeInigo = InigoTimeStamp.GetValue() + 10
	float nextInteraction = InigoNextInt.GetValue() + 1
	If  BjornTimeCounter.GetValue() == passedTimeInigo &&  InigoTimeStamp.GetValue() > 0
		InigoNextInt.SetValue(nextInteraction)
	EndIf
EndFunction

Function CounterKaidan()
	float passedTimeKaidan = KaidanTimeStamp.GetValue() + 10
	float nextInteraction = KaidanNextInt.GetValue() + 1
	If  BjornTimeCounter.GetValue() == passedTimeKaidan && KaidanTimeStamp.GetValue() > 0
		KaidanNextInt.SetValue(nextInteraction)
	EndIf
EndFunction

Function CounterLydia()
	float passedTimeLydia = LydiaTimeStamp.GetValue() + 10
	float nextInteraction = LydiaNextInt.GetValue() + 1
	If  BjornTimeCounter.GetValue() == passedTimeLydia && LydiaTimeStamp.GetValue() > 0
		LydiaNextInt.SetValue(nextInteraction)
	EndIf
EndFunction

Function CounterGore()
	float passedTimeGore = GoreTimeStamp.GetValue() + 10
	float nextInteraction = GoreNextInt.GetValue() + 1
	If  BjornTimeCounter.GetValue() == passedTimeGore && GoreTimeStamp.GetValue() > 0
		GoreNextInt.SetValue(nextInteraction)
	EndIf
EndFunction

Function MercenaryLife()	
	GlobalBjornMercLife.SetValue(1)
	float GlobalBM = GlobalBjornMercLife.GetValue()
	If GlobalBM == 1
		AliasGotoInn.Clear()
		AliasBjornMercLife.ForceRefTo(BjornREF)
		BjornREF.EvaluatePackage()
	EndIf
EndFunction

Function TimerNPC()
	CounterBjornBadMood()
	CounterBjorn()
	CounterBjornRelaxInn()
	CounterAdielle()
	CounterKaidan()
	CounterInigo()		
	CounterLydia()
	CounterGore()
EndFunction
