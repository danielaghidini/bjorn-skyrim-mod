;======================================================================================
; CATEGORY: Miscellaneous
; PARENT SCRIPT: ObjectReference
;
; DESCRIPTION:
; Triggers a Dremora reaction scene (SceneDremora) if Bjorn is nearby when the script initializes.
;======================================================================================
Scriptname DG04BjornDremoraReactionScript extends ObjectReference  

ReferenceAlias Property BjornAlias Auto
ReferenceAlias Property DremoraAlias Auto
Scene Property SceneDremora Auto

Bool Property HasRun Auto

Event OnInit()
    if !HasRun
        HasRun = True

        if BjornAlias != None
            Actor bjorn = BjornAlias.GetReference() as Actor
            if bjorn != None && self.GetDistance(bjorn) < 1600
		   DremoraAlias.ForceRefTo(Self)
		   Utility.Wait(1)
                SceneDremora.Start()
            endif
        endif
    endif
EndEvent
