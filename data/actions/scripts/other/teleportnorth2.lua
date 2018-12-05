function onUse(cid, item, fromPosition, itemEx, toPosition)
  fromPosition.z = fromPosition.z - 1
  doTeleportThing(cid, fromPosition, false)
  return true
end
