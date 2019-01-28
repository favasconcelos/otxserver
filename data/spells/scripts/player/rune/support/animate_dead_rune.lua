local function doTargetCorpse(cid, pos)
  local getPos = pos
  getPos.stackpos = 255
  corpse = getThingfromPos(getPos)
  if (corpse.uid > 0 and isCreature(corpse.uid) == false and isInArray(CORPSES, corpse.itemid) == true) then
    doRemoveItem(corpse.uid)
    local creature = doSummonCreature(cid, "Skeleton", pos)
    doConvinceCreature(cid, creature)
    doSendMagicEffect(pos, CONST_ME_MAGIC_BLUE)
    return true
  end

  doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
  doPlayerSendCancel(cid, RETURNVALUE_NOTPOSSIBLE)
  return false
end

function onCastSpell(cid, var)
  local pos = Variant.getPosition(var)
  if (pos.x ~= 0 and pos.y ~= 0 and pos.z ~= 0) then
    return doTargetCorpse(cid, pos)
  end

  doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
  doPlayerSendCancel(cid, RETURNVALUE_NOTPOSSIBLE)
  return false
end
