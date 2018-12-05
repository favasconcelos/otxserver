
function onSay(player, words, param)
  local param = param:lower()
  if param == '' or not param then
    player:sendCancelMessage('You need to type a player name.')
    return false
  elseif param == 'points' then
    player:popupFYI('[+] Invite Friend System [+]\n\nYou have [' .. getInvitePoints(player) .. '] friends points.')
    return false
  elseif hasInviteFriend(player) then
    player:sendCancelMessage('Voc� j� agradeceu o jogador [' .. getNameFriend(player) .. '] por te convidar a jogar neste servidor.')
    return false
  elseif not getPlayerGUIDByName(param) then
    player:sendCancelMessage('Sorry, a player with [' .. param .. '] does not exists.')
    return false
  elseif
    player:getLevel() > _invite_friends.level_max or result.getDataInt(db.storeQuery('SELECT `level` FROM `players` WHERE `id` = ' .. getPlayerGUIDByName(param)), 'level') < _invite_friends.level_need
   then
    player:sendCancelMessage(
      (player:getLevel() > _invite_friends.level_max and 'Sorry, but you need the level ' .. _invite_friends.level_max .. ' to use this command.' or
        'Sorry, but the player [' .. param .. '] need\'s min level ' .. _invite_friends.level_need .. ' to be choosen.')
    )
    return false
  elseif player:getName():lower() == param then
    player:sendCancelMessage('Sorry, but you cannt self-invite.')
    return false
  end
  player:setStorageValue(_invite_friends.storages[2], getPlayerGUIDByName(param))
  player:sendTextMessage(25, 'You invited player ' .. param .. ', thank you!')
  player:getPosition():sendMagicEffect(math.random(28, 30))
  return false
end
