local Games = loadstring(game:HttpGet("https://raw.githubusercontent.com/Ezjpq/NaruHub/refs/heads/main/GameList.lua"))()

local isSupported = false
for PlaceID, Execute in pairs(Games) do
    if PlaceID == game.PlaceId then
        loadstring(game:HttpGet(Execute))()
        isSupported = true
        break
    end
end

if not isSupported then
    game.Players.LocalPlayer:Kick("Game Not Supported!")
end
