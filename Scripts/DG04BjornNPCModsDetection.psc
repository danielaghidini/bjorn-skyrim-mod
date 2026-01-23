;======================================================================================
; CATEGORY: Miscellaneous
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Detects the presence of other popular follower mods (Inigo, Lucien, Kaidan, Gore) and 
; assigns them to aliases to enable cross-mod interactions.
;======================================================================================
Scriptname DG04BjornNPCModsDetection extends Quest  

GlobalVariable Property DG04FollowEnabledGlobal  Auto
GlobalVariable Property DG04GoreIsPresent Auto

ReferenceAlias Property KaidanAlias  Auto
ReferenceAlias Property InigoAlias  Auto
ReferenceAlias Property LucienAlias  Auto
;ReferenceAlias Property GoreAlias  Auto
ReferenceAlias Property NewGoreAlias  Auto

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
endEvent

Event OnPlayerLoadGame()
	Utility.Wait(2.5)
	CheckAllMods()
endEvent

Function CheckAllMods()

	If game.GetFormFromFile(0x02008AE9, "inigo.esp")
		ModCheck(InigoAlias, 0x02008AE9, "inigo.esp")
	Else
		InigoAlias.Clear()
	EndIf

	LucienAlias.Clear()
	ModCheck(LucienAlias, 0x0500591F, "Lucien.esp")

	KaidanAlias.Clear()
	ModCheck(KaidanAlias, 0x05002F9C, "0Kaidan.esp")

	;;GoreAlias.Clear()
	;NewGoreAlias.Clear()
	;ModCheck(GoreAlias, 0x0400B4B1, "GORE.esp")
	;ModCheck(NewGoreAlias, 0x0400B4B1, "GORE.esp")

	if game.GetFormFromFile(0x0400B4B1, "GORE.esp")
        	DG04GoreIsPresent.SetValue(1)		
		ModCheck(NewGoreAlias, 0x0400B4B1, "GORE.esp")
    	else
        	DG04GoreIsPresent.SetValue(0)
    	endif
endFunction
