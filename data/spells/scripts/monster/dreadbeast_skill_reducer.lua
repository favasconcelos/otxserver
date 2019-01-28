local combat = {}

for i = 70, 80 do
  combat[i] = Combat()
  combat[i]:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
  combat[i]:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)

  local condition = Condition(CONDITION_ATTRIBUTES)
  condition:setParameter(CONDITION_PARAM_TICKS, 20000)
  condition:setParameter(CONDITION_PARAM_SKILL_MELEEPERCENT, i)
  condition:setParameter(CONDITION_PARAM_SKILL_FISTPERCENT, i)
  combat[i]:setCondition(condition)
end

function onCastSpell(creature, var)
  return combat[math.random(70, 80)]:execute(creature, var)
end
