function onKill(cid, target, lastHit)
  if isPlayer(target) == true then
    Game.broadcastMessage(
      "[" .. getCreatureName(cid) .. "] acabou de matar o [" .. getCreatureName(target) .. "]",
      MESSAGE_EVENT_ADVANCE
    )
  end
  return true
end
