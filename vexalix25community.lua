local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

shared.LoaderTitle = "WELCOME TO Vexalix";
shared.LoaderKeyFrames = {
    [1] = {
        1,
        10
    },
    [2] = {
        2,
        30
    },
    [3] = {
        3,
        60
    },
    [4] = {
        2,
        100
    }
};
local v2 = {
    LoaderData = {
        Name = shared.LoaderTitle or "A Loader",
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(0, 0, 0),
            Topic = Color3.fromRGB(200, 200, 200),
            Title = Color3.fromRGB(255, 255, 255),
            LoaderBackground = Color3.fromRGB(40, 40, 40),
            LoaderSplash = Color3.fromRGB(0, 191, 255)
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {
            1,
            10
        },
        [2] = {
            2,
            30
        },
        [3] = {
            3,
            60
        },
        [4] = {
            2,
            100
        }
    }
};
local v3 = {
    [1] = "",
    [2] = "",
    [3] = "",
    [4] = ""
};
function TweenObject(v178, v179, v180)
    game.TweenService:Create(v178, TweenInfo.new(v179, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), v180):Play();
end
function CreateObject(v181, v182)
    local v183 = Instance.new(v181);
    local v184;
    for v416, v417 in pairs(v182) do
        if (v416 ~= "Parent") then
            v183[v416] = v417;
        else
            v184 = v417;
        end
    end
    v183.Parent = v184;
    return v183;
end
local function v4(v186, v187)
    local v188 = Instance.new("UICorner");
    v188.CornerRadius = UDim.new(0, v186);
    v188.Parent = v187;
end
local v5 = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
});
local v6 = CreateObject("Frame", {
    Name = "Main",
    Parent = v5,
    BackgroundColor3 = v2.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0)
});
v4(12, v6);
local v7 = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = v6,
    BackgroundTransparency = 1,
    Image = "rbxassetid://120744310997899",
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 50, 0, 50)
});
v4(25, v7);
local v8 = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = v6,
    BackgroundTransparency = 1,
    Text = "Vexalix",
    Position = UDim2.new(0, 75, 0, 10),
    Size = UDim2.new(0, 200, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v9 = CreateObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = v6,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 70),
    Size = UDim2.new(0, 301, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "Loader",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v10 = CreateObject("TextLabel", {
    Name = "Title",
    Parent = v6,
    TextTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 90),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. v2.LoaderData.Name .. "</b>",
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local v11 = CreateObject("Frame", {
    Name = "BG",
    Parent = v6,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.8500000238418579, 0, 0, 24)
});
v4(8, v11);
local v12 = CreateObject("Frame", {
    Name = "Progress",
    Parent = v11,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderSplash,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24)
});
v4(8, v12);
local v13 = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = v6,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, - 25),
    Size = UDim2.new(1, - 20, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
});
function UpdateStepText(v191)
    v13.Text = v3[v191] or "" ;
end
function UpdatePercentage(v193, v194)
    TweenObject(v12, 0.5, {
        Size = UDim2.new(v193 / 100, 0, 0, 24)
    });
    UpdateStepText(v194);
end
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 346, 0, 121)
});
wait();
TweenObject(v9, 0.5, {
    TextTransparency = 0
});
TweenObject(v10, 0.5, {
    TextTransparency = 0
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 0
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 0
});
for v195, v196 in pairs(v2.Keyframes) do
    wait(v196[1]);
    UpdatePercentage(v196[2], v195);
end
UpdatePercentage(100, 4);
TweenObject(v9, 0.5, {
    TextTransparency = 1
});
TweenObject(v10, 0.5, {
    TextTransparency = 1
});
TweenObject(v11, 0.5, {
    BackgroundTransparency = 1
});
TweenObject(v12, 0.5, {
    BackgroundTransparency = 1
});
wait(0.5);
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 0, 0, 0)
});
wait(0.25);
v5:Destroy();


local Window = Rayfield:CreateWindow({
   Name = "Vexalix",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Chào mừng đến với Vexalix :)",
   LoadingSubtitle = "by vexalix25",
   Theme = "Ocean", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Vexalix25"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Vexalix",
      Subtitle = "Key System",
      Note = "Chúc Các bạn Một Ngày Vui Đừng ăn cắp của tôi nhé xin đấy. =) Key LĂ : fix", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"fix"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local function getLocalTime(offset)
    return os.date("!%Y-%m-%d %H:%M:%S", os.time() + offset * 3600)
end

local Toggle = Tab:CreateToggle({
   Name = "Screen UI",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Truongthanhden23023/android-/refs/heads/main/editcondimemay"))()
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

local label15 = Tab:CreateLabel("Vietnam Time: " .. getLocalTime(7))

local Button = Tab:CreateButton({
   Name = "Sound UI By: Vexalix25",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Truongthanhden23023/Sound/refs/heads/main/Sound))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Server list",
   Callback = function()
   loadstring(game:HttpGet("https://www.scriptblox.com/raw/Server-Browser_80", true))();
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Hitbox+esp",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Truongthanhden23023/Hitboxesp/refs/heads/main/.github/workflows/blank"))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Just A Script 🌜",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAScripts/UniversalScript/Ikura/StopExploting", true))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "IY",
   Callback = function()
   loadstring(game:HttpGet("https://rawscripts.net/raw/Infinite-Yield_500"))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Shader",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua'))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Giảm đồ họa",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Truongthanhden23023/fixlag/refs/heads/main/Fixlag"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Quay tay -(Hand Spinner)",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))("Spider Script")
   end,
})

local Button = Tab:CreateButton({
   Name = "Simple Spy",
   Callback = function()
   -- The function that takes place when the button is pressed
local RemoteSpy = loadstring(game:HttpGet("https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))()
RemoteSpy:Start()
   end,
})

local Button = Tab:CreateButton({
   Name = "Premium DEX",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/pawslurr/Premium-Dex-V1/refs/heads/main/Dex%20Premium"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Shit Lock",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Truongthanhden23023/Shitlock/refs/heads/main/Shit%20lock"))("Spider Script")
   end,
})

local Button = Tab:CreateButton({
   Name = "Delta Keyboard Crack",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xxtan31/Ata/main/deltakeyboardcrack.txt", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Invisible",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Invisible%20Gui'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Stream Sniper",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Guest3D/ZirconHub/refs/heads/main/StreamSniper.lua"))()
   end,
})

local Tab = Window:CreateTab("Blue Lock Rivals", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Nexus Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/CrazyHub123/NexusHubRevival/refs/heads/main/Main.lua"))()
   end,
})

local scriptText = [[
AZTREON-pwa38QZ-BoPMF5Vo
]]

local Button = Tab:CreateButton({
   Name = "Key Aztreon Hub",
   Callback = function()
      setclipboard(scriptText)
      print("Script Ä‘Ă£ Ä‘Æ°á»£c sao chĂ©p vĂ o bá»™ nhá»› táº¡m!")
   end,
})


local Button = Tab:CreateButton({
   Name = "Aztreon Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/aal3-33/Hub/refs/heads/main/Gitscripts/aztreonhub.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Sterling Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Zayn31214/name/refs/heads/main/SterlingNew"))()
   end,
})


local Tab = Window:CreateTab("Script UGC", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Collect For Ugc",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Haxxxxxxxxxxxx/AutoFarmFast/refs/heads/main/collectforugc.gay"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Collect Gems For Ugc",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/r4mpage4/UGCLIMITED/refs/heads/main/collectgems.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Click For Ugc 2",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/NooobieBlox/ClickForUGC2/main/LimitedUGC"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Sword Fighting Simulator X",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/r4mpage4/UGCLIMITED/refs/heads/main/swordfight.lua"))();
   end,
})

local Tab = Window:CreateTab("Find Fruit", 4483362458) -- Title, Image

local scriptText = [[
_G.Webhook = ""

_G.MetodeTeleport = "Instant" --"Tween" or "Instant"

loadstring(game:HttpGet(('https://raw.githubusercontent.com/ThundarZ/Welcome/refs/heads/main/Main/BloxFruit/FindFruit.lua')))()
]]

local Button = Tab:CreateButton({
   Name = "Thunder Z Hub| Finder Fruits",
   Callback = function()
      setclipboard(scriptText)
      print("Script Ä‘Ă£ Ä‘Æ°á»£c sao chĂ©p vĂ o bá»™ nhá»› táº¡m!")
   end,
})

local scriptText = [[
ServerHopTimer = 5
TeleportSafe = true
Webhook = "Your Webhook Here"
_G.Version="Fruit Farm"loadstring(game:HttpGet("https://raw.githubusercontent.com/Efe0626/RaitoHub/main/Script"))()
]]

local Button = Tab:CreateButton({
   Name = "Zenith Hub Fruit Farm",
   Callback = function()
      setclipboard(scriptText)
      print("Script Ä‘Ă£ Ä‘Æ°á»£c sao chĂ©p vĂ o bá»™ nhá»› táº¡m!")
   end,
})

local Tab = Window:CreateTab("Hop", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "AK Gaming Hop",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/AKGAMING-HOP"))()    
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Datthg Hop Boss",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/DatThg/refs/heads/main/DatTHGHopBoss"))()
   -- The function that takes place when the button is pressed
   end,
})


local Button = Tab:CreateButton({
   Name = "Cuttay Hub",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Truongthanhden23023/cuttayhub/refs/heads/main/workcuttayhub"))()
   -- The function that takes place when the button is pressed
   end,
})


local Button = Tab:CreateButton({
   Name = "Teddy Hub Hop",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/Teddy-Premium"))()
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "Min Gaming Hop Boss",
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinHopBoss"))()
   -- The function that takes place when the button is pressed
   end,
})


local Tab = Window:CreateTab("Dead Rails", 4483362458) -- Title, Image

local label15 = Tab:CreateLabel("lÆ°u Ă½ náº¿u chÆ¡i chung vá»›i ngÆ°á»i tá»‰ lá»‡ ban cao")
local label15 = Tab:CreateLabel("Note: If you play with other people, the ban rate is very high.")
local scriptText = [[
https://ads.luarmor.net/get_key?for=Leaf_Hub__Daily_Key-IMmpYwRKcYxy
]]

local Button = Tab:CreateButton({
   Name = "GET KEY Leaf Hub",
   Callback = function()
      setclipboard(scriptText)
      print("Script Đã Được Cao Chép Vào Bản Tạm Nhớ!")
   end,
})

local Button = Tab:CreateButton({
   Name = "Leaf Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://leafhub.dev/script.lua"))()
   end,
})

local Tab = Window:CreateTab("Old Toilet Tower Defense", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Spawn Unit",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/OldToiletTD"))()
   end,
})

local Tab = Window:CreateTab("CLIENT", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Discord",
   Callback = function()
      -- Sao Chép Link Vào Bản Tạm Nhớ 
      setclipboard("https://discord.gg/gz6WFuMg")
      print("Link Đã Được Sao Chép Vào Bản Tạm Nhớ!")
   end,
})

local Button = Tab:CreateButton({
   Name = "Arceus VNG",
   Callback = function()
      -- Sao Chép Vào Bản Tạm Nhớ 
      setclipboard("https://www.mediafire.com/file/d2z61eerih9qtc6/Roblox_-_VNG_Arceus_X_NEO_1.5.3.apk/file")
      print("Link Đã Sao Chép Vào Bản Tạm Nhớ!")
   end,
})
local Tab = Window:CreateTab("Pet Simulator 99", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Spawner Gems",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet('https://raw.githubusercontent.com/Ichessfleischv2/Ps99script/refs/heads/main/Hjn'))()
   end,
})

local Tab = Window:CreateTab("Blox Fruit", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "W Azure",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Truongthanhden23023/Wazure/refs/heads/main/Wazure"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "HOHO HUB V4",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Truongthanhden23023/hohohub/refs/heads/main/Hoho%20hub"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "ATTACK HUB",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Truongthanhden23023/Attackhub/refs/heads/main/Attackhub"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Blue X Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Truongthanhden23023/Blue-X-Hub/refs/heads/main/.github/workflows/Bluexhub"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Teddy Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/TeddyHubv2"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Turbo Lite",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/refs/heads/main/Main.lua"))()
   end,
})
local Tab = Window:CreateTab("Blox Fruit TAB2", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Maru Hub Fake",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bubu2k/Rubutv/refs/heads/main/MaruHub.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Tsuo Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/Tsuoscripts"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Rubu Roblox V4",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bubu2k/Rubutv/refs/heads/main/RuBuV4.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Astral v1",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Overgustx2/Main/refs/heads/main/BloxFruits_25.html"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Vxeze Hub By Dex Skibidi",
   Callback = function()
   -- The function that takes place when the button is pressed
getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dex-Bear/Vxezehub/refs/heads/main/Skidlamcho.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "TheBillDevHub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/selciawashere/screepts/refs/heads/main/BFKEYSYS",true))()
   end,
})

local scriptText = [[
https://ads.luarmor.net/get_key?for=VHFslhWdrPey
]]

local Button = Tab:CreateButton({
   Name = "GET KEY Banana Hub",
   Callback = function()
      setclipboard(scriptText)
      print("Script Đã Sao Chép Vào Bản Tạm Nhớ!")
   end,
})


local scriptText = [[
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
getgenv().Key = "Nhap key cua ban vao ;)" 
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaHub.lua"))()
]]

local Button = Tab:CreateButton({
   Name = "Banana Hub",
   Callback = function()
      setclipboard(scriptText)
      print("Script Đã Sao Chép Vào Bản Tạm Nhớ!")
   end,
})

local Button = Tab:CreateButton({
   Name = "Redz",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Truongthanhden23023/Redz/refs/heads/main/REDZ"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Speed X Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Rubu V3",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/RubuRoblox/refs/heads/main/RuBuBFVn"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Xeno Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
getgenv().Team = "Marines"
getgenv().Hide_Menu = false
getgenv().Auto_Execute = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Al Chemy Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Min gaming (tieng viet)",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinAV"))()
   end,
}) 

local Button = Tab:CreateButton({
   Name = "Hiru Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/NGUYENVUDUY1/Dev-Hiru/refs/heads/main/HiruHub.lua"))()
   end,
}) 

local Button = Tab:CreateButton({
   Name = "Datthg V1",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/DatThg/refs/heads/main/DatThgV1"))()
   end,
}) 

local Button = Tab:CreateButton({
   Name = "Zis Roblox",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Zis/refs/heads/main/ZisRb10"))()
   end,
}) 

local Tab = Window:CreateTab("Kaitun Fruit Blox Fruit", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Simple Script (patched)",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/Truongthanhden23023/WorkSmiplescript/refs/heads/main/.github/work"))()
   end,
})

local Tab = Window:CreateTab("Pet Go", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Speed X Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))()
   end,
})

local Tab = Window:CreateTab("Doors", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "Rael Hub",
   Callback = function()
   -- The function that takes place when the button is pressed
loadstring(game:HttpGet"https://raw.githubusercontent.com/Laelmano24/Rael-Hub/main/main.txt")()
   end,
})

Rayfield:LoadConfiguration()
