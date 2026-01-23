;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 21
Scriptname QF_DG04BjornNemesisQuest_0574813B Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aliasBandit01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aliasBandit01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Haldor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Haldor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NoteWDHaldor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NoteWDHaldor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Dravin
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Dravin Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NoteAfterDireclawCamp
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NoteAfterDireclawCamp Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GholugMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GholugMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aliasBandit02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aliasBandit02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GholugFollowBjorn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GholugFollowBjorn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Gholug
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Gholug Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NoteLSNemesis01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NoteLSNemesis01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GholugSword
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GholugSword Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(10)
GholugREF.Enable()
Alias_Gholug.ForceRefTo(GholugREF)
Alias_Gholug.GetReference().Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
setObjectiveCompleted(40)
setObjectiveDisplayed(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
SetObjectiveDisplayed(75)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
Alias_Player.RegisterForSleep()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
Alias_Player.ForceRefTo(PlayerREF)
Alias_Player.RegisterForSleep()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveDisplayed(40)
HaldorREF.Enable()
Alias_Haldor.ForceRefTo(HaldorREF)
Alias_Haldor.GetReference().Enable()
Alias_aliasBandit01.ForceRefTo(Bandit01REF)
Alias_aliasBandit01.ForceRefTo(Bandit02REF)
Alias_aliasBandit01.GetReference().Enable()
Alias_aliasBandit02.GetReference().Enable()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
SetObjectiveCompleted(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;Alias_NoteLSNemesis01.ForceRefTo(Game.GetPlayer().PlaceAtMe(NoteLS01REF))
;(AliasWICourier as WICourierScript).addAliasToContainer(Alias_NoteLSNemesis01)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
SetObjectiveCompleted(80)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveCompleted(10)
SetObjectiveDisplayed(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
Alias_Player.RegisterForSleep()
DravinDarkgripREF.Enable()
Alias_Dravin.ForceRefTo(DravinDarkgripREF)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
Alias_Dravin.GetReference().Enable()
SetObjectiveCompleted(75)
SetObjectiveDisplayed(80)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
Alias_NoteWDHaldor.ForceRefTo(Game.GetPlayer().PlaceAtMe(Note01REF))
(AliasWICourier as WICourierScript).addAliasToContainer(Alias_NoteWDHaldor)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property HaldorREF  Auto  

Actor Property PlayerRef  Auto  

Actor Property Bandit01REF  Auto  

Actor Property Bandit02REF  Auto  

Actor Property GholugREF  Auto  

Book Property Note01REF  Auto  

Quest Property AliasWICourier  Auto  

Book Property NoteLS01REF  Auto  

Actor Property DravinDarkgripRef  Auto  
