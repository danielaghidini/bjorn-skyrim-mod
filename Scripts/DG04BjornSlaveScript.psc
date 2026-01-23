;======================================================================================
; CATEGORY: Miscellaneous
; PARENT SCRIPT: ReferenceAlias
;
; DESCRIPTION:
; Intended to manage Bjorn's equipment for a specific 'slave' scenario (outfit change, 
; inventory removal), though logic is currently commented out.
;======================================================================================
Scriptname DG04BjornSlaveScript extends ReferenceAlias  

Outfit Property BjornSlaveOutfit Auto
Actor Property BjornRef Auto
ObjectReference Property BjornChest Auto
Weapon Property Pickaxe Auto

Event OnInit()

	;BjornRef.SetOutfit(BjornSlaveOutfit, false)
	;BjornRef.RemoveAllItems(BjornChest, true, false)
	;BjornRef.AddItem(Pickaxe, 1, true)
	;BjornRef.EquipItem(Pickaxe, false, true)

EndEvent