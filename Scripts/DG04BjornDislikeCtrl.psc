;======================================================================================
; CATEGORY: Core Controller
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Simple controller to decrement the BjornFriendship global variable.
;======================================================================================
Scriptname DG04BjornDislikeCtrl extends Quest  

GlobalVariable Property BjornFriendship Auto

Function BjornDislike()
	float newValue = BjornFriendship.GetValue() - 1
	BjornFriendship.SetValue(newValue)
	;Debug.Notification(newValue)
EndFunction