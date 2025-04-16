local killstreak = {}

hook.Add("PlayerDeath", "TrackKillstreaks", function(victim, inflictor, attacker)
    if attacker:IsPlayer() then
        killstreak[attacker] = (killstreak[attacker] or 0) + 1
        if killstreak[attacker] == 3 then
            PrintMessage(HUD_PRINTTALK, "[Killstreak] " .. attacker:Nick() .. " est en série de 3 kills !")
        end
    end
    killstreak[victim] = 0
end)
