;======================================================================================
; CATEGORY: Miscellaneous
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Detects installed follower mods and assigns them to scene-specific aliases, ensuring they 
; can participate in scenes with Bjorn.
;======================================================================================
Scriptname DG04BjornScenesNPCsDetection extends Quest

GlobalVariable Property GoreIsPresent Auto

Actor Property BjornRef Auto

ReferenceAlias Property BjornAlias  Auto
ReferenceAlias Property OldBjornAlias  Auto
ReferenceAlias Property KaidanAlias  Auto
ReferenceAlias Property OldKaidanAlias  Auto
ReferenceAlias Property InigoAlias  Auto
ReferenceAlias Property LucienAlias  Auto
ReferenceAlias Property OldLucienAlias  Auto
ReferenceAlias Property GoreAlias  Auto

function ModCheck(ReferenceAlias FollowerAlias, Int FormID, String FileName)
    if FollowerAlias.getref() == none
        if game.GetFormFromFile(FormID, FileName)
            objectreference FollowerRef = game.GetFormFromFile(FormID, FileName) as objectreference
             FollowerAlias.ForceRefTo(FollowerRef)
        endIf
    endIf
endFunction

Event OnInit()
	Utility.Wait(2.5)
      CheckAllMods()
	;Debug.Notification("Passou aqui no OnInit")
endEvent

Event OnPlayerLoadGame()
	Utility.Wait(2.5)
	CheckAllMods()
	;Debug.Notification("OnPlayerLoadGame")
endEvent

Function CheckAllMods()

	BjornAlias.ForceRefTo(BjornRef)
	OldBjornAlias.ForceRefTo(BjornRef)
	;Debug.Notification("Modded follower interactions enabled")

	If game.GetFormFromFile(0x02008AE9, "inigo.esp")
		ModCheck(InigoAlias, 0x02008AE9, "inigo.esp")
	Else
		InigoAlias.Clear()
	EndIf

	If game.GetFormFromFile(0x0400B4B1, "GORE.esp")
        	GoreIsPresent.SetValue(1)		
		ModCheck(GoreAlias, 0x0400B4B1, "GORE.esp")
    	Else
        	GoreIsPresent.SetValue(0)
		GoreAlias.Clear()
    	EndIf

	If game.GetFormFromFile(0x0500591F, "Lucien.esp")
		ModCheck(LucienAlias, 0x0500591F, "Lucien.esp")
		ModCheck(OldLucienAlias, 0x0500591F, "Lucien.esp")
	Else
		LucienAlias.Clear()
	EndIf

	If game.GetFormFromFile(0x05002F9C, "0Kaidan.esp")
		ModCheck(KaidanAlias, 0x05002F9C, "0Kaidan.esp")
		ModCheck(OldKaidanAlias, 0x05002F9C, "0Kaidan.esp")
	Else
		KaidanAlias.Clear()
	EndIf
	
endFunction


