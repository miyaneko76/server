-----------------------------------
-- Spell: Doton: Ni
-----------------------------------
require("scripts/globals/spells/damage_spell")
require("scripts/globals/status")
require("scripts/globals/magic")
-----------------------------------
local spell_object = {}

spell_object.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spell_object.onSpellCast = function(caster, target, spell)
    local duration = 15 + caster:getMerit(xi.merit.DOTON_EFFECT) -- T1 bonus debuff duration
    handleNinjutsuDebuff(caster, target, spell, 30, duration, xi.mod.WIND_RES)

    return xi.spells.damage.useDamageSpell(caster, target, spell)
end

return spell_object
