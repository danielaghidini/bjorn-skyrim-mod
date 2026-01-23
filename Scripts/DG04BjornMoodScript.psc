;======================================================================================
; CATEGORY: Miscellaneous
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Placeholder for mood management logic (Bad Mood counter), currently all code is commented out.
;======================================================================================
Scriptname DG04BjornMoodScript extends Quest  


GlobalVariable Property BjornBadMood Auto

Actor Property BjornRef Auto

Faction Property CurrentFollowerFaction Auto


;Function CounterBjornBadMood()
	;If (BjornBadMood.GetValue() > 0)
		;float BjornBadMoodCounter = BjornBadMood.GetValue() + 1
		;BjornBadMood.SetValue(BjornBadMoodCounter)
		;If (BjornBadMood.GetValue() == 5)
			;BjornBadMood.SetValue(0)
		;EndIf	
		;Debug.Notification("Bjorn is sad:" + BjornBadMood.GetValue())
	;EndIf
;EndFunction

;Event OnInit()
    ;RegisterForSingleUpdate(60)
;endEvent

;Event OnUpdate()
	;If BjornRef.IsInFaction(CurrentFollowerFaction)
		;CounterBjornBadMood()
	;Endif
   ; RegisterForSingleUpdate(60)
;endEvent
