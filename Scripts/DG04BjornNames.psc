;======================================================================================
; CATEGORY: Miscellaneous
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Checks if SKSE is active and attempts to recognize the player's name from a predefined 
; list to enable personalized dialogue options.
;======================================================================================
Scriptname DG04BjornNames extends Quest  

;======================================================================================
; PROPERTIES
;======================================================================================
GlobalVariable Property DG04BjornGlobalNames Auto
GlobalVariable Property BjornSKSECheck Auto

;======================================================================================
; EVENTS
;======================================================================================

Event OnInit()
	BjornSKSECheck.SetValue(0)
	RegisterForUpdate(15.0)
EndEvent

Event OnUpdate()
	TestSKSE()

	if(BjornSKSECheck.GetValue() == 1)
		;Debug.notification("SKSE is active")
		AssignValueBasedOnName()
	endif

    	RegisterForUpdate(15.0) 
	;Debug.notification("OnUpdate OK")
EndEvent

;======================================================================================
; FUNCTIONS
;======================================================================================

Function TestSKSE()
	if(SKSE.GetVersionRelease() > 0)
		BjornSKSECheck.SetValue(1)  		
	else
		BjornSKSECheck.SetValue(0)
	endif
EndFunction

Function AssignValueBasedOnName()

    String PlayerName = Game.GetPlayer().GetBaseObject().GetName()

    if(PlayerName == "Anika")
        DG04BjornGlobalNames.SetValue(1)
    elseif(PlayerName == "Belladonna")
        DG04BjornGlobalNames.SetValue(2)
    elseif(PlayerName == "Castian")
        DG04BjornGlobalNames.SetValue(3)
    elseif(PlayerName == "Natalyia")
        DG04BjornGlobalNames.SetValue(4)
    elseif(PlayerName == "Aiden")
        DG04BjornGlobalNames.SetValue(5)
    elseif(PlayerName == "Roweena")
        DG04BjornGlobalNames.SetValue(6)
    elseif(PlayerName == "Ellery")
        DG04BjornGlobalNames.SetValue(7)
    elseif(PlayerName == "Freja")
        DG04BjornGlobalNames.SetValue(8)
    elseif(PlayerName == "Marianne")
        DG04BjornGlobalNames.SetValue(9)
    elseif(PlayerName == "Michaela")
        DG04BjornGlobalNames.SetValue(10)
    elseif(PlayerName == "Claire")
        DG04BjornGlobalNames.SetValue(11)
    elseif(PlayerName == "Jocelyn")
        DG04BjornGlobalNames.SetValue(12)
    elseif(PlayerName == "Aria")
        DG04BjornGlobalNames.SetValue(13)
    elseif(PlayerName == "Regan")
        DG04BjornGlobalNames.SetValue(14)
    elseif(PlayerName == "Kei")
        DG04BjornGlobalNames.SetValue(15)
    elseif(PlayerName == "Ophelia")
        DG04BjornGlobalNames.SetValue(16)
    elseif(PlayerName == "Galadhwen")
        DG04BjornGlobalNames.SetValue(17)
    elseif(PlayerName == "Marie")
        DG04BjornGlobalNames.SetValue(18)
    elseif(PlayerName == "Naomi")
        DG04BjornGlobalNames.SetValue(19)
    elseif(PlayerName == "Karly")
        DG04BjornGlobalNames.SetValue(20)
    elseif(PlayerName == "Emily")
        DG04BjornGlobalNames.SetValue(21)
    else
        DG04BjornGlobalNames.SetValue(0)
    endif

EndFunction