;======================================================================================
; CATEGORY: Miscellaneous
; PARENT SCRIPT: Quest
;
; DESCRIPTION:
; Controls follower destination (Whiterun or Riverwood) by setting global variables for meeting locations.
;======================================================================================
Scriptname DG04BjornMeetScript extends Quest  

GlobalVariable Property globalInn  Auto  
ReferenceAlias Property FollowerAlias Auto

Function MeetGoWhiterun(ObjectReference FollowerRef)
	actor FollowerActor = FollowerRef as Actor
	globalInn.SetValue(1)
	FollowerActor.EvaluatePackage()
EndFunction

Function MeetGoRiverwood(ObjectReference FollowerRef)
	actor FollowerActor = FollowerRef as Actor
	globalInn.SetValue(4)
	FollowerActor.EvaluatePackage()
EndFunction
