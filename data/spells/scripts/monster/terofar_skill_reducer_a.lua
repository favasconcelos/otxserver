local combat = {}

for i = 1, 10 do
  combat[i] = createCombatObject()
  setCombatParam(combat[i], COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)

  local condition = createConditionObject(CONDITION_ATTRIBUTES)
  setConditionParam(condition, CONDITION_PARAM_TICKS, 15000)
  setConditionParam(condition, CONDITION_PARAM_SKILL_MELEEPERCENT, i)
  setConditionParam(condition, CONDITION_PARAM_SKILL_FISTPERCENT, i)
  setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELDPERCENT, i)
  setConditionParam(condition, CONDITION_PARAM_SKILL_DISTANCEPERCENT, i)

  local area =
    createCombatArea(
    {
      {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
      {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
      {0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
      {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
      {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
      {0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
      {0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
      {0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0}
    }
  )

  setCombatArea(combat[i], area)
  setCombatCondition(combat[i], condition)
end

function onCastSpell(cid, var)
  return doCombat(cid, combat[math.random(1, 10)], var)
end
