-- Check if the game's ID is not 985731078, then exit the function early
if game.gameId ~= 985731078 then
    return
end

-- Wait for the game to finish loading if it's not already loaded
if not game:IsLoaded() then
    game.Loaded:Wait()
end

-- Declaration of Variables
local a;
local b = game:GetService('Players')
local c = b.LocalPlayer or b:GetPropertyChangedSignal('LocalPlayer'):Wait() or b.LocalPlayer;
local d = c.UserId;
local e = game:GetService('HttpService')

-- Roblox Display of Name not in-game name
getgenv().plrLink = 'User: [' .. c.DisplayName .. ' (@' .. c.Name .. ')](https://www.roblox.com/users/' .. c.UserId ..
                        '/profile)'

-- Time                 
local function f()
    local g = os.date("!*t", os.time())
    local h, i, j, k, l = g.hour, g.min, g.sec, g.day, g.month;
    if h < 10 then
        h = '0' .. h
    end
    if i < 10 then
        i = '0' .. i
    end
    if j < 10 then
        j = '0' .. j
    end
    if k < 10 then
        k = '0' .. k
    end
    if l < 10 then
        l = '0' .. l
    end
    return h .. ':' .. i .. ':' .. j .. ' - ' .. k .. '/' .. l .. '/' .. g.year
end

-- Hex
local m = {
    Green = 0x00FF00,
    Red = 0xFF0000,
    Black = 0x000000,
    Cyan = 0x00c8ff,
    Yellow = 0xffff00,
    Gold = 0xffd700,
    Purple = 0x8C00FF,
    LightPink = 0xff7fff
}

-- WebHooks 
task.spawn(function()
    repeat
        task.wait()
    until a;
    pcall(function()
        local function n(o, p, q)
            request({
                Url = q,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = e:JSONEncode({
                    ["embeds"] = {{
                        ["title"] = 'Infinite | World Zero',
                        ["description"] = o,
                        ["type"] = 'rich',
                        ["color"] = tonumber(p),
                        ["footer"] = {
                            ["text"] = f() .. ' UTC'
                        }
                    }}
                })
            })
        end
        local function r()
            local s = game:HttpGet(peepo)
            local t = e:JSONDecode(s)
            return t
        end
        local u = r()
        local v = u[eternal]
        local w = leviathan[u[blissful:lower()]]
        local x = plrLink .. '\n' .. eternal:upper() .. ': ``' .. v .. '``\n' .. blissful .. ': ``' .. w .. '``'
        if identifyexecutor then
            local y = ({identifyexecutor()})[1]
            x = x .. '\nExecutor: ``' .. y .. '``'
        end
        local z;
        local A = game:GetService('TextChatService'):WaitForChild('TextChannels'):WaitForChild('RBXGeneral')
        for B, C in pairs(game:GetService("TextChatService").TextChannels:GetChildren()) do
            if #C.Name < 6 and C:FindFirstChild(c.Name) then
                z = C.Name
            end
        end
        if z then
            local D = game:GetService("ReplicatedStorage").Shared.NewGuildSystem.GetCache:InvokeServer(z)
            local E;
            for B, C in D.Members do
                if tonumber(B) == d then
                    E = C.Points;
                    break
                end
            end
            if E then
                x = x .. '\nGuild Points: ``' .. E .. '`` / ``' .. z .. '``'
            end
        end
        local F = {
            ['VaneRaid'] = 'VANE_KILLS',
            ['KrakenRaid'] = 'KRAKEN_KILLS',
            ['FallenKingRaid'] = 'FALLENKING_KILLS',
            ['KorruptedKlausRaid'] = 'SANTA_KILLS',
            ['InfiniteTower'] = 'ITF_1',
            ['NightmareNormal'] = 'N_NP1',
            ['NightmareChallenge'] = 'C_NP1',
            ['GuildSeason11'] = 'G_POINTS11'
        }
        pcall(function()
            local function G(H)
                local I = game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("LeaderboardHookup")
                    :WaitForChild("GetScore"):InvokeServer(H, 1)
                return I[1], I[2]
            end
            local J, K = G(F.NightmareChallenge)
            local L, M = G(F.NightmareNormal)
            local N, O = G(F.InfiniteTower)
            local P, Q = G(F.KorruptedKlausRaid)
            if J > 0 then
                x = x .. '\nNM Challenge Completed: ``' .. J .. '`` / ``' .. K .. '``'
            end
            if L > 0 then
                x = x .. '\nNM Normal Completed: ``' .. L .. '`` / ``' .. M .. '``'
            end
            if N > 99 then
                x = x .. '\nInfinite Tower Floor Record: ``' .. N .. '``'
            end
            if P > 0 then
                x = x .. '\nChristmas Raids Completed: ``' .. P .. '`` / ``' .. P .. '``'
            end
        end)
        n(x, olympus and m.Gold or m.Cyan, olympus and cloudy or boink)
    end)
end)

-- Variables
local R = game:GetService("ReplicatedStorage")
local S = R:WaitForChild('Shared')
local T = game:GetService('TeleportService')
local U = true;
local V;
local W = false;
local X, Y, Z, _, a0, a1, a2;
local a3 = false;
local a4 = isfile and readfile and writefile;
local a5;

-- Checking Players Own GamePass and Preventing Roblox Kicng the player for idling
pcall(function()
    W = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(d, 8136250)
end)
local a6 = game:GetService('VirtualUser')
c.Idled:Connect(function()
    a6:CaptureController()
    a6:ClickButton2(Vector2.new())
end)

-- Data for Players
local a7 = c.Name;
local a8 = 2727067538;
local a9 = false;
local aa = {
    Kicked = false,
    WasInDungeon = false,
    Dungeon = false,
    Difficulty = false,
    Timestamp = false,
    RejoinLastDungeon = false,
    CameFromMenu = false,
    RejoinLastDungeonThreshold = 1800,
    Gold = false,
    LastDungeonCompletion = false,
    CrossSessionTimestamp = false,
    CrossSessionGold = false,
    ForceRestartLastTower = false
}

-- Saving Session Data and Some ID
local ab = d .. '_InfiniteWorldZeroData.txt'
local ac = {21, 23, 27, 29, 34, 43, 39, 38}
function save()
    local ad;
    if writefile then
        ad = e:JSONEncode(aa)
        writefile(ab, ad)
    end
end

-- Loading Session Data
function load()
    if readfile and isfile and isfile(ab) then
        aa = e:JSONDecode(readfile(ab))
    end
end

-- Rejoin Last Dungeon
if game.PlaceId == a8 then
    load()
    if aa.Kicked or aa.RejoinLastDungeon and tick() - aa.Timestamp <= aa.RejoinLastDungeonThreshold then
        aa.Kicked = false;
        aa.CameFromMenu = true;
        save()
        local ae = require(c:WaitForChild("PlayerScripts"):WaitForChild("LocalScript"):WaitForChild("Guis")
            :WaitForChild("CharacterPicker"))
        local af = ae:GetSelectedProfile()
        while not af do
            task.wait()
            af = ae:GetSelectedProfile()
        end
        local ag = af.GUID.Value;
        local ah = S:WaitForChild('Teleport'):WaitForChild('JoinGame')
        ah:FireServer(ag)
    end
end

-- Variables for Dungeons and Players
local ai;
local aj;
local ak;
local al;
local am = {21, 23, 27, 29, 34, 43}
local an = {1005, 1006, 1007}
local ao;
local ap = {5862275930, 4526768266}
local aq = table.find(ap, game.PlaceId)
local ar;
local as;
local at;
local au;
local av;
local aw;
local ax;
local ay;
local az;
local aA;
local aB;
local aC;
local aD = {'Crystal'}
local aE = {}

-- Mission/Dungeon Tracking System
if R:FindFirstChild("ActiveMission") then
    ao = true;
    ai = game:GetService("Workspace"):WaitForChild("MissionObjects")
    aj = R:WaitForChild("MissionScripts")
    ak = R:WaitForChild("ActiveMission").Value;
    aa.Dungeon = R:WaitForChild("ActiveMission").Value;
    if table.find(am, ak) then
        at = true
    elseif ak == 38 then
        au = true
    elseif ak == 39 then
        av = true
    else
        ar = true;
        al = S.Missions.GetDifficulty:InvokeServer()
        aa.Difficulty = S.Missions.GetDifficulty:InvokeServer()
    end
    if ak == 23 then
        as = true
    end
    if table.find(an, ak) then
        aw = true
    end
    if ak == 45 then
        ay = true;
        ax = true
    end
    if ak == 44 then
        aA = true;
        ax = true
    end
    if ak == 22 then
        aB = true;
        ax = true
    end
    if ak == 17 then
        az = true;
        ax = true
    end
end

-- Health Properties and Player Variables
local aF = c.Character or c.CharacterAdded:Wait() or c.Character;
local aG = aF:WaitForChild('HumanoidRootPart')
local aH, aI;
while true do
    if c.Character and c.Character:FindFirstChild('HealthProperties') then
        aH = c.Character.HealthProperties;
        break
    end
    task.wait()
end

-- Check if the Players is added to the game
c.CharacterAdded:Connect(function(aJ)
    aF = aJ;
    aG = aF:WaitForChild('HumanoidRootPart')
    aH = aF:WaitForChild('HealthProperties')
    aI = aF:WaitForChild('Equipment')
end)

-- GameService, Drops, CoinEvent,PlayerGui, Currency, Gold, PlayerEquips, Primary, Offhand, Armor, ItemUpgrade, Upgrade,Items,Class
local aK = true;
local aL = game:GetService("MarketplaceService")
local aM = debug.getupvalue(require(S.Drops).Start, 4)
local aN = S:WaitForChild('Drops'):WaitForChild('CoinEvent')
local aO = c:WaitForChild("PlayerGui"):WaitForChild('Profile')
local aP = aO:WaitForChild('Currency'):WaitForChild('Gold')
local aQ = aP.Value;
local aR = aQ;
local aS = R:WaitForChild('PlayerEquips'):WaitForChild(a7)
local aT = aS:WaitForChild('Primary')
local aU = aS:WaitForChild('Offhand')
local aV = aS:WaitForChild('Armor')
local aW = S:WaitForChild('ItemUpgrade'):WaitForChild('Upgrade')
local aX = game:GetService("Workspace"):WaitForChild("Characters")
local aY = aO:WaitForChild("Class")
local aZ = aY.Value;

-- Player Class 
local function a_(b0)
    return aZ == b0
end

-- Game Elements
local b1 = S.Missions.GetMissionPrize;
aI = aF.Equipment;
local b2 = S:WaitForChild('Combat'):WaitForChild('Skillsets')
local b3 = 0;
local b4;
local b5 = 'RaidChestSilver'
local b6 = 'RaidChestGold'
local b7 = false;
local b8 = S:WaitForChild("Combat"):WaitForChild("Attack")
local b9 = game:GetService("Workspace"):FindFirstChild("Mobs")
local ba = S.Mobs.Mobs;
local bb = workspace.Camera;
local bc;
local bd;
local be = tick()
local bf = tick()
local bg = {'Piledriver', 'Slap'}
local bh = 0;
local bi = 0;
local bj = 0;
local bk;
local bl = {}
local bm = 1;

do

    -- Reset the camera to follow the player's character
    function resetCamera()
        local bn = aG and (aG:FindFirstChild("Part") or aG)
        if bn and not (bb.CameraSubject == bn) then
            bb.CameraSubject = bn
        end
    end
    -- Enable no-clip mode to pass through objects
    function noclip()
        if aG and aG.CanCollide then
            aG.CanCollide = false
        end
    end

    -- Disable no-clip mode to resume collision
    function unnoclip()
        if aG and not aG.CanCollide then
            aG.CanCollide = true
        end
    end

    -- Set the camera to focus on a specific mob or player
    function setMobCamera(bo, bp, bq)
        if not bq or not bo then
            local bn = bo and bp or aG and (aG:FindFirstChild("Part") or aG)
            if bn and bb.CameraSubject ~= bn then
                bb.CameraSubject = bn
            end
        else
            local br = workspace:FindFirstChild('InfiniteCameraPart')
            if br and br.Position ~= bq then
                br.CFrame = CFrame.new(bq)
            end
            if not br then
                br = Instance.new('Part')
                br.Anchored = true;
                br.CanCollide = false;
                br.Transparency = 1;
                br.Size = Vector3.new(1, 1, 1)
                br.Position = bq;
                br.Name = 'InfiniteCameraPart'
                br.Parent = workspace
            end
            if bb.CameraSubject ~= br then
                bb.CameraSubject = br
            end
        end
    end

    -- Players Status Alive or Dead
    function alive()
        return aF and aG and aH and aH:FindFirstChild('Health') and aH.Health.Value > 0
    end

    -- Riding a Mount
    function mounted()
        return aF and aF:FindFirstChild('Properties') and aF.Properties:GetAttribute('Mounted')
    end

    -- Players Status Alive or Dead
    function isAlive(bs)
        return bs and bs.PrimaryPart and bs:FindFirstChild('HealthProperties') and
                   bs.HealthProperties:FindFirstChild('Health') and bs.HealthProperties.Health.Value > 0
    end

    -- Mob Names
    function Mob(o)
        if ba:FindFirstChild(o) then
            return require(ba[o])
        end
    end

    -- Switch Perks
    function SwitchOffhandPerks(o)
        S.Settings.OffhandPerksActive:FireServer(o)
    end

    -- Time Elapsed
    function timeElapsed(C)
        local bt = math.floor(C / 86400)
        local bu = math.floor(C % 86400 / 3600)
        local bv = math.floor(C % 3600 / 60)
        local bw = math.floor(C % 60)
        if bt > 0 then
            return bt .. 'd ' .. bu .. 'h ' .. bv .. 'm ' .. bw .. 's'
        elseif bu > 0 then
            return bu .. 'h ' .. bv .. 'm ' .. bw .. 's'
        elseif bv > 0 then
            return bv .. 'm ' .. bw .. 's'
        else
            return bw .. 's'
        end
    end

    -- Ping
    function ping()
        return math.round(c:GetNetworkPing() * 1000) .. ' ms'
    end

    -- Ping2
    function ping2()
        return math.round(game.Stats.PerformanceStats.Ping:GetValue()) .. ' ms'
    end

    -- Finding Next Element 
    function nextInTbl(bx, by)
        return bx[table.find(bx, by) + 1] or bx[1]
    end

    -- Formated Numbers with Commas
    function formatNumberWithCommas(bz)
        local bA = tostring(bz)
        local bB;
        repeat
            bA, bB = string.gsub(bA, "^(-?%d+)(%d%d%d)", '%1,%2')
        until bB == 0;
        return bA
    end

    -- Guild System
    function getServerGuilds()
        local bC = game:GetService("TextChatService"):WaitForChild('TextChannels')
        local bx = {}
        for B, C in bC:GetChildren() do
            if #C.Name < 6 and #C:GetChildren() > 0 then
                table.insert(bx, C.Name)
            end
        end
        table.sort(bx)
        return bx
    end

    -- Guild Players
    function getPlrGuild()
        local bC = game:GetService("TextChatService"):WaitForChild('TextChannels')
        local z;
        for B, C in bC:GetChildren() do
            if #C.Name < 6 and #C:GetChildren() > 0 and C:FindFirstChild(c.Name) then
                z = C.Name;
                break
            end
        end
        return z
    end
end

-- Game services, particularly inventory management, gear perks, combat systems, and mission data.
local bD;
local bE = 8136250;
local bF = aO:WaitForChild('Inventory'):WaitForChild('Items')
local bG = aO:WaitForChild('Inventory'):WaitForChild('Cosmetics')
local bH = require(S.Missions.MissionData)
local function bI(bJ)
    return bH[bJ].LevelRequirement
end
local bK = require(S.Gear.GearPerks)
local bL = require(S.Items)
local bM = require(S.Combat)
local bN = S.Inventory.EquipItem;
local bO = true;
local bP = {}
local bQ = require(S:WaitForChild('Settings'))
local bR = aO:WaitForChild('Settings')
local bS;
local bT;
local bU;
local bV;
local bW;
local bX = game:GetService('RunService').Heartbeat;

-- Another Weapon Perks
local function bY()
    return bR:GetAttribute('OffhandPerksActive')
end

-- Request to start a raid by firing a RemoteEvent to the server
function StartRaid(o, p)
    S:WaitForChild('Teleport'):WaitForChild('StartRaid'):FireServer(o, p)
end

-- for Game Services
local bZ = require(S.Inventory)
aY:GetPropertyChangedSignal("Value"):Connect(function()
    aZ = aY.Value
end)

-- Mission Start onClientEvent
local b_ = 0;
local c0 = 0;
S.Missions.MissionStart.OnClientEvent:Once(function()
    a9 = true;
    b_ = tick()
end)
load()

-- Player's dungeon state
if not ao then
    if aa.Kicked and aa.WasInDungeon or aa.RejoinLastDungeon and tick() - aa.Timestamp <= aa.RejoinLastDungeonThreshold and
        aa.CameFromMenu or aa.WasInDungeon and aa.Dungeon and table.find(am, aa.Dungeon) and aa.ForceRestartLastTower then
        aa.CameFromMenu = false;
        save()
        if aa.Dungeon then
            local c1 = S:WaitForChild('Teleport'):WaitForChild('StartRaid')
            while true do
                if table.find(ac, aa.Dungeon) then
                    c1:FireServer(aa.Dungeon)
                else
                    c1:FireServer(aa.Dungeon, aa.Difficulty)
                end
                task.wait(1)
            end
        end
    else
        aa.Kicked = false;
        aa.CameFromMenu = false;
        aa.WasInDungeon = false;
        save()
    end
    -- Rejoining
elseif ao then
    bW = getPlrGuild()
    aa.WasInDungeon = true;
    aa.Dungeon = ak;
    aa.Difficulty = al;
    aa.CameFromMenu = false;
    aa.Timestamp = tick()
    save()
end

-- Dungeon ID
local c2 = {
    [5] = 1,
    [1] = 5
}

-- Dungeon Checkpoint ID
local c3 = {'Checkpoint1', 'Checkpoint2', 'Checkpoint3', 'Checkpoint4', 'Checkpoint5', 'Checkpoint6', 'Checkpoint7',
            'Checkpoint8', 'Checkpoint9', 'Checkpoint10', 'CutsceneTrigger', 'Main', 'CaveTrigger', 'BossIntroTrigger',
            'TownTalkPart', 'BridgeTrigger', 'BoulderTrigger', 'BoulderStopTrigger', 'Cage1Marker', 'Cage2Marker',
            'CannonTrigger', 'CastleTrigger', 'WallsCheckpoint', 'HammerReset1', 'WallsTrigger', 'WallsFinalTrigger',
            'Room1Trigger', 'Room2Trigger', 'Room3Trigger', 'Room4Trigger', 'Room5Trigger', 'Room6Trigger',
            'TreasureMarker', 'NextCheckpointTrigger', 'PreBridgeTrigger', 'CheckpointTriggers', 'CaveSpawnTrigger',
            'CliffsideEndTrigger', 'VineRoomTrigger', 'CheckpointTrigger', 'ObbyTrigger', 'BossTrigger', 'DropTrigger',
            'CastleGateTrigger', 'SceneTrigger', 'OutsideBossTrigger', 'Area1Trigger', 'Area2Trigger', 'Area3Trigger',
            'FinishRing', 'StartWaveDefense', 'Trigger1', 'Trigger2', 'Trigger3', 'BossCutsceneTrigger', 'FloorTrigger',
            'BossCutscene', 'BottomElevatorTrigger', 'MiddleElevatorTrigger', 'TopElevatorTrigger', 'ObbyTrigger5',
            'WaveStarter', 'BossDoorTrigger', 'MinibossExit', 'ArenaEntry0', 'ArenaEntry1', 'ArenaEntry2'}

-- WaveStarter
if ak == 43 then
    table.remove(c3, table.find(c3, 'WaveStarter'))
end

-- Dungeon Mission and Mobs Target
local c4 = {'Scarecrow1', 'Scarecrow2', 'Scarecrow3'}
local c5 = {
    DireProblem = {
        Id = 2,
        ignoreMob = 'BOSSDireBoarwolf'
    },
    KingSlayer = {
        Id = 4,
        ignoreMob = 'BOSSKingCrab'
    },
    GravetowerDungeon = a_('Demon') and {
        Id = 6,
        ignoreMob = 'BOSSTreeEnt',
        mobWaitTime = 3
    } or {
        Id = 6,
        priorityTbl = {'Pillar', 'BOSSTreeEnt'},
        mobWaitTbl = {'BOSSTreeEnt'},
        mobWaitTime = 3
    },
    RoughWaters = {
        Id = 25,
        ignoreMob = 'DavyJones'
    },
    VolcanosShadow = {
        Id = 13,
        ignoreMob = 'BOSSCerberus'
    },
    KonoHeartlands = {
        Id = 24,
        ignoreMob = 'CorruptedGreaterTree'
    },
    AetherFortress = {
        Id = 33,
        ignoreMob = 'BOSSTreeEnt'
    },
    MamaTrauma = {
        Id = 12,
        ignoreMob = 'BOSSMamaQuillodile'
    },
    TheUnderworld = {
        Id = 26,
        ignoreMob = 'HadesCerberus',
        mobWaitTbl = {'Hades', 'HadesCerberus'},
        mobWaitTime = 3,
        alwaysWait = true
    },
    VaneEvent = {
        Id = 44,
        priorityTbl = {'EVENTBOSSVane'}
    },
    ArcaneTower = {
        Id = 43,
        priorityTbl = {'Crystal', 'BOSSKandrix'}
    },
    RescueInTheRuins = {
        Id = 30,
        priorityTbl = {'Alligator', 'Rapigator', 'Sentry', 'HandTower'}
    },
    PyramidDungeon = {
        Id = 18,
        priorityTbl = {'ScarabGreen', 'BuffCactus', 'HappyCactus', 'RockGolem', 'DesertFlower', 'PoisonCobra',
                       'GoldCobra'}
    },
    ScrapCanyon = {
        Id = 20,
        priorityTbl = {'Model', 'BOSSHogRider'}
    }
}

-- World ID
local c6 = 15;
local c7 = {
    World1 = {
        Name = 'World 1',
        Id = 13,
        OrderId = 1
    },
    World2 = {
        Name = 'World 2',
        Id = 19,
        OrderId = 2
    },
    World3 = {
        Name = 'World 3',
        Id = 20,
        OrderId = 3
    },
    World4 = {
        Name = 'World 4',
        Id = 29,
        OrderId = 4
    },
    World5 = {
        Name = 'World 5',
        Id = 31,
        OrderId = 5
    },
    World6 = {
        Name = 'World 6',
        Id = 36,
        OrderId = 6
    },
    World7 = {
        Name = 'World 7',
        Id = 40,
        OrderId = 7
    },
    World8 = {
        Name = 'World 8',
        Id = 45,
        OrderId = 8
    },
    World9 = {
        Name = 'World 9',
        Id = 49,
        OrderId = 9
    },
    World10 = {
        Name = 'World 10',
        Id = 56,
        OrderId = 10
    },
    TradingHub = {
        Name = 'Cliffside Marketplace',
        Id = 44,
        OrderId = 11
    },
    PvpArena = {
        Name = 'Pvp Arena',
        Id = 39,
        OrderId = 12
    },
    Baseplate = {
        Name = 'Baseplate',
        Id = 26,
        OrderId = 13
    },
    ChristmasHub = {
        Name = 'Holiday Village',
        Id = 24,
        OrderId = 14
    },
    HalloweenHub = {
        Name = 'Spooky Courtyard',
        Id = 33,
        OrderId = 15
    }
}

-- Some ID
local c8 = {1, 3, 2, 4, 6, 11, 12, 13, 7, 14, 15, 16, 20, 19, 18, 24, 35, 21, 25, 36, 23, 26, 37, 27, 30, 31, 29, 32,
            33, 34, 41, 42, 43, 39, 1005, 1006, 1007, 38}

-- Dungeon Title, World, ID, Type          
local c9 = {{
    Id = 1,
    Name = "Crabby Crusade",
    World = 1,
    Type = 'Dungeon',
    Code = '1-1'
}, {
    Id = 3,
    Name = "Scarecrow Defense",
    World = 1,
    Type = 'Dungeon',
    Code = '1-2'
}, {
    Id = 2,
    Name = "Dire Problem",
    World = 1,
    Type = 'Dungeon',
    Code = '1-3'
}, {
    Id = 4,
    Name = "Kingslayer",
    World = 1,
    Type = 'Dungeon',
    Code = '1-4'
}, {
    Id = 6,
    Name = "Gravetower Dungeon",
    World = 1,
    Type = 'Dungeon',
    Code = '1-5'
}, {
    Id = 11,
    Name = "Temple of Ruin",
    World = 2,
    Type = 'Dungeon',
    Code = '2-1'
}, {
    Id = 12,
    Name = "Mama Trauma",
    World = 2,
    Type = 'Dungeon',
    Code = '2-2'
}, {
    Id = 13,
    Name = "Volcano's Shadow",
    World = 2,
    Type = 'Dungeon',
    Code = '2-3'
}, {
    Id = 7,
    Name = "Volcano Dungeon",
    World = 2,
    Type = 'Dungeon',
    Code = '2-4'
}, {
    Id = 14,
    Name = "Mountain Pass",
    World = 3,
    Type = 'Dungeon',
    Code = '3-1'
}, {
    Id = 15,
    Name = "Winter Cavern",
    World = 3,
    Type = 'Dungeon',
    Code = '3-2'
}, {
    Id = 16,
    Name = "Winter Dungeon",
    World = 3,
    Type = 'Dungeon',
    Code = '3-3'
}, {
    Id = 20,
    Name = "Scrap Canyon",
    World = 4,
    Type = 'Dungeon',
    Code = '4-1'
}, {
    Id = 19,
    Name = "Deserted Burrowmine",
    World = 4,
    Type = 'Dungeon',
    Code = '4-2'
}, {
    Id = 18,
    Name = "Pyramid Dungeon",
    World = 4,
    Type = 'Dungeon',
    Code = '4-3'
}, {
    Id = 24,
    Name = "Konoh Heartlands",
    World = 5,
    Type = 'Dungeon',
    Code = '5-1'
}, {
    Id = 35,
    Name = "Konoh Inferno",
    World = 5,
    Type = 'Dungeon',
    Code = '5-2',
    MobCount = 44
}, {
    Id = 21,
    Name = "Prison Tower",
    World = 5,
    Type = 'Tower',
    Code = 'Tower 1'
}, {
    Id = 25,
    Name = "Rough Waters",
    World = 6,
    Type = 'Dungeon',
    Code = '6-1'
}, {
    Id = 36,
    Name = "Treasure Hunt",
    World = 6,
    Type = 'Dungeon',
    Code = '6-2'
}, {
    Id = 23,
    Name = "Atlantis Tower",
    World = 6,
    Type = 'Tower',
    Code = 'Tower 2'
}, {
    Id = 26,
    Name = "The Underworld",
    World = 7,
    Type = 'Dungeon',
    Code = '7-1'
}, {
    Id = 37,
    Name = "The Labyrinth",
    World = 7,
    Type = 'Dungeon',
    Code = '7-2'
}, {
    Id = 27,
    Name = "Mezuvian Tower",
    World = 7,
    Type = 'Tower',
    Code = 'Tower 3'
}, {
    Id = 30,
    Name = "Rescue in the Ruins",
    World = 8,
    Type = 'Dungeon',
    Code = '8-1'
}, {
    Id = 31,
    Name = "Ruin Rush",
    World = 8,
    Type = 'Dungeon',
    Code = '8-2'
}, {
    Id = 29,
    Name = "Oasis Tower",
    World = 8,
    Type = 'Tower',
    Code = 'Tower 4'
}, {
    Id = 32,
    Name = "Treetop Trouble",
    World = 9,
    Type = 'Dungeon',
    Code = '9-1'
}, {
    Id = 33,
    Name = "Aether Fortress",
    World = 9,
    Type = 'Dungeon',
    Code = '9-2'
}, {
    Id = 34,
    Name = "Aether Tower",
    World = 9,
    Type = 'Tower',
    Code = 'Tower 5'
}, {
    Id = 41,
    Name = "Crystal Chaos",
    World = 10,
    Type = 'Dungeon',
    Code = '10-1'
}, {
    Id = 42,
    Name = "Astral Academy",
    World = 10,
    Type = 'Dungeon',
    Code = '10-2'
}, {
    Id = 43,
    Name = "Arcane Tower",
    World = 10,
    Type = 'Tower',
    Code = 'Tower 6'
}, {
    Id = 22,
    Name = "Haunted Event",
    Type = 'Raid',
    World = "Spooky Courtyard",
    Special = true,
    Code = 'Halloween Raid'
}, {
    Id = 17,
    Name = "North Pole",
    Type = 'Raid',
    World = "Holiday Village",
    Special = true,
    Code = 'Christmas Raid'
}, {
    Id = 38,
    Name = "Infinite Tower",
    Type = 'Special',
    Special = true,
    Code = 'Special'
}, {
    Id = 39,
    Name = "Celestial Tower",
    Type = 'Special',
    Special = true,
    Code = 'Special'
}, {
    Id = 40,
    Name = "Daily Dungeon",
    Type = 'Dungeon',
    Special = true,
    Code = 'I dont know'
}, {
    Id = 44,
    Name = "Vane's Lair",
    Type = 'Raid',
    Special = true,
    Code = 'Event Raid'
}, {
    Id = 45,
    Name = "The Depths",
    Type = 'Raid',
    Special = true,
    Code = 'Event Raid'
}}

-- Class and Skills
local ca = {
    Assassin = {
        DisplayName = 'Shadowblade',
        Range = 10.5,
        Type = 'Melee',
        Primary = 'Longsword',
        Offhand = 'Longsword',
        Skills = {{
            Skill = 'Assassin1',
            Cooldown = 0.26
        }, {
            Skill = 'Assassin2',
            Cooldown = 0.26
        }, {
            Skill = 'Assassin3',
            Cooldown = 0.26
        }, {
            Skill = 'Assassin4',
            Cooldown = 0.26
        }, {
            Skill = 'Assassin5',
            Cooldown = 0.26
        }, {
            Skill = 'Assassin6',
            Cooldown = 0.26
        }, {
            Skill = 'Assassin7',
            Cooldown = 0.26
        }, {
            Skill = 'Assassin8',
            Cooldown = 0.26
        }, {
            Skill = 'ShadowLeap',
            Cooldown = 3.1,
            Range = 49
        }, {
            Skill = 'ShadowSlash1',
            Cooldown = 6.1,
            Range = 59
        }, {
            Skill = 'ShadowSlash2',
            Cooldown = 6.1,
            Range = 59
        }, {
            Skill = b2:WaitForChild('Assassin'):WaitForChild('EventStealthWalk'),
            Cooldown = 0.25,
            Type = 'Remote'
        }, {
            Skill = b2:WaitForChild('Assassin'):WaitForChild('Ultimate'),
            Cooldown = 1,
            Type = 'Remote'
        }, {
            Skill = 'RealmOfShadows',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 79
        }, {
            Skill = 'ShadowMulti1',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 59
        }, {
            Skill = 'ShadowMulti2',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 59
        }, {
            Skill = 'ShadowMulti3',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 59
        }, {
            Skill = 'ShadowMulti4',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 59
        }, {
            Skill = 'ShadowMulti5',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 59
        }}
    },
    MageOfLight = {
        DisplayName = 'Mage Of Light',
        Range = 96,
        Type = 'Ranged',
        Primary = 'Staff',
        Skills = {{
            Skill = 'MageOfLight',
            Cooldown = 0.28
        }, {
            Skill = 'MageOfLightBlast',
            Cooldown = 0.33
        }, {
            Skill = 'MageOfLightCharged',
            Cooldown = 0.33
        }, {
            Skill = 'MageOfLightBlastCharged',
            Cooldown = 0.33
        }}
    },
    Warlord = {
        DisplayName = 'Warlord',
        Range = 19.5,
        Type = 'Melee',
        Primary = 'Greataxe',
        Offhand = 'Shield',
        Skills = {{
            Skill = 'Warlord1',
            Cooldown = 0.42,
            Type = 'Ranged',
            MeleeOnBoss = true,
            BossRange = 14.5
        }, {
            Skill = 'Warlord2',
            Cooldown = 0.42,
            Type = 'Ranged',
            MeleeOnBoss = true,
            BossRange = 14.5
        }, {
            Skill = 'Warlord3',
            Cooldown = 0.42,
            Type = 'Ranged',
            MeleeOnBoss = true,
            BossRange = 14.5
        }, {
            Skill = 'Warlord4',
            Cooldown = 0.42,
            Type = 'Ranged',
            MeleeOnBoss = true,
            BossRange = 14.5
        }, {
            Skill = 'ChainsOfWar',
            Cooldown = 8,
            Range = 69,
            Type = 'Ranged'
        }, {
            Skill = 'BlockingWarlord',
            Cooldown = 2.5,
            Type = 'Ranged',
            MeleeOnBoss = true,
            BossRange = 14.5
        }, {
            Skill = 'Piledriver1',
            Cooldown = 5.1,
            Range = 12,
            Type = 'Ranged'
        }, {
            Skill = 'Piledriver2',
            Cooldown = 6.1,
            Range = 12,
            Type = 'Ranged'
        }, {
            Skill = 'Piledriver3',
            Cooldown = 7.1,
            Range = 12,
            Type = 'Ranged'
        }, {
            Skill = 'WarlordUltimate1',
            Cooldown = 31,
            Range = 59,
            Type = 'Ranged'
        }, {
            Skill = 'WarlordUltimate2',
            Cooldown = 31,
            Range = 59,
            Type = 'Ranged'
        }, {
            Skill = 'WarlordUltimate3',
            Cooldown = 31,
            Range = 59,
            Type = 'Ranged'
        }, {
            Skill = 'WarlordUltimate4',
            Cooldown = 31,
            Range = 59,
            Type = 'Ranged'
        }, {
            Skill = 'WarlordUltimate5',
            Cooldown = 31,
            Range = 59,
            Type = 'Ranged'
        }}
    },
    Paladin = {
        DisplayName = 'Paladin',
        Range = 14,
        Type = 'Melee',
        Primary = 'Longsword',
        Offhand = 'Shield',
        Skills = {{
            Skill = 'BlockingPaladin',
            Cooldown = 0.37,
            Range = 9
        }, {
            Skill = 'Paladin1',
            Cooldown = 0.52
        }, {
            Skill = 'Paladin2',
            Cooldown = 0.52
        }, {
            Skill = 'Paladin3',
            Cooldown = 0.52
        }, {
            Skill = 'Paladin4',
            Cooldown = 0.52
        }, {
            Skill = 'LightPaladin1',
            Cooldown = 0.52,
            Range = 19
        }, {
            Skill = 'LightPaladin2',
            Cooldown = 0.52,
            Range = 19
        }, {
            Skill = 'LightPaladin3',
            Cooldown = 0.52,
            Range = 19
        }, {
            Skill = 'LightPaladin4',
            Cooldown = 0.52,
            Range = 19
        }, {
            Skill = 'LightThrust1',
            Cooldown = 9,
            Range = 19
        }, {
            Skill = 'LightThrust2',
            Cooldown = 9,
            Range = 19
        }, {
            Skill = b2:WaitForChild('Paladin'):WaitForChild('GuildedLight'),
            Cooldown = 15.2,
            Type = 'Heal'
        }}
    },
    Berserker = {
        DisplayName = 'Berserker',
        Range = 19.5,
        Type = 'Melee',
        Primary = 'Greataxe',
        Offhand = 'Greataxe',
        Skills = {{
            Skill = 'Berserker1',
            Cooldown = 0.51,
            Type = 'Ranged'
        }, {
            Skill = 'Berserker2',
            Cooldown = 0.51,
            Type = 'Ranged'
        }, {
            Skill = 'Berserker3',
            Cooldown = 0.51,
            Type = 'Ranged'
        }, {
            Skill = 'Berserker4',
            Cooldown = 0.51,
            Type = 'Ranged'
        }, {
            Skill = 'Berserker5',
            Cooldown = 0.51,
            Type = 'Ranged'
        }, {
            Skill = 'Berserker6',
            Cooldown = 0.51,
            Type = 'Ranged'
        }, {
            Skill = 'AggroSlam',
            Cooldown = 5.2,
            Range = 39,
            Type = 'Ranged'
        }, {
            Skill = 'GigaSpin1',
            Cooldown = 7.2,
            Range = 16
        }, {
            Skill = 'GigaSpin2',
            Cooldown = 7.2,
            Range = 16
        }, {
            Skill = 'GigaSpin3',
            Cooldown = 7.2,
            Range = 16
        }, {
            Skill = 'GigaSpin4',
            Cooldown = 7.2,
            Range = 16
        }, {
            Skill = 'GigaSpin5',
            Cooldown = 7.2,
            Range = 16
        }, {
            Skill = 'GigaSpin6',
            Cooldown = 7.2,
            Range = 16
        }, {
            Skill = 'GigaSpin7',
            Cooldown = 7.2,
            Range = 16
        }, {
            Skill = 'GigaSpin8',
            Cooldown = 7.2,
            Range = 16
        }, {
            Skill = 'Fissure1',
            Cooldown = 10.2,
            Range = 9
        }, {
            Skill = 'Fissure2',
            Cooldown = 10.2,
            Range = 9
        }, {
            Skill = 'FissureErupt1',
            Cooldown = 10.2,
            Range = 9
        }, {
            Skill = 'FissureErupt2',
            Cooldown = 10.2,
            Range = 9
        }, {
            Skill = 'FissureErupt3',
            Cooldown = 10.2,
            Range = 9
        }, {
            Skill = 'FissureErupt4',
            Cooldown = 10.2,
            Range = 9
        }, {
            Skill = 'FissureErupt5',
            Cooldown = 10.2,
            Range = 9
        }, {
            Skill = 'FissureErupt6',
            Cooldown = 10.2,
            Range = 9
        }, {
            Skill = 'FissureErupt7',
            Cooldown = 10.2,
            Range = 9
        }, {
            Skill = 'FissureErupt8',
            Cooldown = 10.2,
            Range = 9
        }, {
            Skill = b2:WaitForChild('Berserker'):WaitForChild('Ultimate'),
            Cooldown = 1,
            Type = 'Remote'
        }}
    },
    Guardian = {
        DisplayName = 'Guardian',
        Range = 14.5,
        Type = 'Melee',
        Primary = 'Greatsword',
        Skills = {{
            Skill = 'Guardian1',
            Cooldown = 0.6
        }, {
            Skill = 'Guardian2',
            Cooldown = 0.6
        }, {
            Skill = 'Guardian3',
            Cooldown = 0.6
        }, {
            Skill = 'Guardian4',
            Cooldown = 0.6
        }, {
            Skill = 'RockSpikes1',
            Cooldown = 6.1,
            Range = 29,
            Type = 'Ranged'
        }, {
            Skill = 'RockSpikes2',
            Cooldown = 6.1,
            Range = 31,
            Type = 'Ranged'
        }, {
            Skill = 'RockSpikes3',
            Cooldown = 6.1,
            Range = 34,
            Type = 'Ranged'
        }, {
            Skill = 'SlashFury1',
            Cooldown = 7.1,
            Range = 44,
            Type = 'Ranged'
        }, {
            Skill = 'SlashFury2',
            Cooldown = 7.1,
            Range = 44,
            Type = 'Ranged'
        }, {
            Skill = 'SlashFury3',
            Cooldown = 7.1,
            Range = 44,
            Type = 'Ranged'
        }, {
            Skill = 'SlashFury4',
            Cooldown = 7.1,
            Range = 44,
            Type = 'Ranged'
        }, {
            Skill = 'SlashFury5',
            Cooldown = 7.1,
            Range = 44,
            Type = 'Ranged'
        }, {
            Skill = 'SlashFury6',
            Cooldown = 7.1,
            Range = 44,
            Type = 'Ranged'
        }, {
            Skill = 'SlashFury7',
            Cooldown = 7.1,
            Range = 44,
            Type = 'Ranged'
        }, {
            Skill = 'SlashFury8',
            Cooldown = 7.1,
            Range = 44,
            Type = 'Ranged'
        }, {
            Skill = b2:WaitForChild('Guardian'):WaitForChild('AggroDraw'),
            Cooldown = 14.5,
            Type = 'Remote'
        }, {
            Skill = 'SwordPrison1',
            Cooldown = 30.2,
            Range = 120,
            Type = 'Ranged'
        }, {
            Skill = 'SwordPrison2',
            Cooldown = 30.2,
            Range = 120,
            Type = 'Ranged'
        }, {
            Skill = 'SwordPrison3',
            Cooldown = 30.2,
            Range = 120,
            Type = 'Ranged'
        }, {
            Skill = 'SwordPrison4',
            Cooldown = 30.2,
            Range = 120,
            Type = 'Ranged'
        }, {
            Skill = 'SwordPrison5',
            Cooldown = 30.2,
            Range = 120,
            Type = 'Ranged'
        }, {
            Skill = 'SwordPrison6',
            Cooldown = 30.2,
            Range = 120,
            Type = 'Ranged'
        }, {
            Skill = 'SwordPrison7',
            Cooldown = 30.2,
            Range = 120,
            Type = 'Ranged'
        }, {
            Skill = 'SwordPrison8',
            Cooldown = 30.2,
            Range = 120,
            Type = 'Ranged'
        }, {
            Skill = 'SwordPrison9',
            Cooldown = 30.2,
            Range = 120,
            Type = 'Ranged'
        }, {
            Skill = 'SwordPrison10',
            Cooldown = 30.2,
            Range = 120,
            Type = 'Ranged'
        }, {
            Skill = 'SwordPrison11',
            Cooldown = 30.2,
            Range = 120,
            Type = 'Ranged'
        }, {
            Skill = 'SwordPrison12',
            Cooldown = 30.2,
            Range = 120,
            Type = 'Ranged'
        }}
    },
    Demon = {
        DisplayName = 'Demon',
        Range = 12,
        Type = 'Ranged',
        Primary = 'Scythe',
        Skills = {{
            Skill = 'Demon1',
            Cooldown = 0.85
        }, {
            Skill = 'Demon2',
            Cooldown = 0.85
        }, {
            Skill = 'Demon3',
            Cooldown = 0.85
        }, {
            Skill = 'Demon4',
            Cooldown = 1.2
        }, {
            Skill = 'Demon5',
            Cooldown = 1.2
        }, {
            Skill = 'Demon6',
            Cooldown = 1.2
        }, {
            Skill = 'Demon7',
            Cooldown = 1.5
        }, {
            Skill = 'Demon8',
            Cooldown = 1.5
        }, {
            Skill = 'Demon9',
            Cooldown = 1.5
        }, {
            Skill = 'Demon10',
            Cooldown = 1.85
        }, {
            Skill = 'Demon11',
            Cooldown = 1.85
        }, {
            Skill = 'Demon12',
            Cooldown = 1.85
        }, {
            Skill = 'Demon13',
            Cooldown = 2.15
        }, {
            Skill = 'Demon14',
            Cooldown = 2.15
        }, {
            Skill = 'Demon15',
            Cooldown = 2.15
        }, {
            Skill = 'Demon16',
            Cooldown = 2.55
        }, {
            Skill = 'Demon17',
            Cooldown = 2.55
        }, {
            Skill = 'Demon18',
            Cooldown = 2.55
        }, {
            Skill = 'Demon19',
            Cooldown = 2.85
        }, {
            Skill = 'Demon20',
            Cooldown = 2.85
        }, {
            Skill = 'Demon21',
            Cooldown = 2.85
        }, {
            Skill = 'Demon22',
            Cooldown = 3.2
        }, {
            Skill = 'Demon23',
            Cooldown = 3.2
        }, {
            Skill = 'Demon24',
            Cooldown = 3.2
        }, {
            Skill = 'Demon25',
            Cooldown = 3.5
        }, {
            Skill = 'Demon26',
            Cooldown = 3.5
        }, {
            Skill = 'Demon27',
            Cooldown = 3.5
        }, {
            Skill = 'DemonDPS1',
            Cooldown = 0.85,
            Range = 12
        }, {
            Skill = 'DemonDPS2',
            Cooldown = 1.2,
            Range = 12
        }, {
            Skill = 'DemonDPS3',
            Cooldown = 1.5,
            Range = 12
        }, {
            Skill = 'DemonDPS4',
            Cooldown = 1.85,
            Range = 12
        }, {
            Skill = 'DemonDPS5',
            Cooldown = 2.15,
            Range = 12
        }, {
            Skill = 'DemonDPS6',
            Cooldown = 2.55,
            Range = 12
        }, {
            Skill = 'DemonDPS7',
            Cooldown = 2.9,
            Range = 12
        }, {
            Skill = 'DemonDPS8',
            Cooldown = 3.3,
            Range = 12
        }, {
            Skill = 'DemonDPS9',
            Cooldown = 3.6,
            Range = 12
        }, {
            Skill = 'ScytheThrowDPS1',
            Cooldown = 5.5,
            Type = 'Ranged',
            Range = 71
        }, {
            Skill = 'ScytheThrowDPS2',
            Cooldown = 5.5,
            Type = 'Ranged',
            Range = 71
        }, {
            Skill = 'ScytheThrowDPS3',
            Cooldown = 5.5,
            Type = 'Ranged',
            Range = 71
        }, {
            Skill = 'ScytheThrow1',
            Cooldown = 5.5,
            Type = 'Ranged',
            Range = 88
        }, {
            Skill = 'ScytheThrow2',
            Cooldown = 5.5,
            Type = 'Ranged',
            Range = 88
        }, {
            Skill = 'ScytheThrow3',
            Cooldown = 5.5,
            Type = 'Ranged',
            Range = 88
        }, {
            Skill = 'ScytheThrow4',
            Cooldown = 5.5,
            Type = 'Ranged',
            Range = 88
        }, {
            Skill = 'ScytheThrow5',
            Cooldown = 5.5,
            Type = 'Ranged',
            Range = 88
        }, {
            Skill = 'ScytheThrow6',
            Cooldown = 5.5,
            Type = 'Ranged',
            Range = 88
        }, {
            Skill = 'ScytheThrow7',
            Cooldown = 5.5,
            Type = 'Ranged',
            Range = 88
        }, {
            Skill = 'ScytheThrow8',
            Cooldown = 5.5,
            Type = 'Ranged',
            Range = 88
        }, {
            Skill = 'DemonLifeStealDPS',
            Cooldown = 8.2,
            Type = 'Ranged',
            Range = 56
        }, {
            Skill = b2:WaitForChild('Demon'):WaitForChild('Ultimate'),
            Cooldown = 1,
            Type = 'Remote'
        }, {
            Skill = 'DemonSoulDPS1',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 26
        }, {
            Skill = 'DemonSoulDPS2',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 26
        }, {
            Skill = 'DemonSoulDPS3',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 26
        }}
    },
    Swordmaster = {
        DisplayName = 'Swordmaster',
        Range = 12,
        Type = 'Melee',
        Primary = 'Longsword',
        Skills = {{
            Skill = 'Swordmaster1',
            Cooldown = 0.34
        }, {
            Skill = 'Swordmaster2',
            Cooldown = 0.34
        }, {
            Skill = 'Swordmaster3',
            Cooldown = 0.34
        }, {
            Skill = 'Swordmaster4',
            Cooldown = 0.34
        }, {
            Skill = 'Swordmaster5',
            Cooldown = 0.34
        }, {
            Skill = 'Swordmaster6',
            Cooldown = 0.34
        }, {
            Skill = 'CrescentStrike1',
            Cooldown = 5.2
        }, {
            Skill = 'CrescentStrike2',
            Cooldown = 5.2
        }, {
            Skill = 'CrescentStrike3',
            Cooldown = 5.2
        }, {
            Skill = 'CrescentStrike4',
            Cooldown = 5.2
        }, {
            Skill = 'CrescentStrike5',
            Cooldown = 5.2
        }, {
            Skill = 'Leap',
            Cooldown = 8.2,
            Range = 14
        }}
    },
    Mage = {
        DisplayName = 'Arcane Mage',
        Range = 99,
        Type = 'Ranged',
        Primary = 'Staff',
        Skills = {{
            Skill = 'Mage1',
            Cooldown = 0.33
        }, {
            Skill = 'Mage2',
            Cooldown = 0.33
        }, {
            Skill = 'Mage3',
            Cooldown = 0.33
        }}
    },
    Defender = {
        DisplayName = 'Defender',
        Range = 12,
        Type = 'Melee',
        Primary = 'Greataxe',
        Skills = {{
            Skill = 'Defender1',
            Cooldown = 0.66
        }, {
            Skill = 'Defender2',
            Cooldown = 0.66
        }, {
            Skill = 'Defender3',
            Cooldown = 0.66
        }, {
            Skill = 'Defender4',
            Cooldown = 0.66
        }, {
            Skill = 'Defender5',
            Cooldown = 0.66
        }, {
            Skill = 'Groundbreaker',
            Cooldown = 5.1,
            Range = 9
        }, {
            Skill = 'Spin1',
            Cooldown = 8.1,
            Range = 10
        }, {
            Skill = 'Spin2',
            Cooldown = 8.1,
            Range = 10
        }, {
            Skill = 'Spin3',
            Cooldown = 8.1,
            Range = 10
        }, {
            Skill = 'Spin4',
            Cooldown = 8.1,
            Range = 10
        }}
    },
    DualWielder = {
        DisplayName = 'Dual Wielder',
        Range = 12,
        Type = 'Melee',
        Primary = 'Longsword',
        Offhand = 'Longsword',
        Skills = {{
            Skill = 'DualWield1',
            Cooldown = 0.55
        }, {
            Skill = 'DualWield2',
            Cooldown = 0.55
        }, {
            Skill = 'DualWield3',
            Cooldown = 0.55
        }, {
            Skill = 'DualWield4',
            Cooldown = 0.55
        }, {
            Skill = 'DualWield5',
            Cooldown = 0.75
        }, {
            Skill = 'DualWield6',
            Cooldown = 0.75
        }, {
            Skill = 'DualWield7',
            Cooldown = 0.75
        }, {
            Skill = 'DualWield8',
            Cooldown = 0.75
        }, {
            Skill = 'DualWield9',
            Cooldown = 0.75
        }, {
            Skill = 'DualWield10',
            Cooldown = 0.75
        }, {
            Skill = b2:WaitForChild('DualWielder'):WaitForChild('AttackBuff'),
            Cooldown = 12.2,
            Type = 'Remote'
        }, {
            Skill = 'DashStrike',
            Cooldown = 6.2
        }, {
            Skill = 'CrossSlash1',
            Cooldown = 8.2,
            Type = 'Ranged',
            Range = 47
        }, {
            Skill = 'CrossSlash2',
            Cooldown = 8.2,
            Type = 'Ranged',
            Range = 47
        }, {
            Skill = 'CrossSlash3',
            Cooldown = 8.2,
            Type = 'Ranged',
            Range = 47
        }, {
            Skill = 'CrossSlash4',
            Cooldown = 8.2,
            Type = 'Ranged',
            Range = 47
        }, {
            Skill = 'CrossSlash5',
            Cooldown = 8.2,
            Type = 'Ranged',
            Range = 47
        }, {
            Skill = 'CrossSlash6',
            Cooldown = 8.2,
            Type = 'Ranged',
            Range = 47
        }, {
            Skill = 'CrossSlash7',
            Cooldown = 8 - 2,
            Type = 'Ranged',
            Range = 47
        }, {
            Skill = 'CrossSlash8',
            Cooldown = 8.2,
            Type = 'Ranged',
            Range = 47
        }, {
            Skill = 'CrossSlash9',
            Cooldown = 8.2,
            Type = 'Ranged',
            Range = 47
        }, {
            Skill = 'CrossSlash10',
            Cooldown = 8.2,
            Type = 'Ranged',
            Range = 47
        }, {
            Skill = b2:WaitForChild('DualWielder'):WaitForChild('Ultimate'),
            Cooldown = 31,
            Type = 'Remote'
        }, {
            Skill = 'DualWieldUltimateHit1',
            Cooldown = 31
        }, {
            Skill = 'DualWieldUltimateHit2',
            Cooldown = 31
        }, {
            Skill = 'DualWieldUltimateHit3',
            Cooldown = 31
        }, {
            Skill = 'DualWieldUltimateHit4',
            Cooldown = 31
        }, {
            Skill = 'DualWieldUltimateHit5',
            Cooldown = 31
        }, {
            Skill = 'DualWieldUltimateHit6',
            Cooldown = 31
        }, {
            Skill = 'DualWieldUltimateHit7',
            Cooldown = 31
        }, {
            Skill = 'DualWieldUltimateHit8',
            Cooldown = 31
        }, {
            Skill = 'DualWieldUltimateSlam',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSlam1',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSlam2',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSlam3',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword1',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword2',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword3',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword4',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword5',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword6',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword7',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword8',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword9',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword10',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword11',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword12',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword13',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword14',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword15',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }, {
            Skill = 'DualWieldUltimateSword16',
            Cooldown = 31,
            Type = 'Ranged',
            Range = 17
        }}
    },
    IcefireMage = {
        DisplayName = 'Elementalist',
        Range = 93,
        Type = 'Ranged',
        Primary = 'Staff',
        Skills = {{
            Skill = 'IcefireMage1',
            Cooldown = 0.33
        }, {
            Skill = 'IcefireMage2',
            Cooldown = 0.33
        }, {
            Skill = 'IcefireMage3',
            Cooldown = 0.33
        }, {
            Skill = 'IcySpikes1',
            Cooldown = 6.2,
            Range = 36
        }, {
            Skill = 'IcySpikes2',
            Cooldown = 6.2,
            Range = 36
        }, {
            Skill = 'IcySpikes3',
            Cooldown = 6.2,
            Range = 36
        }, {
            Skill = 'IcySpikes4',
            Cooldown = 6.2,
            Range = 36
        }, {
            Skill = 'IcySpikes5',
            Cooldown = 6.2,
            Range = 36
        }, {
            Skill = 'IcefireMageFireball',
            Cooldown = 10.2
        }, {
            Skill = 'IcefireMageFireballBlast',
            Cooldown = 10.2
        }, {
            Skill = 'LightningStrike1',
            Cooldown = 15.2,
            Range = 46
        }, {
            Skill = 'LightningStrike2',
            Cooldown = 15.2,
            Range = 46
        }, {
            Skill = 'LightningStrike3',
            Cooldown = 15.2,
            Range = 46
        }, {
            Skill = 'LightningStrike4',
            Cooldown = 15.2,
            Range = 46
        }, {
            Skill = 'LightningStrike5',
            Cooldown = 15.2,
            Range = 46
        }, {
            Skill = 'IcefireMageUltimateFrost',
            Cooldown = 31,
            Range = 56
        }, {
            Skill = 'IcefireMageUltimateMeteor1',
            Cooldown = 31,
            Range = 56
        }, {
            Skill = 'IcefireMageUltimateMeteor2',
            Cooldown = 31,
            Range = 56
        }, {
            Skill = 'IcefireMageUltimateMeteor3',
            Cooldown = 31,
            Range = 56
        }, {
            Skill = 'IcefireMageUltimateMeteor4',
            Cooldown = 31,
            Range = 56
        }, {
            Skill = 'IcefireMageUltimateMeteor5',
            Cooldown = 31,
            Range = 56
        }, {
            Skill = 'IcefireMageUltimateMeteor6',
            Cooldown = 31,
            Range = 56
        }, {
            Skill = 'IcefireMageUltimateMeteor7',
            Cooldown = 31,
            Range = 56
        }, {
            Skill = 'IcefireMageUltimateMeteor8',
            Cooldown = 31,
            Range = 56
        }, {
            Skill = 'IcefireMageUltimateMeteor9',
            Cooldown = 31,
            Range = 56
        }, {
            Skill = 'IcefireMageUltimateMeteor10',
            Cooldown = 31,
            Range = 56
        }}
    },
    Dragoon = {
        DisplayName = 'Dragoon',
        Range = 12,
        Type = 'Ranged',
        Primary = 'Spear',
        Skills = {{
            Skill = 'Dragoon1',
            Cooldown = 0.45,
            Type = 'Melee'
        }, {
            Skill = 'Dragoon2',
            Cooldown = 0.45,
            Type = 'Melee'
        }, {
            Skill = 'Dragoon3',
            Cooldown = 0.45,
            Type = 'Melee'
        }, {
            Skill = 'Dragoon4',
            Cooldown = 0.45,
            Type = 'Melee'
        }, {
            Skill = 'Dragoon5',
            Cooldown = 0.45,
            Type = 'Melee'
        }, {
            Skill = 'Dragoon6',
            Cooldown = 0.45,
            Type = 'Melee'
        }, {
            Skill = 'DragoonDash',
            Cooldown = 6.2,
            Range = 17
        }, {
            Skill = 'DragoonCross1',
            Cooldown = 6.2,
            Range = 17
        }, {
            Skill = 'DragoonCross2',
            Cooldown = 6.2,
            Range = 17
        }, {
            Skill = 'DragoonCross3',
            Cooldown = 6.2,
            Range = 17
        }, {
            Skill = 'DragoonCross4',
            Cooldown = 6.2,
            Range = 17
        }, {
            Skill = 'DragoonCross5',
            Cooldown = 6.2,
            Range = 17
        }, {
            Skill = 'DragoonCross6',
            Cooldown = 6.2,
            Range = 17
        }, {
            Skill = 'DragoonCross7',
            Cooldown = 6.2,
            Range = 17
        }, {
            Skill = 'DragoonCross8',
            Cooldown = 6.2,
            Range = 17
        }, {
            Skill = 'DragoonCross9',
            Cooldown = 6.2,
            Range = 17
        }, {
            Skill = 'DragoonCross10',
            Cooldown = 6.2,
            Range = 17
        }, {
            Skill = 'MultiStrike1',
            Cooldown = 6.2,
            Type = 'Melee',
            Range = 18
        }, {
            Skill = 'MultiStrike2',
            Cooldown = 6.2,
            Type = 'Melee',
            Range = 18
        }, {
            Skill = 'MultiStrike3',
            Cooldown = 6.2,
            Type = 'Melee',
            Range = 18
        }, {
            Skill = 'MultiStrike4',
            Cooldown = 6.2,
            Type = 'Melee',
            Range = 18
        }, {
            Skill = 'MultiStrike5',
            Cooldown = 6.2,
            Type = 'Melee',
            Range = 18
        }, {
            Skill = 'MultiStrikeDragon1',
            Cooldown = 6.2,
            Range = 57
        }, {
            Skill = 'MultiStrikeDragon2',
            Cooldown = 6.2,
            Range = 57
        }, {
            Skill = 'MultiStrikeDragon3',
            Cooldown = 6.2,
            Range = 57
        }, {
            Skill = 'DragoonFall',
            Cooldown = 8.2,
            Range = 5
        }, {
            Skill = b2:WaitForChild('Dragoon'):WaitForChild('Ultimate'),
            Cooldown = 1,
            Type = 'Remote'
        }, {
            Skill = 'DragoonUltimate',
            Cooldown = 31,
            Range = 46
        }, {
            Skill = 'UltimateDragon1',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon2',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon3',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon4',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon5',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon6',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon7',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon8',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon9',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon10',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon11',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon12',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon13',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon14',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon15',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon16',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon17',
            Cooldown = 31,
            Range = 94
        }, {
            Skill = 'UltimateDragon18',
            Cooldown = 31,
            Range = 94
        }}
    },
    Archer = {
        DisplayName = 'Archer',
        Range = 79,
        Type = 'Ranged',
        Primary = 'Bow',
        Skills = {{
            Skill = 'Archer',
            Cooldown = 0.47
        }, {
            Skill = 'PiercingArrow1',
            Cooldown = 5.2,
            Range = 99
        }, {
            Skill = 'PiercingArrow2',
            Cooldown = 5.2,
            Range = 99
        }, {
            Skill = 'PiercingArrow3',
            Cooldown = 5.2,
            Range = 99
        }, {
            Skill = 'PiercingArrow4',
            Cooldown = 5.2,
            Range = 99
        }, {
            Skill = 'PiercingArrow5',
            Cooldown = 5.2,
            Range = 99
        }, {
            Skill = 'PiercingArrow6',
            Cooldown = 5.2,
            Range = 99
        }, {
            Skill = 'PiercingArrow7',
            Cooldown = 5.2,
            Range = 99
        }, {
            Skill = 'PiercingArrow8',
            Cooldown = 5.2,
            Range = 99
        }, {
            Skill = 'PiercingArrow9',
            Cooldown = 5.2,
            Range = 99
        }, {
            Skill = 'SpiritBomb',
            Cooldown = 10.2,
            Range = 208
        }, {
            Skill = 'MortarStrike1',
            Cooldown = 12.2,
            Range = 59
        }, {
            Skill = 'MortarStrike2',
            Cooldown = 12.2,
            Range = 76
        }, {
            Skill = 'MortarStrike3',
            Cooldown = 12.2,
            Range = 93
        }, {
            Skill = 'MortarStrike4',
            Cooldown = 12.2,
            Range = 110
        }, {
            Skill = 'MortarStrike5',
            Cooldown = 12.2,
            Range = 127
        }, {
            Skill = 'MortarStrike6',
            Cooldown = 12.2,
            Range = 144
        }, {
            Skill = 'MortarStrike7',
            Cooldown = 12.2,
            Range = 161
        }, {
            Skill = 'MortarStrike8',
            Cooldown = 12.2,
            Range = 179
        }, {
            Skill = 'HeavenlySword1',
            Cooldown = 31,
            Range = 143
        }, {
            Skill = 'HeavenlySword2',
            Cooldown = 31,
            Range = 99
        }, {
            Skill = 'HeavenlySword3',
            Cooldown = 31,
            Range = 99
        }, {
            Skill = 'HeavenlySword4',
            Cooldown = 31,
            Range = 99
        }, {
            Skill = 'HeavenlySword5',
            Cooldown = 31,
            Range = 99
        }, {
            Skill = 'HeavenlySword6',
            Cooldown = 31,
            Range = 99
        }}
    },
    Summoner = {
        DisplayName = 'Summoner',
        Range = 82,
        Type = 'Ranged',
        Primary = 'Staff',
        Skills = {{
            Skill = 'Summoner1',
            Cooldown = 0.55
        }, {
            Skill = 'Summoner2',
            Cooldown = 0.75
        }, {
            Skill = 'Summoner3',
            Cooldown = 1.05
        }, {
            Skill = 'Summoner4',
            Cooldown = 1.3
        }, {
            Skill = 'SoulHarvest1',
            Cooldown = 1.1,
            Type = 'Melee',
            Range = 16
        }, {
            Skill = 'SoulHarvest2',
            Cooldown = 1.1,
            Type = 'Melee',
            Range = 21
        }, {
            Skill = 'SoulHarvest3',
            Cooldown = 1.1,
            Type = 'Melee',
            Range = 21
        }, {
            Skill = 'SoulHarvest4',
            Cooldown = 1.1,
            Type = 'Melee',
            Range = 21
        }, {
            Skill = 'SoulHarvest5',
            Cooldown = 1.1,
            Type = 'Melee',
            Range = 21
        }, {
            Skill = b2:WaitForChild('Summoner'):WaitForChild('SoulHarvest'),
            Cooldown = 10.2,
            Type = 'Remote',
            Args = "MobPosition",
            Range = 39
        }, {
            Skill = b2:WaitForChild('Summoner'):WaitForChild('Summon'),
            Cooldown = 0.5,
            Type = 'Remote'
        }, {
            Skill = b2:WaitForChild('Summoner'):WaitForChild('Ultimate'),
            Cooldown = 1,
            Type = 'Remote'
        }}
    },
    Necromancer = {
        DisplayName = 'Necromancer',
        Range = 14,
        Type = 'Melee',
        Primary = 'Scythe',
        Skills = {{
            Skill = 'NecroDPS1',
            Cooldown = 0.8
        }, {
            Skill = 'NecroDPS2',
            Cooldown = 1.2
        }, {
            Skill = 'NecroDPS3',
            Cooldown = 1.5
        }, {
            Skill = 'NecroDPS4',
            Cooldown = 1.9
        }, {
            Skill = 'NecroDPS5',
            Cooldown = 2.2
        }, {
            Skill = 'NecroDPS6',
            Cooldown = 2.5
        }, {
            Skill = 'NecroDPS7',
            Cooldown = 2.8
        }, {
            Skill = 'NecroDPS8',
            Cooldown = 3.2
        }, {
            Skill = 'NecroDPS9',
            Cooldown = 3.5
        }, {
            Skill = 'SpiritExplosion0',
            Cooldown = 2.25,
            Range = 17,
            Type = 'Self'
        }, {
            Skill = 'SpiritExplosion1',
            Cooldown = 2.25,
            Range = 17,
            Type = 'Self'
        }, {
            Skill = 'SpiritExplosion2',
            Cooldown = 3,
            Range = 18,
            Type = 'Self'
        }, {
            Skill = 'SpiritExplosion3',
            Cooldown = 3.25,
            Range = 21,
            Type = 'Self'
        }, {
            Skill = 'SpiritExplosion4',
            Cooldown = 4,
            Range = 24,
            Type = 'Self'
        }, {
            Skill = 'TombstoneRise1',
            Cooldown = 4.2,
            Range = 18
        }, {
            Skill = 'TombstoneRise2',
            Cooldown = 4.2,
            Range = 18
        }, {
            Skill = 'TombstoneRise3',
            Cooldown = 4.2,
            Range = 18
        }, {
            Skill = 'TombstoneRise4',
            Cooldown = 4.2,
            Range = 18
        }, {
            Skill = 'TombstoneRise5',
            Cooldown = 4.2,
            Range = 18
        }, {
            Skill = 'SpiritCavern1',
            Cooldown = 10.2,
            Range = 140,
            Type = 'Ranged'
        }, {
            Skill = 'SpiritCavern2',
            Cooldown = 10.2,
            Range = 140,
            Type = 'Ranged'
        }, {
            Skill = 'SpiritCavern3',
            Cooldown = 10.2,
            Range = 140,
            Type = 'Ranged'
        }, {
            Skill = 'SpiritCavern4',
            Cooldown = 10.2,
            Range = 140,
            Type = 'Ranged'
        }, {
            Skill = 'SpiritCavern5',
            Cooldown = 10.2,
            Range = 140,
            Type = 'Ranged'
        }, {
            Skill = 'SpiritCavern6',
            Cooldown = 10.2,
            Range = 140,
            Type = 'Ranged'
        }, {
            Skill = 'UltScytheDrop',
            Cooldown = 30,
            Range = 98,
            Type = 'Ranged'
        }, {
            Skill = b2:WaitForChild('Necromancer'):WaitForChild('Ultimate'),
            Cooldown = 31,
            Type = 'Remote'
        }}
    },
    MageOfShadows = {
        DisplayName = 'Mage Of Shadows',
        Range = 35,
        Type = 'Ranged',
        Primary = 'Staff',
        Skills = {{
            Skill = 'MageOfShadows',
            Cooldown = 0.5
        }, {
            Skill = 'MageOfShadowsBlast',
            Cooldown = 0.6
        }, {
            Skill = 'MageOfShadowsCharged',
            Cooldown = 0.7
        }, {
            Skill = 'MageOfShadowsBlastCharged',
            Cooldown = 0.8
        }, {
            Skill = 'BighShadowOrb1',
            Cooldown = 0.9
        }, {
            Skill = 'BighShadowOrb2',
            Cooldown = 1
        }, {
            Skill = 'BighShadowOrb3',
            Cooldown = 1.1
        }, {
            Skill = 'MageOfShadowsDamageCircle',
            Cooldown = 0.5
        }, {
            Skill = b2:WaitForChild('MageOfShadows'):WaitForChild('ShadowChains'),
            Cooldown = 6,
            Type = 'Remote',
            Args = 'mobTbl'
        }, {
            Skill = b2:WaitForChild('MageOfShadows'):WaitForChild('Ultimate'),
            Cooldown = 2,
            Type = 'Remote'
        }}
    },
    Hunter = {
        DisplayName = 'Hunter',
        Range = 99,
        Type = 'Ranged',
        Primary = 'Bow',
        Skills = {{
            Skill = 'Hunter',
            Cooldown = 0.5
        }}
    }
}
-- Summon Folder
local cb = Instance.new('Folder')
cb.Name = 'SummonFolder'
cb.Parent = Workspace;
local cc = Instance.new('Folder')
cc.Name = 'infiniteboy'
cc.Parent = Workspace;
local cd;

-- Script Menu
if av then
    cd = Instance.new('Part')
    cd.Name = 'InfiniteKillPart'
    cd.Size = Vector3.new(50, 20, 50)
    cd.Position = Vector3.new(10000, 10000, 10000)
    cd.Anchored = true;
    cd.Transparency = 0;
    cd.Material = 'SmoothPlastic'
    cd.BrickColor = BrickColor.new('Cyan')
    cd.Parent = workspace
end

-- Accesing Github
local ce = 'https://raw.githubusercontent.com/infinitekill/General/main/'
local cf;
local cg;
if a4 then
    local function ch(ci, cj)
        local ck, cl = pcall(function()
            return readfile(cj)
        end)
        if ck and not UpdateLib then
            return loadstring(cl)()
        else
            cl = game:HttpGet(ci)
            writefile(cj, cl)
            return loadstring(cl)()
        end
    end
    bk = ch(ce .. 'Linoria', 'LinoriaV6.lua')
    cf = ch(ce .. 'LinoriaThemeManager', 'LinoriaThemeManagerV5.lua')
    cg = ch(ce .. 'LinoriaSaveManager', 'LinoriaSaveManagerV5.lua')
else
    bk = loadstring(game:HttpGet(ce .. 'Linoria'))()
    cf = loadstring(game:HttpGet(ce .. 'LinoriaThemeManager'))()
    cg = loadstring(game:HttpGet(ce .. 'LinoriaSaveManager'))()
end
a = true;
local function cm(msg)
    warn('[Infinite]: ' .. msg)
end
local function cn(co)
    local bw, cp = pcall(co)
    if not bw and cp then
        cm(cp)
    end
end
local function cq(msg)
    print(msg)
    cn(function()
        bk:Notify(msg)
    end)
end

-- Update the mission objective text in a player's GUI
local function cr(cs, ct)
    local H = c.PlayerGui.MissionObjective.MissionObjective.Label;
    H.Text = cs;
    H.Overlay.Text = cs;
    if ct then
        H.ZIndex = 30;
        H.Overlay.ZIndex = 31
    end
end

-- Clear the mission objective text in the player's GUI.
local function cu()
    local H = c.PlayerGui.MissionObjective.MissionObjective.Label;
    H.Text = ''
    H.Overlay.Text = ''
end

-- Checking the class if Range
local function cv()
    return ca[aZ] and ca[aZ].Type == 'Ranged'
end

-- Handles the detection
local cw = game:GetService('GuiService')
local cx;
cx = cw.ErrorMessageChanged:Connect(function(msg)
    if cw:GetErrorCode() == Enum.ConnectionError.DisconnectLuaKick or cw:GetErrorCode() ==
        Enum.ConnectionError.DisconnectConnectionLost or msg:lower():find("exploit") then
        cx:Disconnect()
        aa.Kicked = true;
        save()
        if msg:lower():find("exploit") then
            local cy = 'Killaura Delay: ``' .. Options.KillauraDelay.Value .. '``\nClass: ``' .. ca[aZ].DisplayName ..
                           '``\nPing: ``' .. ping2() .. '``'
            if ao then
                cy = cy .. '\nCode: ``' .. codeStr .. '``\nMission: ``' .. missionName .. '``'
            end
            cy = cy .. '\n' .. plrLink;
            request({
                Url = boink2,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = e:JSONEncode({
                    ["embeds"] = {{
                        ["title"] = 'Exploit Kick',
                        ["description"] = cy,
                        ["type"] = 'rich',
                        ["color"] = tonumber(m.LightPink),
                        ["footer"] = {
                            ["text"] = f() .. ' UTC'
                        }
                    }}
                })
            })
        end
        T:Teleport(a8, c)
    end
end)

-- GUI
local cz = bk:CreateWindow({
    Title = bausha,
    Center = false,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0
})
local cA = {
    Main = cz:AddTab('Main'),
    Sell = cz:AddTab('Sell'),
    Teleports = cz:AddTab('Teleports'),
    ['Settings'] = cz:AddTab('Settings')
}
local cB = cA.Main:AddLeftTabbox('farmmm')
local cC = cA.Sell:AddLeftTabbox('selll')
local cD = cA.Sell:AddRightTabbox('selll2')
local cE = cB:AddTab('Farm')
local cF = cB:AddTab('Settings')
local cG = cC:AddTab('Auto Sell')
local cH = cD:AddTab('Sell/Recycle Cosmetics')
local cI = cB:AddTab('Weapons')
local cJ = cB:AddTab('Event')
local cK = cA.Main:AddRightTabbox('box')
local cL = cK:AddTab('Visual')
local cM = cK:AddTab('Webhook')
local cN = cK:AddTab('Misc')
local cO = cK:AddTab('Gui')
local cP = cA.Main:AddRightTabbox('temp')
local cQ = cP:AddTab('Stats')
local cR = cA.Teleports:AddLeftGroupbox('Worlds')
local cS = cA.Teleports:AddRightGroupbox('Towers')
local cT = cA.Teleports:AddRightGroupbox('Nightmare Dungeons')

-- GUI for Infinity
do
    cE:AddToggle('Killaura', {
        Text = 'Killaura',
        Default = false
    })
    cE:AddSlider('KillauraDelay', {
        Text = 'Delay',
        Default = 0,
        Min = 0,
        Max = 1,
        Rounding = 2,
        HideMax = true,
        Compact = true
    })
    cE:AddToggle('Autofarm', {
        Text = 'Autofarm',
        Default = false
    })
    cE:AddSlider('Offset', {
        Text = 'Offset',
        Default = cv() and 50 or 6,
        Min = 0,
        Max = ao and (cv() and 75 or 25) or 75,
        Rounding = 1,
        Compact = true
    })
    cE:AddSlider('healPercent', {
        Text = 'Heal At',
        Default = 30,
        Min = 0,
        Max = 100,
        Rounding = 0,
        HideMax = true,
        Compact = true,
        Suffix = '% HP'
    })
    cE:AddSlider('resumePercent', {
        Text = 'Resume At',
        Default = 100,
        Min = 0,
        Max = 100,
        Rounding = 0,
        HideMax = true,
        Compact = true,
        Suffix = '% HP'
    })
    cE:AddToggle('CollectDrops', {
        Text = 'Collect Drops',
        Default = false
    })
    cE:AddToggle('RestartDungeon', {
        Text = 'Restart Dungeon',
        Default = false
    })
    cE:AddToggle('nightmareLoop', {
        Text = 'Nightmare Loop',
        Default = false
    })
    cE:AddToggle('NextDungeon', {
        Text = 'Next Dungeon',
        Default = false
    })
    cE:AddToggle('PerkSwitcher', {
        Text = 'Auto Switch Perks',
        Default = false,
        Tooltip = 'Enables Primary Perks on Mobs, and Offhand Perks on Bosses'
    })
    cE:AddToggle('autoEquipBestwWep', {
        Text = 'Auto Equip Best Weapon/Armor',
        Default = false
    })
    cE:AddToggle('mobCamera', {
        Text = 'Mob POV',
        Default = false
    })
    cE:AddSlider('FastSprint', {
        Text = 'Sprint Speed',
        Default = 28,
        Min = 28,
        Max = 200,
        Rounding = 0,
        Compact = true
    })
    cE:AddButton({
        Text = 'Restart Dungeon',
        Func = function()
            if ao then
                StartRaid(ak, al)
            end
        end,
        DoubleClick = false
    })
    cF:AddSlider('dungeonRestartTimer', {
        Text = 'Restart Dungeon Delay',
        Default = 0,
        Min = 0,
        Max = 300,
        Rounding = 0,
        HideMax = true,
        Suffix = ' seconds',
        Compact = true
    })
    cF:AddSlider('towerRestartTimer', {
        Text = 'Restart Tower Delay',
        Default = 0,
        Min = 0,
        Max = 30,
        Rounding = 0,
        HideMax = true,
        Suffix = ' seconds',
        Compact = true
    })
    cF:AddSlider('dungeonStartTimer', {
        Text = 'Dungeon Start Delay',
        Default = 0,
        Min = 0,
        Max = 300,
        Rounding = 0,
        HideMax = true,
        Suffix = ' seconds',
        Compact = true
    })
    cF:AddSlider('towerStartTimer', {
        Text = 'Tower Start Delay',
        Default = 0,
        Min = 0,
        Max = 600,
        Rounding = 0,
        HideMax = true,
        Suffix = ' seconds',
        Compact = true
    })
    Options.dungeonStartTimer:OnChanged(function(cU)
        bh = bh + 1
    end)
    Options.towerStartTimer:OnChanged(function(cU)
        bi = bi + 1
    end)
    cF:AddSlider('timeoutTimer', {
        Text = 'Dungeon Timeout',
        Default = 120,
        Min = 10,
        Max = 300,
        Rounding = 0,
        HideMax = true,
        Suffix = ' seconds',
        Tooltip = 'Restart dungeon if no damage has been done within the specified time period',
        Compact = true
    })
    cF:AddToggle('restartAfterFloors', {
        Text = 'Inf Tower Smart Restart',
        Tooltip = 'Restarts Infinite Floor after specified amount of floors are completed',
        Default = false
    })
    cF:AddInput('completedInfiniteTowerFloors', {
        Text = 'Floors',
        Default = 31,
        Numeric = true,
        Finished = true
    })
    cF:AddToggle('ignoreCannon', {
        Text = 'Ignore Cannon (Atlantis Tower)',
        Default = false
    })
    cF:AddToggle('skipScarecrowNm', {
        Text = 'Skip Scarecrow Defense (NM Loop)',
        Default = false
    })
    cF:AddToggle('rejoinDungeon', {
        Text = 'Rejoin Last Dungeon',
        Tooltip = 'Automatically starts the last dungeon started within your desired time limit',
        Default = false
    })
    Toggles.rejoinDungeon:OnChanged(function(cV)
        aa.RejoinLastDungeon = cV;
        save()
    end)
    local cW = {
        ['30 minutes'] = 1800,
        ['3 hours'] = 10800,
        ['12 hours'] = 43200,
        ['24 hours'] = 86400,
        ['Infinite'] = 999999999
    }
    cF:AddDropdown('rjdLimit', {
        Text = 'Rejoin Last Dungeon Limit',
        Values = {'30 minutes', '3 hours', '12 hours', '24 hours', 'Infinite'},
        Default = '30 minutes',
        AllowNull = false,
        Multi = false
    })
    Options.rjdLimit:OnChanged(function(cV)
        aa.RejoinLastDungeonThreshold = cW[cV]
        save()
    end)
    cF:AddToggle('forceRestartLastTower', {
        Text = 'Force Restart Last Tower',
        Tooltip = 'Restart the Tower when going back to town (willingly or by force)',
        Default = false
    })
    Toggles.forceRestartLastTower:OnChanged(function(cV)
        aa.ForceRestartLastTower = cV;
        save()
    end)
    cF:AddSlider('playerCountKick', {
        Text = 'Mission PlayerCount Kick',
        Default = 6,
        Min = 2,
        Max = 6,
        Rounding = 0,
        HideMax = true,
        Tooltip = 'Disconnect from the game if player count reaches the threshold in mission',
        Compact = true
    })
    task.spawn(function()
        while ao do
            if #b:GetPlayers() >= Options.playerCountKick.Value then
                task.wait(0.5)
                c:Kick('Someone might have joined your mission!')
                break
            end
            task.wait()
        end
    end)
    cI:AddInput('mobWepId', {
        Numeric = false,
        Finished = true,
        Text = 'Current Mob Weapon'
    })
    cI:AddInput('bossWepId', {
        Numeric = false,
        Finished = true,
        Text = 'Current Boss Weapon'
    })
    cI:AddButton({
        Text = 'Set Current Primary for Mobs',
        Tooltip = 'Killaura will auto equip this weapon when targeting mobs',
        Func = function()
            local cX = aT and aT:GetChildren()[1]
            local cY = cX and cX.ID.Value;
            if cY then
                Options.mobWepId:SetValue(cY)
                cq('Set ' .. bL[cX.Name].DisplayKey .. ' as your Mob weapon!')
            else
                cq('No suitable Primary Weapon Detected')
            end
        end,
        DoubleClick = false
    })
    cI:AddButton({
        Text = 'Set Current Primary for Bosses',
        Tooltip = 'Killaura will auto equip this weapon when targeting bosses',
        Func = function()
            local cX = aT and aT:GetChildren()[1]
            local cY = cX and cX.ID.Value;
            if cY then
                Options.bossWepId:SetValue(cY)
                cq('Set ' .. bL[cX.Name].DisplayKey .. ' as your Boss weapon!')
            else
                cq('No suitable Primary Weapon Detected')
            end
        end,
        DoubleClick = false
    })
    cI:AddButton({
        Text = 'Reset Selected Weapons',
        Func = function()
            Options.mobWepId:SetValue('')
            Options.bossWepId:SetValue('')
            cq('Selected weapons reset!')
        end,
        DoubleClick = false
    })
    cM:AddInput('dungeonHook', {
        Numeric = false,
        Finished = true,
        Text = 'Mission Webhook',
        Tooltip = 'Put your own webhook link to log mission completions/fails'
    })
    cM:AddInput('drophook', {
        Numeric = false,
        Finished = true,
        Text = 'Drop Webhook',
        Tooltip = 'Put your own webhook link to log T5 drops'
    })
    cM:AddInput('dropHookRoleId', {
        Numeric = false,
        Finished = true,
        Text = 'Custom Role ID for DropHook',
        Tooltip = 'Mention your chosen role instead of @everyone when getting a desired perk T5'
    })
    cM:AddToggle('anonHook', {
        Text = 'Anonymous Webhook',
        Tooltip = "Won't show your User Info in the webhook",
        Default = false
    })
end

-- GUI for Infinity
do
    cG:AddDropdown('AutoSellTbl', {
        Text = 'Auto Sell Tiers',
        Values = {1, 2, 3, 4, 5},
        AllowNull = true,
        Multi = true
    })
    cG:AddButton({
        Text = 'Sell All',
        Tooltip = 'Sells all weapons and armors of selected tiers',
        Func = function()
            local cZ = {}
            for B, C in pairs(bF:GetChildren()) do
                local c_ = bL[C.Name]
                if (c_.Type == 'Weapon' or c_.Type == 'Armor') and Options.AutoSellTbl.Value[bZ:GetItemTier(C)] and
                    not C:FindFirstChild('Locked') then
                    table.insert(cZ, C)
                end
            end
            if #cZ > 0 then
                cq('Sold ' .. #cZ .. ' items')
                S.Drops.SellItems:InvokeServer(cZ)
            end
        end,
        DoubleClick = true
    })
    cG:AddToggle('autoSellAll', {
        Text = 'Auto Sell All',
        Tooltip = "Failsafe incase auto sell doesn't sell in time at the end of a mission",
        Default = false
    })
    Toggles.autoSellAll:OnChanged(function(cU)
        if cU then
            local cZ = {}
            for B, C in pairs(bF:GetChildren()) do
                local c_ = bL[C.Name]
                if (c_.Type == 'Weapon' or c_.Type == 'Armor') and Options.AutoSellTbl.Value[bZ:GetItemTier(C)] and
                    not C:FindFirstChild('Locked') then
                    table.insert(cZ, C)
                end
            end
            if #cZ > 0 then
                cq('Sold ' .. #cZ .. ' items')
                S.Drops.SellItems:InvokeServer(cZ)
            end
        end
    end)
    cG:AddToggle('autoSellEggs', {
        Text = 'Auto Sell Eggs',
        Default = false,
        Tooltip = 'Works in Event Wheel Hub also'
    })
    cG:AddDivider()
    cG:AddToggle('smartPerkSell', {
        Text = 'Smart T5 Auto Sell',
        Default = false,
        Tooltip = 'Do NOT enable this until you have turned all of your desired perks slider atleast 1 higher than lowest value'
    })
    local d0 = {}
    for B, C in pairs(bK) do
        table.insert(d0, C.DisplayName)
    end
    table.sort(d0)
    for B = 1, #d0 do
        for d1, d2 in pairs(bK) do
            if d0[B] == d2.DisplayName then
                cG:AddSlider(d1, {
                    Text = d2.DisplayName,
                    Default = math.round(d2.StatRange[1] * 100),
                    Min = math.round(d2.StatRange[1] * 100),
                    Max = math.round(d2.StatRange[2] * 100),
                    Rounding = 0,
                    HideMax = true,
                    Compact = true,
                    Suffix = '%'
                })
            end
        end
    end
end

do
    -- Teleport for Specific Location
    function PlayerTp(o, dy, dz, dA)
        if alive() then
            aG.CFrame = CFrame.new(o + Vector3.new(dy, dz, dA))
        end
    end

    -- Teleport the player to a target position
    function SmartPlayerTp(bq, dB)
        if not alive() then
            return
        end
        noclip()
        aG.Velocity = Vector3.new()
        if aF:FindFirstChild("Collider") then
            aF.Collider.Velocity = Vector3.new()
        end
        if dB then
            aG.CFrame = CFrame.lookAt(bq.Position, Vector3.new(dB.Position.x, bq.Position.y, dB.Position.z))
        else
            aG.CFrame = bq
        end
    end

    cL:AddToggle('NVD', {
        Text = 'No Visual Damage',
        Default = true
    })
    cL:AddToggle('rendering', {
        Text = 'Disable 3D Rendering',
        Default = false
    })
    Toggles.rendering:OnChanged(function(cV)
        cloneref(game:GetService("RunService")):Set3dRenderingEnabled(not cV)
    end)
    cL:AddToggle('autoHide', {
        Text = 'Hide GUI On Execution',
        Default = false
    })
    -- Upgraded Equipments 
    cN:AddButton({
        Text = 'Upgrade Equipped Items',
        Func = function()
            local dC = {aT:GetChildren()[1], aU:GetChildren()[1], aV:GetChildren()[1]}
            for ds, dD in dC do
                task.spawn(function()
                    if dD and dD:FindFirstChild('UpgradeLimit') and dD.UpgradeLimit.Value ~= 0 then
                        local dE = aP.Value;
                        local dF = tick()
                        while task.wait(0.1) do
                            if dD:FindFirstChild('Upgrade') and dD.Upgrade.Value == dD.UpgradeLimit.Value then
                                break
                            else
                                aW:FireServer(dD)
                                if aP.Value ~= dE then
                                    dE = aP.Value;
                                    dF = tick()
                                end
                                if tick() - dF >= 2 then
                                    break
                                end
                            end
                        end
                    end
                end)
            end
        end,
        DoubleClick = true
    })

    -- Discover Dungeons
    cN:AddButton({
        Text = 'Discover Dungeons (BLATANT)',
        Func = function()
            if alive() and not ao then
                local dG = Workspace.PhysicalDungeonLocations;
                for B, C in pairs(dG:GetChildren()) do
                    S.Teleport.WaystoneTeleport:FireServer(1)
                    aG:GetPropertyChangedSignal("Position"):Once(function()
                        PlayerTp(C.Ring.Position, 0, 10, 0)
                    end)
                    wait(1)
                end
            end
        end,
        DoubleClick = true
    })
    local dH = false;
    local dI = true;

    -- Dex 
    if olympus then
        cN:AddButton({
            Text = 'Dex Explorer',
            Func = function()
                if not dH then
                    dH = true;
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
                end
            end,
            DoubleClick = true
        })
    end
end

do
    local dJ = 7;

    -- Game Gui 
    local dK = {
        Bank = {
            DisplayName = 'Bank',
            CodeName = 'Bank',
            OrderId = 1
        },
        ZeroAltar = {
            DisplayName = 'Zero Altar',
            CodeName = 'Fusion',
            OrderId = 2
        },
        UpgradeMenu = {
            DisplayName = 'Upgrade',
            CodeName = 'ItemUpgrade',
            OrderId = 3
        },
        DungeonMenu = {
            DisplayName = 'Dungeon Menu',
            CodeName = 'MissionSelect',
            OrderId = 4
        },
        Inventory = {
            DisplayName = 'Inventory',
            CodeName = 'Inventory',
            OrderId = 5
        },
        Recycler = {
            DisplayName = 'Recycler',
            CodeName = 'Recycler',
            OrderId = 6
        },
        AdminItemPanel = {
            DisplayName = 'Admin Item Panel',
            CodeName = 'AdminItemPanel',
            OrderId = 7
        }
    }

    -- Open Game Service
    local function dL(o)
        setthreadcontext(2)
        require(R.Client.Gui):Get(o):Open()
    end

    -- DisplayName
    for B = 1, dJ do
        for dM, dN in pairs(dK) do
            if dN.OrderId == B then
                cO:AddButton({
                    Text = dN.DisplayName,
                    Func = function()
                        dL(dN.CodeName)
                    end,
                    DoubleClick = false
                })
            end
        end
    end
    -- Market Fillers
    cO:AddInput('marketFilter', {
        Numeric = false,
        Finished = true,
        Text = 'Market Filter'
    })
    -- Market Fillers
    cO:AddButton({
        Text = 'Open All Markets',
        Func = function()
            task.spawn(function()
                setthreadcontext(2)
                local dO = require(game.ReplicatedStorage.Client.Gui):Get("Shop")
                local dP = getfenv(dO.Open).BuildShop;
                pcall(dO.Open, dO, game)
                for B, C in pairs(getupvalue(dP, 1)) do
                    C:Destroy()
                end
                for B, C in pairs(getupvalue(dP, 2)) do
                    C:Disconnect()
                end
                local dQ = {}
                local dR = {}
                local dS = R:WaitForChild("PlayerShops")
                for B, dT in pairs(b:GetPlayers()) do
                    local dU = dS:FindFirstChild(dT.Name) and dS[dT.Name]:FindFirstChild("SellShop")
                    if dU and dU:FindFirstChild("Active") and dU.Active.Value then
                        setupvalue(dP, 1, {})
                        setupvalue(dP, 2, {})
                        dP(dT)
                        for B, C in pairs(getupvalue(dP, 1)) do
                            C.Title.Text = C.Title.Text .. " (" .. dT.Name .. ")"
                            C.Title.Overlay.Text = C.Title.Text;
                            table.insert(dQ, C)
                        end
                        for B, C in pairs(getupvalue(dP, 2)) do
                            table.insert(dR, C)
                        end
                    end
                end
                if Options.marketFilter.Value and #Options.marketFilter.Value > 0 then
                    for B, C in pairs(dQ) do
                        if not C.Title.Text:lower():find(Options.marketFilter.Value:lower()) then
                            C:Destroy()
                        end
                    end
                end
                table.sort(dQ, function(dV, db)
                    local dW =
                        dV:FindFirstChild('Cost') and dV.Cost:FindFirstChild('Overlay') and #dV.Cost.Overlay.Text > 0 and
                            dV.Cost.Overlay.Text:gsub(",", "") and tonumber(dV.Cost.Overlay.Text:gsub(",", "")) or 0;
                    local dX =
                        db:FindFirstChild('Cost') and db.Cost:FindFirstChild('Overlay') and #db.Cost.Overlay.Text > 0 and
                            db.Cost.Overlay.Text:gsub(",", "") and tonumber(db.Cost.Overlay.Text:gsub(",", "")) or 0;
                    return dW > dX
                end)
                setupvalue(dP, 1, dQ)
                setupvalue(dP, 2, dR)
                getupvalue(dO.Init, 1).Title.Text = "All Shops"
                getupvalue(dO.Init, 1).Title.Overlay.Text = "All Shops"
            end)
        end,
        DoubleClick = false
    })
end

do
    -- Gold Tracker
    local dY = cQ:AddLabel('Gold Gain: ' .. aP.Value - aQ)
    local dZ = cQ:AddLabel('Gold Rate: N/A')
    local d_ = true;
    getgenv().sessionTick = tick()
    local e0;
    local e1;
    local e2 = false;
    local e3 = cQ:AddLabel('Total Gold: ' .. formatNumberWithCommas(aP.Value))
    local e4 = cQ:AddLabel('Session Time: 0s')
    cQ:AddDivider()
    local e5 = aa.CrossSessionTimestamp or tick()
    local e6 = cQ:AddLabel('Cross-Session Time: ' .. timeElapsed(tick() - e5))
    local e7 = cQ:AddLabel('CS Gold Gain: ' ..
                               formatNumberWithCommas(aa.CrossSessionGold and aR - aa.CrossSessionGold or 0))
    local e8 = aa.CrossSessionGold or aR;
    -- Reset Cross-Session Time: 
    cQ:AddButton({
        Text = 'Reset Cross-Session Time',
        Func = function()
            e5 = tick()
            aa.CrossSessionTimestamp = e5;
            save()
        end,
        DoubleClick = true
    })
    -- Reset Cross-Session Gold
    cQ:AddButton({
        Text = 'Reset Cross-Session Gold',
        Func = function()
            e8 = aR;
            aa.CrossSessionGold = e8;
            save()
            e7:SetText('CS Gold Gain: 0')
        end,
        DoubleClick = true
    })

    -- CrossSessionTimestamp and CrossSessionGold
    local e9;
    if not aa.CrossSessionTimestamp then
        aa.CrossSessionTimestamp = e5;
        e9 = true
    end
    if not aa.CrossSessionGold then
        aa.CrossSessionGold = e8;
        e9 = true
    end
    if e9 then
        save()
    end

    -- Track Gold Progress
    task.spawn(function()
        while true do
            if aP.Value ~= aR then
                aR = aP.Value;
                if not d_ then
                    dZ:SetText('Gold Rate: ' .. math.floor((aR - e1) / (tick() - e0) * 600) / 10 .. '/min')
                end
                if d_ then
                    d_ = false;
                    e2 = true;
                    e0 = tick()
                    e1 = aR
                end
                dY:SetText('Gold Gained: ' .. formatNumberWithCommas(aR - aQ))
                e3:SetText('Total Gold: ' .. formatNumberWithCommas(aR))
                e7:SetText('CS Gold Gain: ' .. formatNumberWithCommas(aR - e8))
            end
            task.wait()
        end
    end)

    -- Continuously update the session time and cross-session time
    task.spawn(function()
        while true do
            task.wait(1)
            e4:SetText('Session Time: ' .. timeElapsed(tick() - sessionTick))
            e6:SetText('Cross-Session Time: ' .. timeElapsed(tick() - e5))
        end
    end)
end

-- Teleport to Any World and Hub
do
    for B = 1, c6 do
        for dM, ea in pairs(c7) do
            if ea.OrderId == B then
                cR:AddButton({
                    Text = ea.Name,
                    Func = function()
                        S.Teleport.TeleportToHub:FireServer(ea.Id)
                    end,
                    DoubleClick = false
                })
            end
        end
    end
end

-- Raid identifier
do
    for B, C in pairs(am) do
        local eb = bH[C]
        cS:AddButton({
            Text = eb.NameTag .. ' T' .. B,
            Func = function()
                StartRaid(C)
            end,
            DoubleClick = false
        })
    end
end

do
    -- Display World ID
    local ec;
    for B, C in pairs(an) do
        local eb = bH[C]
        local ed = string.gsub(eb.NameTag, '%(NIGHTMARE%) ', '')
        cT:AddButton({
            Text = ed .. ' ' .. eb.DisplayWorldID .. '-' .. eb.WorldMissionID,
            Func = function()
                StartRaid(C, ec)
            end,
            DoubleClick = false
        })
    end

    -- Challenge Mode
    cT:AddToggle('ChallengeMode', {
        Text = 'Challenge Mode',
        Default = true
    })
    Toggles.ChallengeMode:OnChanged(function(cV)
        if cV then
            ec = 5
        else
            ec = 1
        end
    end)
end

-- Variables for Vector
local ee = Vector3.new(2000, 2000, 2000)
local ef = Vector3.new()
local eg;
local eh;
do
    -- Mob Teleportation
    function MobTeleport()
        task.spawn(function()
            local ei;
            local ej;
            local ek;
            while Toggles.Autofarm.Value and not b7 do
                for B, C in pairs(b9:GetChildren()) do
                    if isAlive(C) then
                        if mobWaitTbl and table.find(mobWaitTbl, C.Name) and (not ek or alwaysWait) then
                            task.wait(waittime)
                            ek = true
                        end
                        local X = C.PrimaryPart;
                        if not ej then
                            ej = true
                        end
                        while isAlive(C) and Toggles.Autofarm.Value and U and not b7 do
                            bV = C;
                            ei = X.Position;
                            if bT then
                                resetCamera()
                            else
                                setMobCamera(Toggles.mobCamera.Value, X)
                            end
                            eg = (X.Size.Y / 2 + Options.Offset.Value) * (cv() and 1 or -1)
                            eh = CFrame.new(X.Position +
                                                (table.find(aE, C) and ef or Vector3.new(0, eg, 0) + (bT and ee or ef))) +
                                     X.CFrame.lookVector * 2;
                            SmartPlayerTp(eh, X)
                            bX:Wait()
                        end
                    end
                end
                bV = nil;
                resetCamera()
                unnoclip()
                if au and U and ej then
                    SmartPlayerTp(CFrame.new(10000, 10000, 10000))
                end
                task.wait()
            end
            if ei and au then
                SmartPlayerTp(CFrame.new(ei + Vector3.new(0, 10, 0)))
            end
        end)
    end
    -- MobTeleportIgnore
    function MobTeleportIgnore(el, mobWaitTbl, waittime, alwaysWait)
        local ek;
        task.spawn(function()
            while Toggles.Autofarm.Value do
                for B, C in pairs(b9:GetChildren()) do
                    if isAlive(C) then
                        if C.Name ~= el or C.Name == el and b3 == 1 then
                            if mobWaitTbl and table.find(mobWaitTbl, C.Name) and (not ek or alwaysWait) then
                                task.wait(waittime)
                                ek = true
                            end
                            local X = C.PrimaryPart;
                            while isAlive(C) and Toggles.Autofarm.Value and U and
                                (C.Name ~= el or C.Name == el and b3 == 1) do
                                bV = C;
                                if bT then
                                    resetCamera()
                                else
                                    setMobCamera(Toggles.mobCamera.Value, X)
                                end
                                eg = (X.Size.Y / 2 + Options.Offset.Value) * (cv() and 1 or -1)
                                eh = CFrame.new(X.Position +
                                                    (table.find(aE, C) and ef or Vector3.new(0, eg, 0) +
                                                        (bT and ee or ef))) + X.CFrame.lookVector * 2;
                                SmartPlayerTp(eh, X)
                                bX:Wait()
                            end
                        end
                    end
                end
                bV = nil;
                resetCamera()
                unnoclip()
                task.wait()
            end
        end)
    end

    -- Priority-Based Teleportation
    function MobTeleportPriority(em, mobWaitTbl, waittime, alwaysWait)
        local en, eo;
        task.spawn(function()
            while Toggles.Autofarm.Value do
                local ep = false;
                local eq = {}
                for B, C in b9:GetChildren() do
                    if isAlive(C) then
                        table.insert(eq, C)
                    end
                end
                for B = 1, #em do
                    for ds, Mob in eq do
                        if Mob.Name == em[B] then
                            ep = true;
                            en, eo = Mob, Mob.Name;
                            break
                        end
                    end
                    if ep then
                        break
                    end
                end
                if not ep and eq[1] then
                    en, eo = eq[1], eq[1].Name
                end
                task.wait()
            end
        end)
        task.spawn(function()
            local ek;
            while Toggles.Autofarm.Value do
                if isAlive(en) and U then
                    local er = en.PrimaryPart;
                    bV = en;
                    if mobWaitTbl and table.find(mobWaitTbl, eo) and (not ek or alwaysWait) then
                        task.wait(waittime)
                        ek = true
                    end
                    if bT then
                        resetCamera()
                    else
                        setMobCamera(Toggles.mobCamera.Value, er)
                    end
                    eg = (er.Size.Y / 2 + Options.Offset.Value) * (cv() and 1 or -1)
                    eh = CFrame.new(er.Position +
                                        (table.find(aE, en) and ef or Vector3.new(0, eg, 0) + (bT and ee or ef))) +
                             er.CFrame.lookVector * 2;
                    SmartPlayerTp(eh, er)
                else
                    bV = nil;
                    resetCamera()
                    unnoclip()
                end
                bX:Wait()
            end
        end)
    end

    -- AutoCheckpoint Loop
    function AutoCheckpoint()
        task.spawn(function()
            while Toggles.Autofarm.Value do
                if alive() then
                    for B, C in pairs(workspace:GetDescendants()) do
                        if C and C.Name == "TouchInterest" and C.Parent and
                            (table.find(c3, C.Parent.Name) or C.Parent.Parent and table.find(c3, C.Parent.Parent.Name)) then
                            task.spawn(function()
                                C.Parent.CanCollide = false;
                                C.Parent.Anchored = true;
                                C.Parent.Transparency = 1;
                                C.Parent.CFrame = CFrame.new(aG.Position)
                                task.wait(0.25)
                                if C and C.Parent then
                                    C.Parent.CFrame = CFrame.new(Vector3.new(0, 0, 0))
                                end
                            end)
                        end
                    end
                end
                task.wait(0.5)
                if ay then
                    break
                end
            end
        end)
    end

    -- Mob Counter
    function MobCounter()
        task.spawn(function()
            while Toggles.Autofarm.Value do
                b4 = 0;
                for B, C in pairs(b9:GetChildren()) do
                    if isAlive(C) then
                        b4 = b4 + 1
                    end
                end
                if b3 ~= b4 then
                    b3 = b4
                end
                task.wait()
            end
        end)
    end

    -- AntiFling
    function AntiFling()
        if Toggles.Autofarm.Value then
            task.spawn(function()
                bS = nil;
                while Toggles.Autofarm.Value and not b7 do
                    if bV and bV.PrimaryPart and bV.PrimaryPart.Position then
                        bS = ay and CFrame.new(Vector3.new(324, 60, -134)) or
                                 CFrame.new(bV.PrimaryPart.Position + Vector3.new(0, 5, 0))
                    end
                    if bS and b3 == 0 then
                        local es = tick()
                        while tick() - es <= 0.1 and b3 == 0 do
                            SmartPlayerTp(bS)
                            bX:Wait()
                        end
                        bS = nil
                    end
                    task.wait()
                end
                if not Toggles.Autofarm.Value and not b7 then
                    if bS then
                        local es = tick()
                        while tick() - es <= 0.1 do
                            SmartPlayerTp(bS)
                            bX:Wait()
                        end
                        bS = nil
                    end
                end
            end)
        end
    end

    -- Server Side Selling
    function sell(bx)
        S.Drops.SellItems:InvokeServer(bx)
    end
    -- Server Side Recycle
    function recycle(bx)
        S.Recycler.Recycle:FireServer(bx)
    end
end
-- Cogwork Outfit
if notadding then
    local function et(o, p)
        if aF then
            aI:SetAttribute(o, p)
        end
    end
    local function d8(dy, dz, dA)
        Color3.fromRGB(dy, dz, dA)
    end
    local eu = {
        Red = Color3.fromRGB(255, 0, 0),
        Black = Color3.fromRGB(0, 0, 0),
        White = Color3.fromRGB(255, 255, 255),
        Green = Color3.fromRGB(0, 255, 0),
        Pink = Color3.fromRGB(255, 0, 255),
        Cyan = Color3.fromRGB(0, 255, 255),
        Purple = Color3.fromRGB(127.5, 0, 255),
        Orange = Color3.fromRGB(255, 127.5, 0),
        LightPink = Color3.fromRGB(255, 127.5, 255)
    }
    local aS = {
        Costume = "Costume",
        CostumeDye = "CostumeDye",
        RightAura = "RightAura",
        LeftAura = "LeftAura",
        RightWepSkin = "PrimarySkin",
        LeftWepSkin = "OffhandSkin",
        Back = "Back",
        BackDye = "BackDye",
        Hat1 = "Hat1",
        Hat1Dye = "Hat1Dye",
        Hat2 = "Hat2",
        Hat2Dye = "Hat2Dye",
        Hat3 = "Ha32",
        Hat3Dye = "Hat3Dye",
        Mount = "Mount"
    }
    local ev = {
        Costume = "CogWorkArmor",
        Hat1 = "CogWorkTophat",
        Hat2 = "CogWorkGoggles"
    }
    do
        -- Cogwork
        function CogWorkOutfit()
            if aI:GetAttribute('Primary') then
                local ew = bL[aI:GetAttribute('Primary')].SubType;
                if ew == 'Greataxe' then
                    et(aS.RightWepSkin, 'CogWorkAxe')
                else
                    et(aS.RightWepSkin, 'CogWork' .. ew)
                end
            end
            if aI:GetAttribute('Offhand') then
                local ew = bL[aI:GetAttribute('Offhand')].SubType;
                if ew == 'Greataxe' then
                    et(aS.LeftWepSkin, 'CogWorkAxe')
                else
                    et(aS.LeftWepSkin, 'CogWork' .. ew)
                end
            end
            for B, C in pairs(ev) do
                et(B, C)
            end
        end
    end
    do -- Cogwork
        OutfitList:AddButton({
            Text = 'Cogwork',
            Func = function()
                if aF then
                    CogWorkOutfit()
                end
            end,
            DoubleClick = false
        })
    end
end

-- demon Life steal
local function ex(dV, db, cV)
    return string.char(dV + db - cV)
end
local ey = ''
ey = ey .. ex(68, 1, 1)
ey = ey .. ex(101, 2, 2)
ey = ey .. ex(109, 3, 3)
ey = ey .. ex(111, 4, 4)
ey = ey .. ex(110, 5, 5)
table.insert(bl, ey)
local ez = ''
ez = ez .. ex(76, 2, 2)
ez = ez .. ex(105, 1, 1)
ez = ez .. ex(102, 0, 0)
ez = ez .. ex(101, -1, -1)
ez = ez .. ex(83, 0, 0)
ez = ez .. ex(116, 0, 0)
ez = ez .. ex(101, 0, 0)
ez = ez .. ex(97, 0, 0)
ez = ez .. ex(108, 0, 0)

do
    if ao then
        -- Mission Object
        if aj:FindFirstChild(6) then
            task.spawn(function()
                local eA, eB, eC = Workspace:WaitForChild('Pillar1'), Workspace:WaitForChild('Pillar2'),
                    Workspace:WaitForChild('Pillar3')
                eC:WaitForChild('HealthProperties')
                eA.Name = 'Pillar'
                eB.Name = 'Pillar'
                eC.Name = 'Pillar'
                eA.Parent = b9;
                eB.Parent = b9;
                eC.Parent = b9
            end)

            -- Kraken Boss
        elseif as or ay then
            task.spawn(function()
                while true do
                    local eD = b9:FindFirstChild('BOSSKrakenMain') or b9:FindFirstChild('EVENTBOSSKraken')
                    if eD then
                        local eE = Instance.new('Folder')
                        eE.Name = 'WaterFolder'
                        eE.Parent = Workspace;
                        eD.Parent = Workspace.WaterFolder;
                        if as then
                            b7 = true
                        end
                        break
                    end
                    task.wait()
                end
            end)

            -- Destroy object   
        elseif aj:FindFirstChild(30) then
            local eF = 0;
            task.spawn(function()
                while true do
                    for B, C in pairs(b9:GetChildren()) do
                        if (C.PrimaryPart.Position - Vector3.new(533, 302, -123)).magnitude < 100 then
                            C:Destroy()
                            eF = eF + 1
                        end
                    end
                    if eF == 3 then
                        break
                    end
                    task.wait()
                end
            end)
        end

        -- Generates Mission
        local eG = bH[ak]
        local missionName = eG.NameTag .. (al == 1 and ' Normal' or al == 5 and ' Challenge' or '')
        missionName = string.gsub(missionName, '%(NIGHTMARE%) ', 'Nightmare ')
        getgenv().missionName = missionName;
        getgenv().codeStr = eG.EventDungeon and 'Event' or (au or av) and 'Special' or eG.TowerID and 'Tower ' ..
                                eG.TowerID or eG.DisplayWorldID .. '-' .. eG.WorldMissionID;

        -- User Hooks                      
        function hookWithUserInfo(ci, eH, eI, d8, g, cl)
            request({
                Url = ci,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = e:JSONEncode({
                    ["content"] = cl or '',
                    ["embeds"] = {{
                        ["title"] = eH,
                        ["description"] = eI,
                        ["type"] = 'rich',
                        ["color"] = tonumber(d8),
                        ["footer"] = {
                            ["text"] = g .. ' UTC'
                        }
                    }}
                })
            })
        end

        -- User Hooks
        function anonHook(ci, eH, eI, d8, g, cl)
            request({
                Url = ci,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = e:JSONEncode({
                    ["content"] = cl or '',
                    ["embeds"] = {{
                        ["title"] = eH,
                        ["description"] = eI,
                        ["type"] = 'rich',
                        ["color"] = tonumber(d8),
                        ["footer"] = {
                            ["text"] = g .. ' UTC'
                        }
                    }}
                })
            })
        end

        -- User Dungeon Raids
        function msg(eJ, d8, g)
            local eK = Options.dungeonHook.Value;
            local eL = g > 600 and timeElapsed(g) or math.round(g / 0.1) / 10 .. 's'
            local eM = 'Code: ``' .. codeStr .. '``\nMission: ``' .. missionName .. '``\nTime: ``' .. eL ..
                           '``\nClass: ' .. '``' .. ca[aZ].DisplayName .. '``'
            if au then
                local bs = b9:GetChildren()[1]
                local eN = bs and Mob(bs.Name)
                local a1, eo = eN and eN.BossTag, eN and eN.NameTag;
                if a1 and eo then
                    eM = eM .. '\nBoss: ``' .. eo .. '``'
                end
            end
            if a4 then
                if aa.LastDungeonCompletion then
                    eM = eM .. '\nTime Since Last Completion: ``' .. math.round((c0 - aa.LastDungeonCompletion) / 0.1) /
                             10 .. 's``'
                end
                if aa.Gold and V >= aa.Gold then
                    eM = eM .. '\nGold Gained: ``' .. formatNumberWithCommas(V - aa.Gold) .. '``'
                end
                aa.Gold = V;
                aa.LastDungeonCompletion = c0;
                save()
            end
            eM = eM .. '\nGold: ``' .. formatNumberWithCommas(aP.Value) .. '``'
            if ax then
                local eO = {
                    KrakenRaid = {
                        coinCode = "KrakenCoin",
                        coinStr = "Kraken Coins",
                        lb = "KRAKEN_KILLS",
                        name = "Kraken"
                    },
                    VaneRaid = {
                        coinCode = "DragonCoin",
                        coinStr = "Dragon Coins",
                        lb = "VANE_KILLS",
                        name = "Vane"
                    },
                    HalloweenRaid = {
                        coinCode = "HalloweenCoin",
                        coinStr = "Halloween Coins",
                        lb = "FALLENKING_KILLS",
                        name = "Halloween"
                    },
                    ChristmasRaid = {
                        coinCode = "ChristmasCoin",
                        coinStr = "Christmas Coins",
                        lb = "SANTA_KILLS",
                        name = "Christmas"
                    }
                }
                local eP = ay and "KrakenRaid" or aA and "VaneRaid" or aB and "HalloweenRaid" or az and "ChristmasRaid"
                local eQ = eO[eP].coinCode;
                local eR = eO[eP].coinStr;
                local eS = eO[eP].lb;
                local eT = eO[eP].name;
                local eU = game:GetService("ReplicatedStorage").Shared.LeaderboardHookup.GetScore:InvokeServer(eS, 1)
                eM = eM .. '\n' .. eT .. ' Raids Completed: ``' .. eU[1] .. '`` / ``' .. eU[2] .. '``'
                if bF:FindFirstChild(eQ) and bF[eQ]:FindFirstChild('Count') then
                    eM = eM .. '\n' .. eR .. ': ``' .. bF[eQ].Count.Value .. '``'
                end
            elseif au or av then
                eM = eM .. '\nFloor: **' .. R.ReplicateTowerFloor.Value .. '**'
            end

            local function eV()
                local D = game:GetService("ReplicatedStorage").Shared.NewGuildSystem.GetCache:InvokeServer(bW)
                local E;
                for B, C in D.Members do
                    if tonumber(B) == d then
                        E = C.Points;
                        break
                    end
                end
                if E then
                    eM = eM .. '\nGuild Points: ``' .. E .. '`` / ``' .. bW .. '``'
                end
            end
            local eW = false;
            if bW and not Toggles.anonHook.Value and eW then
                eV()
            end
            if not Toggles.anonHook.Value then
                eM = eM .. '\n' .. plrLink
            end
            if eK and #eK > 30 then
                if a3 then
                    task.wait(1.5)
                end
                a3 = true;
                if Toggles.anonHook.Value then
                    anonHook(eK, eJ, eM, d8, f())
                else
                    hookWithUserInfo(eK, eJ, eM, d8, f())
                end
                a3 = false
            end
            if not olympus then
                if bW and Toggles.anonHook.Value then
                    eV()
                end
                if Toggles.anonHook.Value then
                    eM = eM .. '\n' .. plrLink
                end
                if a3 then
                    task.wait(1.5)
                end
                a3 = true;
                hookWithUserInfo(boink3, eJ, eM, d8, f())
                a3 = false
            end
        end

        -- Mission loop and Nightmare
        function missionEndRestartOrNextEvent()
            if Toggles.Autofarm.Value then
                if Toggles.nightmareLoop.Value and aw then
                    local eX = nextInTbl(an, ak)
                    if bH[eX].InternalID == 3 and Toggles.skipScarecrowNm.Value then
                        eX = nextInTbl(an, eX)
                        cq('Skipping Scarecrow Defense')
                    end
                    StartRaid(eX, al)
                elseif Toggles.NextDungeon.Value and not au then
                    local eY = nextInTbl(c8, ak)
                    local eZ = table.find(ac, eY)
                    local e_ = aO.Level.Value >= bI(eY) and (al == 5 or at or au or av)
                    local f0 = e_ and eY or ak;
                    local f1 = e_ and (eZ and 'tower' or c2[al] or 1) or al == 1 and 5 or al;
                    if f1 == 'tower' then
                        f1 = nil
                    end
                    StartRaid(f0, f1)
                elseif Toggles.RestartDungeon.Value then
                    game:GetService("ReplicatedStorage").Shared.Missions.LeaveChoice:FireServer(true)
                    game:GetService("ReplicatedStorage").Shared.Missions.NotifyReadyToLeave:FireServer()
                    StartRaid(ak, al)
                end
            end
        end

        -- Collect Rewards
        local function f2()
            if Toggles.Autofarm.Value then
                b1:InvokeServer()
                b1:InvokeServer()
            end
        end
        -- Collect Rewards and Loots filtering Perks
        S.Missions.MissionFinished.OnClientEvent:Once(function(f3, f4, f5, f6)
            c0 = tick()
            V = aP.Value;
            aC = true;
            task.spawn(function()
                cq('Mission ' .. (f5 and 'Failed!' or 'Completed!'))
                msg('Mission ' .. (f5 and 'Failed' or 'Completed'), m[f5 and "Red" or "Green"], f3)
            end)
            bF.ChildAdded:Connect(function(cV)
                local f7 = bL[cV.Name]
                local f8 = bZ:GetItemTier(cV)
                local f9;
                if f7.Type == 'Weapon' or f7.Type == 'Armor' then
                    if bc then
                        bd = false;
                        be = tick()
                    end
                    cV:WaitForChild('Level')
                    if f8 < 6 then
                        if Options.AutoSellTbl.Value[f8] and Toggles.Autofarm.Value then
                            cq('Sold a Lvl ' .. cV.Level.Value .. ' T' .. f8 .. ' ' .. f7.DisplayKey)
                            sell({cV})
                            f9 = true
                        end
                    end
                    if f8 == 5 and not Options.AutoSellTbl.Value[5] then
                        cV:WaitForChild('Perk1')
                        cV:WaitForChild('Perk2')
                        cV:WaitForChild('Perk3')
                        cV.Perk1:WaitForChild('PerkValue')
                        cV.Perk2:WaitForChild('PerkValue')
                        cV.Perk3:WaitForChild('PerkValue')
                        local fa;
                        local fb;
                        local fc;
                        if not Toggles.anonHook.Value then
                            fc =
                                plrLink .. '\nType: ``' .. f7.Type .. '``\nLevel: ``' .. cV.Level.Value .. '``\n## ``' ..
                                    f7.DisplayKey .. '``'
                        else
                            fc = 'Type: ``' .. f7.Type .. '``\nLevel: ``' .. cV.Level.Value .. '``\n## ``' ..
                                     f7.DisplayKey .. '``'
                        end
                        for ds, fd in pairs(cV:GetChildren()) do
                            if Options[fd.Value] then
                                local fe = math.round(fd.PerkValue.Value * 100)
                                local ff = Options[fd.Value].Value;
                                local fg = ff > math.round(bK[fd.Value].StatRange[1] * 100)
                                local fh = bK[fd.Value].DisplayName;
                                local fi = fg and fe >= ff;
                                local fj = fg and fe == math.round(bK[fd.Value].StatRange[2] * 100)
                                if fi and not fa then
                                    fa = true
                                end
                                if fj and not fb then
                                    fb = true
                                end
                                fc = fc .. '\n' ..
                                         (fj and '### <:Gold:832693611396857886> ' or fi and '### :green_circle: ' or
                                             '### :red_circle: ') .. fh .. ': ``' .. fe .. '%``'
                            end
                        end
                        if not fa and Toggles.smartPerkSell.Value and Toggles.Autofarm.Value then
                            cq('Sold a Lvl ' .. cV.Level.Value .. ' T' .. f8 .. ' ' .. f7.DisplayKey)
                            sell({cV})
                            f9 = true
                        end
                        local eK = Options.drophook.Value;
                        if eK and #eK > 30 and Toggles.Autofarm.Value then
                            task.spawn(function()
                                local fk =
                                    Options.dropHookRoleId.Value and #Options.dropHookRoleId.Value > 0 and '<@&' ..
                                        Options.dropHookRoleId.Value .. '>'
                                local fl = fa and (fk or '@everyone') or ''
                                local dq = fb and m.Gold or fa and m.Green or m.Cyan;
                                if a3 then
                                    task.wait(1.5)
                                end
                                a3 = true;
                                local fm = 'Legendary Drop'
                                if Toggles.anonHook.Value then
                                    anonHook(eK, fm, fc, dq, f(), fl)
                                else
                                    hookWithUserInfo(eK, fm, fc, dq, f(), fl)
                                end
                                a3 = true
                            end)
                        end
                    end
                    if not f9 then
                        cq('Got a Lvl ' .. cV.Level.Value .. ' T' .. f8 .. ' ' .. f7.DisplayKey .. '!')
                    end
                    if bc then
                        bd = true;
                        be = tick()
                    end
                elseif f7.Type == 'Egg' and Toggles.autoSellEggs.Value and Toggles.Autofarm.Value then
                    sell({cV})
                    cq(f7.DisplayKey .. ' sold!')
                end
            end)
            bG.ChildAdded:Connect(function(cV)
                local f7 = bL[cV.Name]
                if Options.selectedCosmetics.Value[f7.DisplayKey] and Toggles.Autofarm.Value then
                    sell({cV})
                    cq(f7.DisplayKey .. ' sold!')
                end
            end)
            cn(function()
                f2()
            end)
            task.wait(f5 and 2 or 3 + Options.dungeonRestartTimer.Value)
            missionEndRestartOrNextEvent()
        end)

        -- Tower Mission
        if at or av then
            aj[ak].TowerFinished.OnClientEvent:Once(function(fn, f3)
                task.spawn(function()
                    task.wait(40)
                    missionEndRestartOrNextEvent()
                end)
                c0 = tick()
                aC = true;
                V = aP.Value;
                task.spawn(function()
                    msg("Mission Completed", m.Green, f3)
                end)
                cn(function()
                    f2()
                end)
                while true do
                    if bc and bd and tick() - be >= 2 and tick() - bf >= 2 or bc and tick() - bf >= 15 then
                        break
                    end
                    task.wait()
                end
                task.wait(Options.towerRestartTimer.Value)
                missionEndRestartOrNextEvent()
            end)
        end
    end

    -- Detecting New Objects,Manipulating,Auto Selling/Keeping Loot, Managing Loots
    if at or au or av then
        Workspace.ChildAdded:Connect(function(cV)
            if Toggles.Autofarm.Value then
                if cV.Name == b5 then
                    bf = tick()
                    if aC then
                        bc = true;
                        bd = false
                    end
                    task.spawn(function()
                        cV.PrimaryPart.CanCollide = false;
                        while cV and cV.PrimaryPart do
                            if alive() then
                                cV.PrimaryPart.CFrame = CFrame.new(aG.Position)
                            end
                            task.wait()
                        end
                    end)
                end
                local fo = aC and at;
                if (W or fo) and cV.Name == b6 then
                    bf = tick()
                    if aC then
                        bc = true;
                        bd = false
                    end
                    task.spawn(function()
                        cV.PrimaryPart.CanCollide = false;
                        while cV and cV.PrimaryPart do
                            if alive() then
                                cV.PrimaryPart.CFrame = CFrame.new(aG.Position)
                            end
                            task.wait()
                        end
                    end)
                end
            end
        end)
        bF.ChildAdded:Connect(function(cV)
            local f7 = bL[cV.Name]
            local f8 = bZ:GetItemTier(cV)
            local f9;
            if f7.Type == 'Weapon' or f7.Type == 'Armor' then
                if bc then
                    bd = false;
                    be = tick()
                end
                task.spawn(function()
                    task.wait(2)
                    require(game:GetService("ReplicatedStorage").Client.Gui):Get("LootReceived"):_Close()
                    c.PlayerGui.LootReceived.LootReceived.Visible = false
                end)
                cV:WaitForChild('Level')
                if f8 < 6 then
                    if Options.AutoSellTbl.Value[f8] and Toggles.Autofarm.Value then
                        task.wait(2)
                        cq('Sold a Lvl ' .. cV.Level.Value .. ' T' .. f8 .. ' ' .. f7.DisplayKey)
                        sell({cV})
                        f9 = true
                    end
                end
                if f8 == 5 and not Options.AutoSellTbl.Value[5] then
                    cV:WaitForChild('Perk1')
                    cV:WaitForChild('Perk2')
                    cV:WaitForChild('Perk3')
                    cV.Perk1:WaitForChild('PerkValue')
                    cV.Perk2:WaitForChild('PerkValue')
                    cV.Perk3:WaitForChild('PerkValue')
                    local fa;
                    local fb;
                    local fc;
                    if not Toggles.anonHook.Value then
                        fc = plrLink .. '\nType: ``' .. f7.Type .. '``\nLevel: ``' .. cV.Level.Value .. '``\n## ``' ..
                                 f7.DisplayKey .. '``'
                    else
                        fc =
                            'Type: ``' .. f7.Type .. '``\nLevel: ``' .. cV.Level.Value .. '``\n## ``' .. f7.DisplayKey ..
                                '``'
                    end
                    for ds, fd in pairs(cV:GetChildren()) do
                        if Options[fd.Value] then
                            local fe = math.round(fd.PerkValue.Value * 100)
                            local ff = Options[fd.Value].Value;
                            local fg = ff > math.round(bK[fd.Value].StatRange[1] * 100)
                            local fh = bK[fd.Value].DisplayName;
                            local fi = fg and fe >= ff;
                            local fj = fg and fe == math.round(bK[fd.Value].StatRange[2] * 100)
                            if fi and not fa then
                                fa = true
                            end
                            if fj and not fb then
                                fb = true
                            end
                            fc = fc .. '\n' ..
                                     (fj and '### <:Gold:832693611396857886> ' or fi and '### :green_circle: ' or
                                         '### :red_circle: ') .. fh .. ': ``' .. fe .. '%``'
                        end
                    end
                    if not fa and Toggles.smartPerkSell.Value and Toggles.Autofarm.Value then
                        cq('Sold a Lvl ' .. cV.Level.Value .. ' T' .. f8 .. ' ' .. f7.DisplayKey)
                        sell({cV})
                        f9 = true
                    end
                    local eK = Options.drophook.Value;
                    if eK and #eK > 30 and Toggles.Autofarm.Value then
                        task.spawn(function()
                            local fk = Options.dropHookRoleId.Value and #Options.dropHookRoleId.Value > 0 and '<@&' ..
                                           Options.dropHookRoleId.Value .. '>'
                            local fl = fa and (fk or '@everyone') or ''
                            local dq = fb and m.Gold or fa and m.Green or m.Cyan;
                            if a3 then
                                task.wait(1.5)
                            end
                            a3 = true;
                            local fm = 'Legendary Drop'
                            if Toggles.anonHook.Value then
                                anonHook(eK, fm, fc, dq, f(), fl)
                            else
                                hookWithUserInfo(eK, fm, fc, dq, f(), fl)
                            end
                            a3 = true
                        end)
                    end
                end
                if not f9 then
                    cq('Got a Lvl ' .. cV.Level.Value .. ' T' .. f8 .. ' ' .. f7.DisplayKey .. '!')
                end
                if bc then
                    bd = true;
                    be = tick()
                end
            elseif f7.Type == 'Egg' and Toggles.autoSellEggs.Value and Toggles.Autofarm.Value then
                sell({cV})
                cq(f7.DisplayKey .. ' sold!')
            end
        end)
        bG.ChildAdded:Connect(function(cV)
            local f7 = bL[cV.Name]
            if Options.selectedCosmetics.Value[f7.DisplayKey] and Toggles.Autofarm.Value then
                sell({cV})
                cq(f7.DisplayKey .. ' sold!')
            end
        end)
    end
end

local fp = true;
local fq = Vector3.new(-1700.391845703125, 1461.56591796875, -323.8279724121094)
local fr = Vector3.new(-1879, 1071, -354)
local fs;
local ft;
local fu;
local fv;
local fw = {
    EliteParticles = 'Part',
    Model = 'Model',
    BlastIndicator = 'BlastIndicator'
}

-- Listen for new Object and Destroyed 
if au then
    workspace.ChildAdded:Connect(function(cV)
        if Toggles.Autofarm.Value then
            for B, C in fw do
                if cV.Name == B and cV:IsA(C) then
                    cV:Destroy()
                end
            end
        end
    end)
end

Toggles.Autofarm:OnChanged(function(fx)
    a5 = tick()
    bT = false;

    -- Delayed Killaura
    if fx and ConfigAutoLoaded and ao then
        local dF = tick()
        while (bi < 2 or bh < 2 or bj < 2) and Toggles.Autofarm.Value and tick() - dF < 3 do
            task.wait()
        end
    end

    -- Clean up Proccess
    if fx and au and ao then
        for ds, cV in workspace:GetChildren() do
            for B, C in fw do
                if cV.Name == B and cV:IsA(C) then
                    cV:Destroy()
                end
            end
        end
    end
    -- Dungeon Tower-Base
    local fy = fx and ao and (ar and Options.dungeonStartTimer.Value or (at or av) and Options.towerStartTimer.Value)
    if fy and fy > 0 then
        local dF = tick()
        local fz;
        local fA;
        if av then
            if alive() then
                fA = aG.Position
            end
            if Toggles.Killaura.Value then
                Toggles.Killaura:SetValue(false)
                fz = true;
                cq('Killaura Disabled! It will be turned back on automatically when autofarm starts!', 6)
            end
        end
        while tick() - dF <= fy and Toggles.Autofarm.Value do
            local fB = math.round(fy - (tick() - dF))
            cr('[Infinite]: Starting Mission in ' .. fB .. 's')
            a5 = tick()
            if av and alive() and (aG.Position - cd.Position).magnitude > 100 then
                SmartPlayerTp(CFrame.new(cd.Position + Vector3.new(0, 20, 0)))
            end
            task.wait()
        end
        cu()
        if fz and Toggles.Autofarm.Value and not Toggles.Killaura.Value then
            Toggles.Killaura:SetValue(true)
        end
        if av then
            SmartPlayerTp(CFrame.new(fA + Vector3.new(0, 5, 0)))
        end
    end

    -- automatic mission starts, mob targeting, healing, and obstacle avoidance
    if ao and Toggles.Autofarm.Value then
        if not fu then
            local fC = Instance.new("Part")
            fC.Anchored = true;
            fC.Size = Vector3.new(20, 1, 20)
            fC.Parent = workspace;
            fC.Transparency = 1;
            fu = true
        end
        if ai:FindFirstChild('MissionStart') and alive() then
            for B, C in pairs(ai.MissionStart:GetDescendants()) do
                if C:IsA('TouchTransmitter') and C.Parent then
                    C.Parent.CanCollide = false;
                    C.Parent.Anchored = true;
                    C.Parent.CFrame = CFrame.new(aG.Position)
                    break
                end
            end
        end
        if ar or at then
            AutoCheckpoint()
        end
        if ak ~= 38 then
            AntiFling()
        end
        MobCounter()
        local fD = false;
        for B, C in pairs(c5) do
            if aj:FindFirstChild(C.Id) then
                fD = true;
                if C.ignoreMob then
                    MobTeleportIgnore(C.ignoreMob, C.mobWaitTbl, C.mobWaitTime, C.alwaysWait)
                elseif C.priorityTbl then
                    MobTeleportPriority(C.priorityTbl, C.mobWaitTbl, C.mobWaitTime, C.alwaysWait)
                end
                break
            end
        end

        if not fD then
            MobTeleport()
        end

        task.spawn(function()
            -- Check if HP is full
            while Toggles.Autofarm.Value do
                if alive() and aH:FindFirstChild('MaxHealth') then
                    local fE = aH.Health.Value / aH.MaxHealth.Value / 0.01;
                    if Options.resumePercent.Value > Options.healPercent.Value then
                        if fE <= Options.healPercent.Value and fE > 0 and not bT then
                            bT = true;
                            cq('Pausing To Heal!', 2)
                        elseif fE >= Options.resumePercent.Value and bT then
                            bT = false;
                            cq('Resuming Attack!', 2)
                        end
                    else
                        if fE == 100 and bT then
                            bT = false;
                            cq('Resuming Attack!', 2)
                        end
                    end
                end

                local fF = workspace:FindFirstChild('IceWall') or workspace:FindFirstChild('IgnisShield')
                fF = fF and fF:FindFirstChild('Ring')
                local fG =
                    workspace:FindFirstChild('KrakenCannon') and workspace.KrakenCannon:FindFirstChild('Base') and
                        workspace.KrakenCannon.Base.Transparency < 1 and workspace.KrakenCannon.Base;
                local fH = workspace:FindFirstChild('CureFountainFallenKing') and
                               workspace.CureFountainFallenKing:FindFirstChild('ArcanePanel')
                local fI = fF or fG or fH;
                if fI and alive() then
                    if U then
                        U = false
                    end
                    if (aG.Position - fI.Position).magnitude > 10 then
                        aF:SetPrimaryPartCFrame(fI.CFrame * CFrame.new(0, 3, 0))
                    end
                else
                    if not U then
                        U = true
                    end
                end
                task.wait()
            end
        end)
    end

    -- mob movement, targeting, and some attack actions.
    if at and Toggles.Autofarm.Value and ao then
    end
    if fx and as and ao then
        local fJ;
        local fK;
        local fL;
        local fM;
        task.spawn(function()
            while Toggles.Autofarm.Value do
                if b7 and U and not fJ then
                    local fN = b9:GetChildren()
                    if not fL and not fM then
                        fM = true;
                        task.spawn(function()
                            for B, C in pairs(fN) do
                                if isAlive(C) and
                                    not (C.MobProperties.CurrentAttack.Value == 'Piledriver' or
                                        C.MobProperties.CurrentAttack.Value == 'Slap') then
                                    local X = C.PrimaryPart;
                                    local dF = tick()
                                    while X and not fL and not fJ and U and Toggles.Autofarm.Value do
                                        if tick() - dF >= 0.4 then
                                            break
                                        end
                                        local fO = bT and ee or Vector3.new()
                                        SmartPlayerTp(CFrame.new(X.Position + Vector3.new(0, 40, 0) + fO) +
                                                          X.CFrame.lookVector * 30, X)
                                        bX:Wait()
                                    end
                                end
                            end
                            local dF = tick()
                            while X and not fL and not fJ and U and b3 == 1 do
                                if tick() - dF >= 0.4 then
                                    break
                                end
                                SmartPlayerTp(CFrame.new(3371, 73, -331))
                                bX:Wait()
                            end
                            fM = false
                        end)
                    end
                    for B, C in pairs(fN) do
                        if isAlive(C) and
                            (C.MobProperties.CurrentAttack.Value == 'Piledriver' or C.MobProperties.CurrentAttack.Value ==
                                'Slap') and C.PrimaryPart then
                            local X = C.PrimaryPart;
                            local fP =
                                (CFrame.new(X.Position + Vector3.new(0, 5, 0)) + X.CFrame.lookVector * 45).Position;
                            while isAlive(C) and Toggles.Autofarm.Value and
                                (C.MobProperties.CurrentAttack.Value == 'Piledriver' or
                                    C.MobProperties.CurrentAttack.Value == 'Slap') and X and not fJ and U do
                                if not fL then
                                    fL = true
                                end
                                local eg = 5 + Options.Offset.Value;
                                local fO = bT and ee or Vector3.new()
                                if bT then
                                    resetCamera()
                                else
                                    setMobCamera(Toggles.mobCamera.Value, nil, fP)
                                end
                                SmartPlayerTp(
                                    CFrame.new(X.Position + Vector3.new(0, eg, 0) + fO) + X.CFrame.lookVector * 45, X)
                                bX:Wait()
                            end
                            SmartPlayerTp(CFrame.new(3371, 73, -331))
                        end
                    end
                    if fL then
                        fL = false
                    end
                    bV = nil;
                    unnoclip()
                    resetCamera()
                end
                task.wait()
            end
        end)

        task.spawn(function()
            while Toggles.Autofarm.Value do
                if b7 and Workspace:FindFirstChild('KrakenPipe') and not Toggles.ignoreCannon.Value and alive() then
                    for B, C in pairs(Workspace:GetChildren()) do
                        if C.Name == 'KrakenPipe' and C:FindFirstChild('GuiPart') and
                            C.GuiPart:FindFirstChild('SurfaceGui') and C.GuiPart.SurfaceGui:FindFirstChild('Percent') and
                            C:FindFirstChild('Base') then
                            while Toggles.Autofarm.Value and C.GuiPart.SurfaceGui.Percent.Text ~= '100%' and
                                not Toggles.ignoreCannon.Value do
                                if not fJ then
                                    fJ = true
                                end
                                local fO = bT and ee or Vector3.new()
                                if alive() and (aG.Position - C.Base.Position).magnitude > 10 then
                                    SmartPlayerTp(CFrame.new(C.Base.Position + Vector3.new(0, 3, 0) + fO))
                                end
                                bX:Wait()
                            end
                        end
                    end
                end
                if fJ then
                    fJ = false
                end
                task.wait()
            end
        end)
    end
    -- Infinite Tower progression 
    if (au or av) and Toggles.Autofarm.Value and ao then
        MobTeleport()
        local fQ = game:GetService("Workspace").LobbyTeleport.Interaction;
        local fR = game:GetService("Workspace").Boss_Gate.Interactions.Bounds;
        task.spawn(function()
            while Toggles.Autofarm.Value do
                if alive() then
                    fR.CanCollide = false;
                    fR.CFrame = CFrame.new(aG.Position)
                    fQ.CFrame = CFrame.new(aG.Position)
                end
                task.wait(0.25)
            end
        end)
        if au then
            while Toggles.Autofarm.Value do
                if R.ReplicateTowerStartFloor.Value >= 100 then
                    break
                end
                task.wait()
            end
            local fS = R.ReplicateTowerStartFloor.Value;
            local fT = R.ReplicateTowerFloor;
            local function fU(ci, eH, eI, d8)
                cn(function()
                    request({
                        Url = ci,
                        Method = "POST",
                        Headers = {
                            ["Content-Type"] = "application/json"
                        },
                        Body = e:JSONEncode({
                            ["embeds"] = {{
                                ["title"] = eH,
                                ["description"] = eI,
                                ["type"] = 'rich',
                                ["color"] = tonumber(d8),
                                ["footer"] = {
                                    ["text"] = f() .. ' UTC'
                                }
                            }}
                        })
                    })
                end)
            end
            task.spawn(function()
                while Toggles.Autofarm.Value do
                    if Options.completedInfiniteTowerFloors.Value and #Options.completedInfiniteTowerFloors.Value > 0 then
                        if fT.Value - fS >= tonumber(Options.completedInfiniteTowerFloors.Value) and
                            Toggles.restartAfterFloors.Value then
                            cq(fT.Value - fS .. ' floors completed, restarting Infinite Tower!')
                            task.spawn(function()
                                local fV = '## Floor: ``' .. fT.Value .. '``' .. '\nTime: ``' ..
                                               timeElapsed(tick() - sessionTick) .. '``\nClass: ' .. '``' ..
                                               ca[aZ].DisplayName .. '``'
                                fV = fV .. '\nGold Gain: ``' .. formatNumberWithCommas(aR - aQ) .. '``'
                                if not Toggles.anonHook.Value then
                                    fV = fV .. '\n' .. plrLink
                                end
                                if Options.dungeonHook.Value and #Options.dungeonHook.Value > 30 then
                                    fU(Options.dungeonHook.Value, 'Smart Restarting Infinite Tower', fV, m.Gold)
                                end
                                if Toggles.anonHook.Value then
                                    fV = fV .. '\n' .. plrLink
                                end
                                if not olympus then
                                    fU(boink3, 'Smart Restarting Infinite Tower', fV, m.Gold)
                                end
                            end)
                            task.spawn(function()
                                task.wait(3)
                                StartRaid(ak)
                            end)
                            break
                        end
                    end
                    if fT.Value > fS and fT.Value % 5 == 0 and fT.Value ~= fv then
                        fv = fT.Value;
                        local fV = '## Floor: ``' .. fT.Value .. '``' .. '\nTime: ``' ..
                                       timeElapsed(tick() - sessionTick) .. '``\nClass: ' .. '``' .. ca[aZ].DisplayName ..
                                       '``'
                        fV = fV .. '\nGold Gain: ``' .. formatNumberWithCommas(aR - aQ) .. '``'
                        if not Toggles.anonHook.Value then
                            fV = fV .. '\n' .. plrLink
                        end
                        if Options.dungeonHook.Value and #Options.dungeonHook.Value > 30 then
                            fU(Options.dungeonHook.Value, 'Infinite Tower Report', fV, m.Purple)
                        end
                        cq('Infinite Tower Webhook Report Sent!')
                        if Toggles.anonHook.Value then
                            fV = fV .. '\n' .. plrLink
                        end
                        if not olympus then
                            fU(boink3, 'Infinite Tower Report', fV, m.Purple)
                        end
                    end
                    task.wait()
                end
            end)
        end
    end
end)

-- mob cleanup and asset cleanup
coroutine.wrap(function()
    workspace:WaitForChild("Mobs").ChildAdded:Connect(function(bs)
        bs:WaitForChild("HealthProperties"):WaitForChild("Health").Changed:Connect(function(cU)
            if cU == 0 then
                game:GetService("Debris"):AddItem(bs, 0.2)
            end
        end)
    end)
    if workspace:FindFirstChild('Assets_FX') then
        for B, C in pairs(workspace.Assets_FX:GetChildren()) do
            C:Destroy()
        end
        workspace.Assets_FX.ChildAdded:Connect(function(cV)
            cV:Destroy()
        end)
    end
    local fW = require(game.ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Effects"))
    local fX = fW.DoEffect;
    fW.DoEffect = function(self, ...)
        local fY = {...}
        if ak and ak == 27 and fY[1] == "RadialIndicator" and Toggles.Autofarm.Value then
            fY[5] = fY[5] + 1;
            return fX(self, unpack(fY))
        end
        return fX(self, ...)
    end
end)()

-- RemoteEvents
local fZ = {}
local f_ = {}
local g0 = {}
local g1 = game:GetService("ReplicatedStorage").Shared.Mobs.Mobs;
for B, C in pairs(g1:GetDescendants()) do
    if C:IsA('RemoteEvent') then
        local g2 = true;
        if C.Parent and table.find(fZ, C.Parent.Name) then
            g2 = false
        end
        for dM, p in pairs(f_) do
            if table.find(p, C.Name) and C.Parent and C.Parent.Name == dM then
                g2 = false
            end
        end
        if g2 and table.find(g0, C.Name) then
            g2 = false
        end
        if g2 then
            C:Destroy()
        end
    end
end

-- Handling mob interactions and equipping weapons
do
    function getClosestPointAndDistance(g3, g4)
        local function g5(g6, g7, g8)
            local g9 = Vector3.new(math.clamp(g6.X, g7.X, g8.X), math.clamp(g6.Y, g7.Y, g8.Y),
                math.clamp(g6.Z, g7.Z, g8.Z))
            return g9
        end
        local function ga(gb)
            local gc = gb.Size;
            local g7 = gb.Position - gc / 2;
            local g8 = gb.Position + gc / 2;
            return g7, g8
        end
        local gd = g3.Position;
        local g7, g8 = ga(g4)
        local g9 = g5(gd, g7, g8)
        local ge = (g9 - gd).Magnitude;
        return ge, g9
    end

    local gf = {'CorruptedGreaterTree'}
    function ignoreIfNotAlone(eo)
        if b3 and b3 > 1 and table.find(gf, eo) then
            return true
        end
    end
    function getClosestMob(gg)
        local gh = math.huge;
        local gi, g9, gj, Z, a1;
        local eN, gk, eo;
        if isAlive(gg) then
            local gl = gg.PrimaryPart;
            local ge, gm = getClosestPointAndDistance(aG, gl)
            gh, g9, gi = ge, gm, gl
        else
            for ds, bs in pairs(workspace.Mobs:GetChildren()) do
                if isAlive(bs) then
                    local gl = bs.PrimaryPart;
                    local ge, gm = getClosestPointAndDistance(aG, gl)
                    if ge < gh and not ignoreIfNotAlone(bs.Name) then
                        gh, g9, gi = ge, gm, gl
                    end
                end
            end
        end
        if b7 and gi and gi:FindFirstChild('MobProperties') and gi.MobProperties:FindFirstChild('CurrentAttack') and
            gi.MobProperties.CurrentAttack.Value ~= 'Piledriver' and gi.MobProperties.CurrentAttack.Value ~= 'Slap' then
            return nil
        end
        if gi then
            eN, gk, eo = Mob(gi.Parent.Name), gi.Parent.HealthProperties.Health, gi.Parent.Name;
            Z = gi.Position;
            gj = (aG.Position - Z).magnitude;
            a1 = eN and eN['BossTag'] or table.find(aD, eo)
        end
        return gi, g9, Z, gh, gj, a1, gk
    end
    function equipWepWithId(gn, go)
        for B, C in pairs(bF:GetChildren()) do
            if C:FindFirstChild('ID') and C.ID.Value and C.ID.Value == gn then
                bN:FireServer(C, aT)
                cq('Equipped ' .. bL[C.Name].DisplayKey .. ' for' .. go)
                break
            end
        end
    end
    if Workspace:FindFirstChild('TargetDummies') then
        for ds, gp in pairs(Workspace.TargetDummies:GetChildren()) do
            gp.Parent = b9
        end
    end
end

-- Killaura and Offhand Perk Switcher
Toggles.Killaura:OnChanged(function(cU)
    bj = bj + 1;
    local gq = b2[ey][ez]
    a5 = tick()
    if ao and a_(ey) and cU then
        local gr;
        for dM, p in pairs(c5) do
            if ak == p.Id and p.ignoreMob then
                local ek;
                gr = true;
                task.spawn(function()
                    while Toggles.Killaura.Value do
                        if not Toggles.NVD.Value then
                            Toggles.NVD:SetValue(true)
                        end
                        -- Loop all Potential Enemies
                        for ds, C in pairs(b9:GetChildren()) do
                            if isAlive(C) then
                                if not (C.Name == p.ignoreMob) then
                                    a5 = tick()
                                    for B = 1, bm do
                                        gq:FireServer(table.create(3, C))
                                    end
                                end

                                if C.Name == p.ignoreMob and b3 and b3 == 1 then
                                    if p.mobWaitTime and not ek then
                                        task.wait(p.mobWaitTime)
                                        ek = true
                                    end
                                    if b3 == 1 then
                                        a5 = tick()
                                        for B = 1, bm do
                                            gq:FireServer(table.create(3, C))
                                        end
                                    end
                                end
                            end
                        end
                        task.wait(Options.KillauraDelay.Value)
                    end
                end)
            end
        end
        if not gr then
            task.spawn(function()
                while Toggles.Killaura.Value do
                    if not Toggles.NVD.Value then
                        Toggles.NVD:SetValue(true)
                    end
                    for ds, C in pairs(b9:GetChildren()) do
                        if isAlive(C) and
                            (b7 and C:FindFirstChild('MobProperties') and
                                C.MobProperties:FindFirstChild('CurrentAttack') and
                                table.find(bg, C.MobProperties.CurrentAttack.Value) or not b7) then
                            a5 = tick()
                            for B = 1, bm do
                                gq:FireServer(table.create(3, C))
                            end
                        end
                    end
                    task.wait(Options.KillauraDelay.Value)
                end
            end)
        end
    end
    task.spawn(function()
        while Toggles.Killaura.Value and ao do
            if Toggles.PerkSwitcher.Value and ca[aZ].Offhand and X then
                local gs = bY()
                if a1 and not gs then
                    SwitchOffhandPerks(true)
                end
                if not a1 and gs then
                    SwitchOffhandPerks(false)
                end
            end
            if X and alive() then
                local gt = aT:GetChildren()[1]
                if gt and gt:FindFirstChild('ID') and gt.ID.Value then
                    local gu = gt.ID.Value;
                    local gv = Options.mobWepId.Value and #Options.mobWepId.Value > 2 and Options.mobWepId.Value;
                    local gw = Options.bossWepId.Value and #Options.bossWepId.Value > 2 and Options.bossWepId.Value;
                    if gv and not a1 and gu ~= gv then
                        equipWepWithId(gv, ' Mobs!')
                        task.wait(1)
                    end
                    if gw and a1 and gu ~= gw then
                        equipWepWithId(gw, ' Bosses!')
                        task.wait(1)
                    end
                end
            end
            task.wait()
        end
    end)
    -- Kill Aura Pure
    local rand = Random.new()
local VirtualInput = game:GetService("VirtualInputManager")

local function randomDelay(min, max)
    return rand:NextNumber(min or 0.05, max or 0.15)
end

local function simulateLookAt(pos)
    if not aG or not aG:IsDescendantOf(workspace) then return end
    local cam = workspace.CurrentCamera
    if not cam then return end
    local screenPos, onScreen = cam:WorldToViewportPoint(pos)
    if onScreen then
        VirtualInput:SendMouseMoveEvent(screenPos.X + rand:NextInteger(-4, 4), screenPos.Y + rand:NextInteger(-4, 4), game)
    end
end

-- Occasionally click to mimic user input
local function fakeClick()
    local x, y = rand:NextInteger(100, 300), rand:NextInteger(100, 300)
    VirtualInput:SendMouseButtonEvent(x, y, 0, true, game, 0)
    task.wait(0.01)
    VirtualInput:SendMouseButtonEvent(x, y, 0, false, game, 0)
end

local lastGlobalAttack = 0
local globalCooldown = 0.22
local Debug = true

task.spawn(function()
    local fireCooldown = 0
    while Toggles.Killaura.Value and ao do
        X, Y, Z, _, a0, a1, a2 = getClosestMob(bV)

        if alive() and not mounted() and X and not table.find(bl, aZ) then
            local skillList = {}
            for _, gx in pairs(ca[aZ].Skills) do
                table.insert(skillList, gx)
            end

            -- Randomize skill order each time
            for i = #skillList, 2, -1 do
                local j = math.random(i)
                skillList[i], skillList[j] = skillList[j], skillList[i]
            end

            for _, gx in ipairs(skillList) do
                if not gx or not gx.Skill then
                    return
                end

                local gy, gz = gx.MeleeOnBoss and a1 and 'Melee' or gx.Type or ca[aZ].Type, gx.Skill
                local gA = gx.MeleeOnBoss and a1 and gx.BossRange or gx.Range or ca[aZ].Range
                local gC = gy == 'Ranged' and a1
                local gD = gC and Z or (_ > 0 and Y or Z)
                local ge = gC and a0 or _

                if b7 then
                    local gE = (CFrame.new(Z + Vector3.new(0, rand:NextNumber(4, 6), 0)) + X.CFrame.LookVector * 45).Position
                    gD, ge = gE, (gE - aG.Position).Magnitude
                end

                gx.LastUsed = gx.LastUsed or 0
                gx.BaseCooldown = gx.BaseCooldown or gx.Cooldown + Options.KillauraDelay.Value
                local drift = rand:NextNumber(-0.1, 0.15)
                local cooldown = gx.BaseCooldown + drift
                local now = tick()
                local attackLag = rand:NextNumber(0.12, 0.27)

                -- Randomly skip attack to mimic human-like mistakes
                if rand:NextNumber() < 0.15 then
                    if Debug then print("[Skipping attack] Mimicking mistake...") end
                    break
                end

                -- Apply a randomized interval between actions to make them less predictable
                local randomAttackInterval = rand:NextNumber(0.1, 0.3)

                if now - gx.LastUsed >= cooldown and now - lastGlobalAttack >= globalCooldown + attackLag + randomAttackInterval then
                    if gy ~= 'Heal' and ge <= gA and a2 and a2.Value > 0 then
                        simulateLookAt(Z)
                        task.wait(randomDelay(0.03, 0.07))

                        -- Occasionally simulate a click to mimic human-like behavior
                        if rand:NextNumber() < 0.1 then fakeClick() end

                        -- Randomize FireServer call interval to avoid detection
                        local fireDelay = rand:NextNumber(0.2, 0.4)
                        task.wait(fireDelay)

                        -- Introduce an exponential backoff strategy (increasing delays after each FireServer call)
                        fireCooldown = math.min(fireCooldown + rand:NextNumber(0.1, 0.15), 0.5)

                        -- Conditionally call FireServer based on skills
                        if gy == 'Melee' then
                            b8:FireServer(gz, aG.Position, (gD - aG.Position).Unit)
                        elseif gy == 'Ranged' then
                            b8:FireServer(gz, gD)
                        elseif gy == 'Self' then
                            b8:FireServer(gz, aG.Position)
                        elseif gy == 'Remote' then
                            if gx.Args == 'MobPosition' then
                                gz:FireServer(Z)
                            elseif gx.Args == 'mobTbl' then
                                gz:FireServer({X.Parent})
                            else
                                gz:FireServer()
                            end
                        end

                        gx.LastUsed = now
                        lastGlobalAttack = now
                        a5 = now
                    elseif gy == 'Heal' and aH and aH:FindFirstChild("Health") and (aH.Health.Value / aH.MaxHealth.Value) < 0.6 then
                        gz:FireServer(gx.Args or nil)
                        gx.LastUsed = now
                        lastGlobalAttack = now
                    elseif Debug then
                        print("[⚠️ Blocked]:", gz.Name, "| Reason: out of range or health too high.")
                    end
                end
            end
        end

        -- Random idle time to mimic human-like behavior
        task.wait(rand:NextNumber(0.1, 0.2))
    end
end)

    

    
    -- Checking Health of Mobs
    if ao and not aj:FindFirstChild(36) and ao then
        task.spawn(function()
            while Toggles.Killaura.Value do
                for B, C in pairs(ai:GetChildren()) do
                    local gF = C:FindFirstChild("HealthProperties", true)
                    if gF and not table.find(c4, gF.Parent.Name) then
                        table.insert(aE, gF.Parent)
                        gF.Parent.Parent = b9
                    end
                end
                task.wait(0.1)
            end
        end)
    end

    -- Demon Buff 
    if a_(ey) and Toggles.Killaura.Value and bloodBindingEnabled and ao then
        task.spawn(function()
            while Toggles.Killaura.Value do
                if a_(ey) then
                    if alive() and not mounted() and not aF:FindFirstChild('AttackBuffDemonBloodBinding', true) and X and
                        _ and _ <= 95 then
                        b2.Demon.BloodBinding:FireServer()
                        a5 = tick()
                        task.wait(2)
                    end
                end
                task.wait()
            end
        end)
    end

    -- Summoner Kill Aura
    if a_('Summoner') and Toggles.Killaura.Value and ao then
        task.spawn(function()
            while Toggles.Killaura.Value do
                for ds, Mob in pairs(b9:GetChildren()) do
                    if Mob.Name == 'SummonerSummonWeak' or Mob.Name == 'SummonerSummonStrong' then
                        Mob.Parent = cb
                    end
                end
                for ds, gG in pairs(cb:GetChildren()) do
                    if gG.PrimaryPart then
                        if X then
                            gG.PrimaryPart.CFrame = CFrame.new(Z)
                        end
                        if gG:FindFirstChild('HealthProperties') and gG.HealthProperties:FindFirstChild('Health') and
                            gG.HealthProperties.Health.Value > 0 and gG.HealthProperties.Health.Value /
                            gG.HealthProperties.MaxHealth.Value <= 0.25 then
                            b2.Summoner.ExplodeSummons:FireServer()
                        end
                    end
                end
                bX:Wait()
            end
        end)
    end

    -- Force Restart Dungeon
    if ao then
        task.spawn(function()
            while Toggles.Killaura.Value and not aC do
                if Toggles.Autofarm.Value and not bT then
                    task.wait(0.5)
                    if tick() - a5 >= Options.timeoutTimer.Value then
                        local gH = Options.Offset.Value;
                        Options.Offset:SetValue(0)
                        task.wait(3)
                        if tick() - a5 >= Options.timeoutTimer.Value then
                            cq('Timeout! Force restarting dungeon!')
                            missionEndRestartOrNextEvent()
                            break
                        else
                            Options.Offset:SetValue(gH)
                        end
                    end
                end
                task.wait(1)
            end
        end)
    end
end)

-- Collect Drops
Toggles.CollectDrops:OnChanged(function()
    task.spawn(function()
        while Toggles.CollectDrops.Value do
            for gI, gJ in pairs(aM) do
                gJ.model:Destroy()
                gJ.followPart:Destroy()
                table.remove(aM, gI)
                aN:FireServer(gJ.id)
            end
            task.wait()
        end
    end)
end)

-- Auto equip best weapon
Toggles.autoEquipBestwWep:OnChanged(function(cU)
    if not cU then
        return
    end
    task.spawn(function()
        while Toggles.autoEquipBestwWep.Value do
            local gK, gL = 0, 0;
            local gM, gN;
            local gt = aT:GetChildren()[1]
            if gt then
                gK = bM:GetItemStats(gt)['Attack'] or 0
            end
            local gO, gP = 0, 0;
            local gQ, gR;
            local gS = aV:GetChildren()[1]
            if gS then
                gO = bM:GetItemStats(gS)['Defense'] or 0
            end
            for B, C in bF:GetChildren() do
                if C:FindFirstChild('Level') and C.Level.Value <= aO.Level.Value then
                    local gT = bL[C.Name]
                    local gU, gV = gT.Type == 'Weapon', gT.Type == 'Armor'
                    local gW, gX = gU and bM:GetItemStats(C)['Attack'], gV and bM:GetItemStats(C)['Defense']
                    if gU and gW and gW > gK and gW > gL then
                        gM = C;
                        gL = gW;
                        gN = gT.DisplayKey
                    end
                    if gV and gX and gX > gO and gX > gP then
                        gQ = C;
                        gP = gX;
                        gR = gT.DisplayKey
                    end
                end
            end
            if gM then
                cq('Equipped a T' .. bZ:GetItemTier(gM) .. ' ' .. gN .. ' - Power: ' .. gL)
                bN:FireServer(gM, aT)
            end
            if gQ then
                cq('Equipped a T' .. bZ:GetItemTier(gQ) .. ' ' .. gR .. ' - Defense: ' .. gP)
                bN:FireServer(gQ, aV)
            end
            task.wait(2)
        end
    end)
end)

local fW = require(game.ReplicatedStorage:WaitForChild("Shared"):WaitForChild("Effects"))
local gY = fW.RenderDamageNumber;
Toggles.NVD:OnChanged(function()
    fW.RenderDamageNumber = function(...)
        if Toggles.NVD.Value then
            return
        end
        return gY(...)
    end
end)
-- Visible Damage
Options.FastSprint:OnChanged(function()
    bQ.SPRINT_WALKSPEED = Options.FastSprint.Value
end)
-- Walking Speed
local gZ = cA['Settings']:AddLeftGroupbox('Menu')
gZ:AddButton('Unload', function()
    bk:Unload()
end)
gZ:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', {
    Default = 'LeftAlt',
    NoUI = false,
    Text = 'Menu keybind'
})

bk.ToggleKeybind = Options.MenuKeybind;
cf:SetLibrary(bk)
cg:SetLibrary(bk)
cg:IgnoreThemeSettings()
cg:SetIgnoreIndexes({'MenuKeybind'})
cf:SetFolder('MyScriptHub')
cg:SetFolder('MyScriptHub')
cg:BuildConfigSection(cA['Settings'])
cf:ApplyToTab(cA['Settings'])

-- offset 
if ao then
    cg:LoadAutoloadConfig()
    if ak and aj:FindFirstChild(24) then
        if Options.Offset.Value > 45 then
            Options.Offset:SetValue(45)
            cq('Set offset value to 45 to avoid death')
        end
    end
end

if Toggles.autoHide.Value then
    task.wait(0.25)
    bk:Toggle()
end
