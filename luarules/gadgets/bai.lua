function gadget:GetInfo()
    return {
        name      = "BAI",
        desc      = "BAI Lua",
        author    = "David Neilsen",
        date      = "2013-08-28",
        license   = "GPL",
        layer   = 82,
        enabled = true
    }
end

include("savetable.lua")

function gadget:GamePreload() 
end

--[[
function gadget:GameStart() 
    Spring.SendCommands({"cheat 1", "globallos"})
    Spring.SendMessage('Hello')
    -- Initialise AI for all teams that are set to use it
    for _,t in ipairs(Spring.GetTeamList()) do
        local _,_,_,isAI,side = Spring.GetTeamInfo(t)
        if Spring.GetTeamLuaAI(t) == gadget:GetInfo().name then
            Spring.Echo("Team "..t.." assigned to "..gadget:GetInfo().name)
            local pos = {}
            local home_x,home_y,home_z = Spring.GetTeamStartPosition(t)
        end
    end
    Spring.Echo("BAI Initialising")
    System.debug()
end
]]--


function gadget:Initialize()
    Spring.Echo("BAI: Initialize " .. Spring.GetGameFrame())
    local units = Spring.GetAllUnits()
    for key, value in pairs(units) do
        Spring.Echo(Spring.GetUnitDefID(units[key]))
    end
 for id,unitDef in pairs(UnitDefs) do
   for name,param in unitDef:pairs() do
     Spring.Echo(name,param)
   end
 end
end

function gadget:Shutdown() 
    Spring.Echo("BAI: Shutdown")
end

function gadget:LayoutButtons() 
    Spring.Echo("BAI: LayoutButtons")
end

function gadget:ConfigureLayout() 
    Spring.Echo("BAI: ConfigureLayout")
end

function gadget:CommandNotify() 
    Spring.Echo("BAI: CommandNotify")
end

function gadget:AddConsoleLine() 
    Spring.Echo("BAI: AddConsoleLine")
end

function gadget:GroupChanged() 
    Spring.Echo("BAI: GroupChanged")
end

function gadget:GamePreload() 
    Spring.Echo("BAI: GamePreload")
    Spring.Echo("BAI: Enabling Cheats")
    Spring.SendCommands({"cheat 1", "globallos"})
end

function gadget:GameStart() 
    Spring.Echo("BAI: GameStart")
end

function gadget:GameOver() 
    Spring.Echo("BAI: GameOver")
end

function gadget:TeamDied() 
    Spring.Echo("BAI: TeamDied")
end

function gadget:UnitCreated() 
    Spring.Echo("BAI: UnitCreated")
end

function gadget:UnitFinished() 
    Spring.Echo("BAI: UnitFinished")
end

function gadget:UnitFromFactory() 
    Spring.Echo("BAI: UnitFromFactory")
end

function gadget:UnitDestroyed() 
    Spring.Echo("BAI: UnitDestroyed")
end

function gadget:UnitTaken() 
    Spring.Echo("BAI: UnitTaken")
end

function gadget:UnitGiven() 
    Spring.Echo("BAI: UnitGiven")
end

function gadget:UnitIdle() 
    Spring.Echo("BAI: UnitIdle")
end

function gadget:UnitSeismicPing() 
    Spring.Echo("BAI: UnitSeismicPing")
end

function gadget:UnitEnteredRadar() 
    Spring.Echo("BAI: UnitEnteredRadar")
end

function gadget:UnitEnteredLos() 
    Spring.Echo("BAI: UnitEnteredLos")
end

function gadget:UnitLeftRadar() 
    Spring.Echo("BAI: UnitLeftRadar")
end

function gadget:UnitLeftLos() 
    Spring.Echo("BAI: UnitLeftLos")
end

function gadget:UnitLoaded() 
    Spring.Echo("BAI: UnitLoaded")
end

function gadget:UnitUnloaded() 
    Spring.Echo("BAI: UnitUnloaded")
end

  
function gadget:ShieldPreDamaged() 
    Spring.Echo("BAI: ShieldPreDamaged")
end

function gadget:FeatureCreated() 
    Spring.Echo("BAI: FeatureCreated")
end

function gadget:FeatureDestroyed() 
    Spring.Echo("BAI: FeatureDestroyed")
end

function gadget:ProjectileCreated() 
    Spring.Echo("BAI: ProjectileCreated")
end

function gadget:ProjectileDestroyed() 
    Spring.Echo("BAI: ProjectileDestroyed")
end

function gadget:Explosion() 
    Spring.Echo("BAI: Explosion")
end

function gadget:ShockFront() 
    Spring.Echo("BAI: ShockFront")
end

-- function gadget:GameFrame() 
--     Spring.Echo("BAI: GameFrame")
-- end

function gadget:CobCallback() 
    Spring.Echo("BAI: CobCallback")
end

function gadget:AllowCommand() 
    Spring.Echo("BAI: AllowCommand")
end

function gadget:CommandFallback() 
    Spring.Echo("BAI: CommandFallback")
end

function gadget:AllowUnitCreation() 
    Spring.Echo("BAI: AllowUnitCreation")
end

function gadget:AllowUnitTransfer() 
    Spring.Echo("BAI: AllowUnitTransfer")
end

function gadget:AllowUnitBuildStep() 
    Spring.Echo("BAI: AllowUnitBuildStep")
end

function gadget:AllowFeatureCreation() 
    Spring.Echo("BAI: AllowFeatureCreation")
end

function gadget:AllowFeatureBuildStep() 
    Spring.Echo("BAI: AllowFeatureBuildStep")
end

function gadget:AllowResourceLevel() 
    Spring.Echo("BAI: AllowResourceLevel")
end

function gadget:AllowResourceTransfer() 
    Spring.Echo("BAI: AllowResourceTransfer")
end

function gadget:MoveCtrlNotify() 
    Spring.Echo("BAI: MoveCtrlNotify")
end

function gadget:TerraformComplete() 
    Spring.Echo("BAI: TerraformComplete")
end

