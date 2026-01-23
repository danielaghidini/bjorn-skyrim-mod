;======================================================================================
; CATEGORY: Core Controller
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Simple controller to increment the BjornFriendship global variable.
;======================================================================================
Scriptname DG04BjornThinkCtrl extends Quest  

GlobalVariable Property BjornFriendship Auto

Function BjornFriend()
	float newValue = BjornFriendship.GetValue() + 1
	BjornFriendship.SetValue(newValue)
EndFunction

