;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 5
Scriptname PF_DG04BjornRidePack_054FD8CE Extends Package Hidden

;BEGIN FRAGMENT Fragment_4
Function Fragment_4(Actor akActor)
;BEGIN CODE
;float distance = AliasHorse.GetDistance(FollowerActor)
;if distance >= 800
	;AliasHorse.MoveTo(FollowerActor, 256, 0, 0)
;endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment


Actor Property AliasHorse  Auto  

Actor Property FollowerActor  Auto  
