;======================================================================================
; CATEGORY: Magic and Abilities
; PARENT SCRIPT: activemagiceffect
;
; DESCRIPTION:
; Magic effect script for summoning Bjorn. Handles visual effects, animation playing, 
; combat stopping, and teleporting Bjorn to the caster.
;======================================================================================
Scriptname DG04SummonBjornScript extends activemagiceffect  

Actor Property Bjorn auto
Idle Property HornIdle auto
GlobalVariable Property RelaxVar Auto
GlobalVariable Property RelaxInn Auto
GlobalVariable Property NotRelaxInn Auto

Function OnEffectStart(Actor akTarget, Actor akCaster)
    Game.ForceThirdPerson()
    akCaster.PlayIdle(HornIdle)
    Utility.Wait(4.0)
    Bjorn.Disable()
    Bjorn.StopCombat()
    Bjorn.StopCombatAlarm()
    RelaxVar.SetValue(0)
    RelaxInn.SetValue(0)
    NotRelaxInn.SetValue(1)
    if Bjorn.GetCurrentScene()
        Bjorn.GetCurrentScene().Stop()
    endif
    Bjorn.SetActorValue("WaitingForPlayer", 0)
    Utility.Wait(2.0) ; Wait for 2 seconds
    float angZ = akCaster.GetAngleZ()
    Bjorn.MoveTo(akCaster, -900.0 * Math.sin(angZ), -900.0 * Math.cos(angZ), 25.0, true)
    Bjorn.Enable()
    Bjorn.EvaluatePackage()
EndFunction