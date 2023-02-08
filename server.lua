-- create yatkubey/axis
-- piyango - system

local piyangokordinat = createColSphere(-2406.50537, -597.02283, 132.64844 , 10) -- xyz değiştir
local numbers = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"} -- random numaralar

function randomTable(table)
    return table[math.random (#table)]
end

function getRandomKey()
    key = randomTable(numbers)..''..randomTable(numbers)..''..randomTable(numbers)..''..randomTable(numbers)..''..randomTable(numbers)..''..randomTable(numbers)
    return key
end

function piyangoAres(oyuncu, thePlayer, thePrice)
    local name = getPlayerName(oyuncu)
    myCode = getRandomKey()
    if isElementWithinColShape(oyuncu, piyangokordinat) then 
       -- if export.arp_global:formatMoney(oyuncu, 50000) then 
        takePlayerMoney(oyuncu, 50000)-- freeroam para çekme
        -- exports.arp_global:getMoney(oyuncu, 50000) roleplay para çekme
        outputChatBox("#00f7ff[Piyango YatkuBey] : #ffffffBaşarılı bir şekilde piyango satın aldın!", oyuncu,255,255,255, true)
        outputChatBox("#00f7ff[Piyango YatkuBey] : #ffffffPiyango kodun : "..myCode.."!", oyuncu,255,255,255, true)
    else
        outputChatBox("#00f7ff[Piyango YatkuBey] : #ffffffPiyango sistemi için geçerli bölgede değilsin!", oyuncu,255,255,255, true)
      -- end
    end
end 
addCommandHandler("piyangoal", piyangoAres)

function piyangoCek(oyuncu, thePlayer)
    local randomPlayer = getRandomPlayer()
    --if exports.arp_integration:isPlayerDeveloper(thePlayer) then -- roleplay için
        outputChatBox(getPlayerName(randomPlayer)..": Adlı kişi büyük piyangoyu kazandı!", oyuncu, 255,255,255, true ) -- random player name
  end
--end
addCommandHandler("piyangoyatku", piyangoCek)
