;======================================================================================
; CATEGORY: Miscellaneous
; PARENT SCRIPT: ReferenceAlias
;
; DESCRIPTION:
; Advances the owning quest to stage 400 when the aliased actor dies.
;======================================================================================
Scriptname DG04BjornLSQuestAliasScript extends ReferenceAlias  


Event OnDeath(Actor killer)
	GetOwningQuest().SetStage(400)
EndEvent