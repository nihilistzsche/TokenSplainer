local TokenFrame = CreateFrame("GameTooltip","TokenSplainerFrame",UIParent,"GameTooltipTemplate")
local TokenFrameInfo = CreateFrame("GameTooltip","TokenSplainerInfoFrame",UIParent,"GameTooltipTemplate")

local DEATHKNIGHT = 6
local DEMONHUNTER = 12
local DRUID = 11
local HUNTER = 3
local MAGE = 8
local MONK = 10
local PALADIN = 2
local PRIEST = 5
local ROGUE = 4
local SHAMAN = 7
local WARLOCK = 9
local WARRIOR = 1

-- base armor types
local CLOTH = "Cloth"
local LEATHER = "Leather"
local MAIL = "Mail"
local PLATE = "Plate"
local COSMETIC = "Cosmetic"
-- complex
local PLATENODK = "PlateNoDK"
local LEATHERNOMONK = "LeatherNoMonk"
local LEATHERNODH = "LeatherNoDH" -- hypothetical for now
-- weapons
local DAGGER = "Dagger"
local FIST = "Fist Weapon"
local AXE1 = "1h Axe"
local MACE1 = "1h Mace"
local SWORD1 = "1h Sword"
local WARGLAIVE = "Warglaive"
local POLEARM = "Polearm"
local STAFF = "Staff"
local AXE2 = "2h Axe"
local MACE2 = "2h Mace"
local SWORD2 = "2h Sword"
local BOW = "Bow"
local CROSSBOW = "Crossbow"
local GUN = "Gun"
local RANGED = "Ranged" -- Bow/Crossbow/Gun
local WAND = "Wand"
local SHIELD = "Shield"
local OFFHAND = "Offhand"
local CLOAK = "Cloak"
-- roles
local ROLECASTER = "RoleCaster"
local ROLEHEALER = "RoleHealer"
local ROLEMELEE = "RoleMelee"
local ROLERANGED = "RoleRanged"
local ROLETANK = "RoleTank"
local ROLEMELEEAGI = "RoleMeleeAgi"
local ROLEMELEEAGI1 = "RoleMeleeAgi1H"
local ROLEMELEEAGI2 = "RoleMeleeAgi2H"
local ROLEMELEEDAGGER = "RoleMeleeDagger"
local ROLEMELEESTR = "RoleMeleeStr"
local ROLEMELEESTR1 = "RoleMeleeStr1H"
local ROLEMELEESTR2 = "RoleMeleeStr2H"
local ROLETANKAGI = "RoleTankAgi"
local ROLETANKAGI1 = "RoleTankAgi1H"
local ROLETANKAGI2 = "RoleTankAgi2H"
local ROLETANKSTR = "RoleTankStr"
local ROLETANKSTR1 = "RoleTankStr1H"
local ROLETANKSTR2 = "RoleTankStr2H"
local ROLECASTHEAL = "RoleCasterHealer" -- a.k.a. Intellect user
local ROLECASTMACE = "RoleCasterMace"


local CLASSES = {}
FillLocalizedClassList(CLASSES)
local LOCCLASSES = {
         [DEATHKNIGHT] = CLASSES["DEATHKNIGHT"],
         [DEMONHUNTER] = CLASSES["DEMONHUNTER"],
         [DRUID] = CLASSES["DRUID"],
         [HUNTER] = CLASSES["HUNTER"],
         [MAGE] = CLASSES["MAGE"],
         [MONK] = CLASSES["MONK"],
         [PALADIN] = CLASSES["PALADIN"],
         [PRIEST] = CLASSES["PRIEST"],
         [ROGUE] = CLASSES["ROGUE"],
         [SHAMAN] = CLASSES["SHAMAN"],
         [WARLOCK] = CLASSES["WARLOCK"],
         [WARRIOR] = CLASSES["WARRIOR"],
         }

-- localized lookup - all glory to GetItemInfoInstant
local LOC = {
         -- base armor types
         [CLOTH] = select(3, GetItemInfoInstant(1427)),
         [LEATHER] = select(3, GetItemInfoInstant(1425)),
         [MAIL] = select(3, GetItemInfoInstant(1737)),
         [PLATE] = select(3, GetItemInfoInstant(5399)),
         [COSMETIC] = select(3, GetItemInfoInstant(128363)),
         -- complex
         [PLATENODK] = LOCCLASSES[PALADIN] .. ", " .. LOCCLASSES[WARRIOR],
         [LEATHERNOMONK] = LOCCLASSES[DRUID] .. ", " .. LOCCLASSES[ROGUE],
         [LEATHERNODH] = LOCCLASSES[DRUID] .. ", " .. LOCCLASSES[MONK] .. ", " .. LOCCLASSES[ROGUE], -- hypothetical for now
         -- weapons
         [DAGGER] = select(3, GetItemInfoInstant(5516)),
         [FIST] = select(3, GetItemInfoInstant(2942)),
         [AXE1] = select(3, GetItemInfoInstant(1516)),
         [MACE1] = select(3, GetItemInfoInstant(1815)),
         [SWORD1] = select(3, GetItemInfoInstant(1821)),
         [WARGLAIVE] = select(3, GetItemInfoInstant(134029)),
         [POLEARM] = select(3, GetItemInfoInstant(1485)),
         [STAFF] = select(3, GetItemInfoInstant(1831)),
         [AXE2] = select(3, GetItemInfoInstant(1417)),
         [MACE2] = select(3, GetItemInfoInstant(1514)),
         [SWORD2] = select(3, GetItemInfoInstant(1513)),
         [BOW] = select(3, GetItemInfoInstant(2780)),
         [CROSSBOW] = select(3, GetItemInfoInstant(6315)),
         [GUN] = select(3, GetItemInfoInstant(2778)),
         [RANGED] = TUTORIAL_TITLE44,
         [WAND] = select(3, GetItemInfoInstant(5092)),
         [SHIELD] = SHIELDSLOT,
         [OFFHAND] = INVTYPE_SHIELD, -- eh, in many locales it's called "shield hand", but INVTYPE_HOLDABLE is too long for my taste, and uses the same terms anyway
         [CLOAK] = INVTYPE_CLOAK,
         -- roles
         [ROLECASTER] = ROLE..": "..SPELL_TARGET_CENTER_CASTER:gsub("^%l", string.upper),
         [ROLEHEALER] = ROLE..": "..HEALER,
         [ROLEMELEE] = ROLE..": "..MELEE..", "..RANGED.." "..SPELL_SCHOOL0_CAP, -- eh, couldn't find a good representation of "physical DPS"
         [ROLERANGED] = ROLE..": "..RANGED,
         [ROLETANK] = ROLE..": "..TANK,
         [ROLEMELEEAGI] = ROLE..": "..MELEE.." ("..SPEC_FRAME_PRIMARY_STAT_AGILITY..")",
         [ROLEMELEEAGI1] = ROLE..": "..MELEE.." ("..SPEC_FRAME_PRIMARY_STAT_AGILITY..", "..INVTYPE_WEAPON..")",
         [ROLEMELEEAGI2] = ROLE..": "..MELEE.." ("..SPEC_FRAME_PRIMARY_STAT_AGILITY..", "..INVTYPE_2HWEAPON..")",
         [ROLEMELEEDAGGER] = ROLE..": "..MELEE.." ("..DAGGER..")",
         [ROLEMELEESTR] = ROLE..": "..MELEE.." ("..SPEC_FRAME_PRIMARY_STAT_STRENGTH..")",
         [ROLEMELEESTR1] = ROLE..": "..MELEE.." ("..SPEC_FRAME_PRIMARY_STAT_STRENGTH..", "..INVTYPE_WEAPON..")",
         [ROLEMELEESTR2] = ROLE..": "..MELEE.." ("..SPEC_FRAME_PRIMARY_STAT_STRENGTH..", "..INVTYPE_2HWEAPON..")",
         [ROLETANKAGI] = ROLE..": "..TANK.." ("..SPEC_FRAME_PRIMARY_STAT_AGILITY..")",
         [ROLETANKAGI1] = ROLE..": "..TANK.." ("..SPEC_FRAME_PRIMARY_STAT_AGILITY..", "..INVTYPE_WEAPON..")",
         [ROLETANKAGI2] = ROLE..": "..TANK.." ("..SPEC_FRAME_PRIMARY_STAT_AGILITY..", "..INVTYPE_2HWEAPON..")",
         [ROLETANKSTR] = ROLE..": "..TANK.." ("..SPEC_FRAME_PRIMARY_STAT_STRENGTH..")",
         [ROLETANKSTR1] = ROLE..": "..TANK.." ("..SPEC_FRAME_PRIMARY_STAT_STRENGTH..", "..INVTYPE_WEAPON..")",
         [ROLETANKSTR2] = ROLE..": "..TANK.." ("..SPEC_FRAME_PRIMARY_STAT_STRENGTH..", "..INVTYPE_2HWEAPON..")",
         [ROLECASTHEAL] = ROLE..": "..SPELL_TARGET_CENTER_CASTER:gsub("^%l", string.upper).."/"..HEALER,
         [ROLECASTMACE] = ROLE..": "..SPELL_TARGET_CENTER_CASTER:gsub("^%l", string.upper).."/"..HEALER.." ("..MACE1..")",

}

local ITEMS = (SINGLE_PAGE_RESULTS_TEMPLATE..":"):gsub("%s?%%d%s?",""):gsub("::",":")

local ALLCLASSES = { DEATHKNIGHT, DEMONHUNTER, DRUID, HUNTER, MAGE, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARLOCK, WARRIOR }
local ALLARMOR = { CLOTH, LEATHER, MAIL, PLATE }
--local ALLROLES = { ROLECASTER, ROLEHEALER, ROLEMELEE, ROLERANGED, ROLETANK, ROLEMELEEAGI, ROLEMELEEAGI1, ROLEMELEEAGI2, ROLEMELEESTR, ROLETANKAGI, ROLETANKAGI2, ROLETANKSTR, ROLECASTHEAL, ROLECASTMACE }

local CLASSARMOR = { -- Class to Armor class/Weapon type/Role lookup
         [DEATHKNIGHT] = {
                 [PLATE]=1,
                 [AXE1]=1,
                 [MACE1]=1,
                 [SWORD1]=1,
                 [POLEARM]=1,
                 [AXE2]=1,
                 [MACE2]=1,
                 [SWORD2]=1,
                 -- all roles
                 [ROLEMELEE]=1,
                 [ROLEMELEESTR]=1,
                 [ROLETANK]=1,
                 [ROLETANKSTR]=1,
                 [ROLEMELEESTR1]=1,
                 [ROLEMELEESTR2]=1,
                 -- spec roles
                 [1] = {
                       [ROLETANK]=1,
                       [ROLETANKSTR]=1,
                       [ROLEMELEESTR2]=1,
                       },
                 [2] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEESTR]=1,
                       [ROLEMELEESTR1]=1,
                       [ROLEMELEESTR1]=1,
                       },
                 [3] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEESTR]=1,
                       [ROLEMELEESTR2]=1,
                       },
                 },
         [DEMONHUNTER] = {
                 [LEATHER]=1,
                 [DAGGER]=1,
                 [FIST]=1,
                 [AXE1]=1,
                 [MACE1]=1,
                 [SWORD1]=1,
                 [WARGLAIVE]=1,
                 [ROLEMELEE]=1,
                 [ROLEMELEEAGI]=1,
                 [ROLEMELEEAGI1]=1,
                 [ROLETANK]=1,
                 [ROLETANKAGI]=1,
                 [1] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEEAGI]=1,
                       [ROLEMELEEAGI1]=1,
                       },
                 [2] = {
                       [ROLETANK]=1,
                       [ROLETANKAGI]=1,
                       },
                 },
         [DRUID] = {
                 [LEATHER]=1,
                 [LEATHERNOMONK]=1,
                 [LEATHERNODH]=1,
                 [DAGGER]=1,
                 [FIST]=1,
                 [MACE1]=1,
                 [POLEARM]=1,
                 [STAFF]=1,
                 [MACE2]=1,
                 [ROLEMELEE]=1,
                 [ROLEMELEEAGI]=1,
                 [ROLEMELEEAGI2]=1,
                 [ROLETANK]=1,
                 [ROLETANKAGI]=1,
                 [ROLETANKAGI2]=1,
                 [ROLECASTER]=1,
                 [ROLEHEALER]=1,
                 [ROLECASTHEAL]=1,
                 [ROLECASTMACE]=1,
                 [1] = {
                       [ROLECASTER]=1,
                       [ROLECASTHEAL]=1,
                       [ROLECASTMACE]=1,
                       },
                 [2] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEEAGI]=1,
                       [ROLEMELEEAGI2]=1,
                       },
                 [3] = {
                       [ROLETANK]=1,
                       [ROLETANKAGI]=1,
                       [ROLETANKAGI2]=1,
                       },
                 [4] = {
                       [ROLEHEALER]=1,
                       [ROLECASTHEAL]=1,
                       [ROLECASTMACE]=1,
                       },
                 },
         [HUNTER] = {
                 [MAIL]=1,
                 [DAGGER]=1,
                 [FIST]=1,
                 [AXE1]=1,
                 [SWORD1]=1,
                 [POLEARM]=1,
                 [STAFF]=1,
                 [AXE2]=1,
                 [SWORD2]=1,
                 [RANGED]=1,
                 [ROLERANGED]=1,
                 [ROLEMELEEAGI]=1,
                 [ROLEMELEEAGI2]=1,
                 [1] = {
                       [ROLERANGED]=1,
                       [ROLEMELEE]=1,
                       [ROLEMELEEAGI]=1,
                       },
                 [2] = {
                       [ROLERANGED]=1,
                       [ROLEMELEE]=1,
                       [ROLEMELEEAGI]=1,
                       },
                 [3] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEEAGI]=1,
                       [ROLEMELEEAGI2]=1,
                       },
                 },
         [MAGE] = {
                 [CLOTH]=1,
                 [DAGGER]=1,
                 [SWORD1]=1,
                 [STAFF]=1,
                 [WAND]=1,
                 [ROLECASTER]=1,
                 [ROLECASTHEAL]=1,
                 [1] = {
                       [ROLECASTER]=1,
                       [ROLECASTHEAL]=1,
                       },
                 [2] = {
                       [ROLECASTER]=1,
                       [ROLECASTHEAL]=1,
                       },
                 [3] = {
                       [ROLECASTER]=1,
                       [ROLECASTHEAL]=1,
                       },
                 },
         [MONK] = {
                 [LEATHER]=1,
                 [LEATHERNODH]=1,
                 [DAGGER]=1,
                 [FIST]=1,
                 [AXE1]=1,
                 [MACE1]=1,
                 [SWORD1]=1,
                 [POLEARM]=1,
                 [STAFF]=1,
                 [ROLEMELEE]=1,
                 [ROLEMELEEAGI]=1,
                 [ROLEMELEEAGI1]=1,
                 [ROLEMELEEAGI2]=1, -- check whether WW can still wield 2Hs
                 [ROLETANK]=1,
                 [ROLETANKAGI]=1,
                 [ROLETANKAGI2]=1,
                 [ROLEHEALER]=1,
                 [ROLECASTHEAL]=1,
                 [ROLECASTMACE]=1,
                 [1] = {
                       [ROLETANK]=1,
                       [ROLETANKAGI]=1,
                       [ROLETANKAGI2]=1,
                       },
                 [2] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEEAGI]=1,
                       [ROLEMELEEAGI1]=1,
                       [ROLEMELEEAGI2]=1,
                       },
                 [3] = {
                       [ROLEHEALER]=1,
                       [ROLECASTHEAL]=1,
                       [ROLECASTMACE]=1,
                       },
                 },
         [PALADIN] = {
                 [PLATE]=1,
                 [PLATENODK]=1,
                 [AXE1]=1,
                 [MACE1]=1,
                 [SWORD1]=1,
                 [POLEARM]=1,
                 [STAFF]=1,
                 [AXE2]=1,
                 [MACE2]=1,
                 [SWORD2]=1,
                 [SHIELD]=1,
                 [ROLEMELEE]=1,
                 [ROLEMELEESTR]=1,
                 [ROLETANK]=1,
                 [ROLETANKSTR]=1,
                 [ROLEHEALER]=1,
                 [ROLECASTHEAL]=1,
                 [ROLECASTMACE]=1,
                 [ROLEMELEESTR1]=1,
                 [ROLEMELEESTR2]=1,
                 [1] = {
                       [ROLEHEALER]=1,
                       [ROLECASTHEAL]=1,
                       [ROLECASTMACE]=1,
                       },
                 [2] = {
                       [ROLETANK]=1,
                       [ROLETANKSTR]=1,
                       [ROLEMELEESTR1]=1,
                       },
                 [3] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEESTR]=1,
                       [ROLEMELEESTR2]=1,
                       },
                },
         [PRIEST] = {
                 [CLOTH]=1,
                 [DAGGER]=1,
                 [MACE1]=1,
                 [STAFF]=1,
                 [WAND]=1,
                 [ROLECASTER]=1,
                 [ROLEHEALER]=1,
                 [ROLECASTHEAL]=1,
                 [ROLECASTMACE]=1,
                 [1] = {
                       [ROLEHEALER]=1,
                       [ROLECASTHEAL]=1,
                       [ROLECASTMACE]=1,
                       },
                 [2] = {
                       [ROLEHEALER]=1,
                       [ROLECASTHEAL]=1,
                       [ROLECASTMACE]=1,
                       },
                 [3] = {
                       [ROLECASTER]=1,
                       [ROLECASTHEAL]=1,
                       [ROLECASTMACE]=1,
                       },
                 },
         [ROGUE] = {
                 [LEATHER]=1,
                 [LEATHERNOMONK]=1,
                 [LEATHERNODH]=1,
                 [DAGGER]=1,
                 [FIST]=1,
                 [AXE1]=1,
                 [MACE1]=1,
                 [SWORD1]=1,
                 [RANGED]=1,
                 [ROLEMELEE]=1,
                 [ROLEMELEEAGI]=1,
                 [ROLEMELEEAGI1]=1,
                 [ROLEMELEEDAGGER]=1,
                 [1] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEEAGI]=1,
                       [ROLEMELEEDAGGER]=1,
                       },
                 [2] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEEAGI]=1,
                       [ROLEMELEEAGI1]=1,
                       },
                 [3] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEEAGI]=1,
                       [ROLEMELEEDAGGER]=1,
                       },
                 },
         [SHAMAN] = {
                 [MAIL]=1,
                 [DAGGER]=1,
                 [FIST]=1,
                 [AXE1]=1,
                 [MACE1]=1,
                 [STAFF]=1,
                 [SHIELD]=1,
                 [ROLEMELEE]=1,
                 [ROLEMELEEAGI]=1,
                 [ROLEMELEEAGI1]=1,
                 [ROLECASTER]=1,
                 [ROLEHEALER]=1,
                 [ROLECASTHEAL]=1,
                 [ROLECASTMACE]=1,
                 [1] = {
                       [ROLECASTER]=1,
                       [ROLECASTHEAL]=1,
                       [ROLECASTMACE]=1,
                       },
                 [2] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEEAGI]=1,
                       [ROLEMELEEAGI1]=1,
                       },
                 [3] = {
                       [ROLEHEALER]=1,
                       [ROLECASTHEAL]=1,
                       [ROLECASTMACE]=1,
                       },
                 },
         [WARLOCK] = {
                 [CLOTH]=1,
                 [DAGGER]=1,
                 [SWORD1]=1,
                 [STAFF]=1,
                 [WAND]=1,
                 [ROLECASTER]=1,
                 [ROLECASTHEAL]=1,
                 [1] = {
                       [ROLECASTER]=1,
                       [ROLECASTHEAL]=1,
                       },
                 [2] = {
                       [ROLECASTER]=1,
                       [ROLECASTHEAL]=1,
                       },
                 [3] = {
                       [ROLECASTER]=1,
                       [ROLECASTHEAL]=1,
                       },
                 },
         [WARRIOR] = {
                 [PLATE]=1,
                 [PLATENODK]=1,
                 [DAGGER]=1,
                 [FIST]=1,
                 [AXE1]=1,
                 [MACE1]=1,
                 [SWORD1]=1,
                 [POLEARM]=1,
                 [STAFF]=1,
                 [AXE2]=1,
                 [MACE2]=1,
                 [SWORD2]=1,
                 [RANGED]=1,
                 [SHIELD]=1,
                 [ROLEMELEE]=1,
                 [ROLEMELEESTR]=1,
                 [ROLETANK]=1,
                 [ROLETANKSTR]=1,
                 [ROLEMELEESTR1]=1,
                 [ROLEMELEESTR2]=1,
                 [1] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEESTR]=1,
                       [ROLEMELEESTR2]=1,
                       },
                 [2] = {
                       [ROLEMELEE]=1,
                       [ROLEMELEESTR]=1,
                       [ROLEMELEESTR1]=1,
                       [ROLEMELEESTR2]=1,
                       },
                 [3] = {
                       [ROLETANK]=1,
                       [ROLETANKSTR]=1,
                       [ROLEMELEESTR1]=1,
                       },
                 },
         }
-- all classes can equip (and thus unlock) Offhands and Cloaks
for _,c in pairs(CLASSARMOR) do
         c[OFFHAND]=1
         c[CLOAK]=1
end

local bonus = {
         [570] = 566, -- heroic
         [569] = 567, -- mythic
         }

-- juuuust great, Tier 18 (BRF) tokens have bonus IDs for dropped versions, but there are also quest rewards with fixed difficulties and no bonus IDs... another lookup
local Tier18Lookup = {
         -- Chest of the Iron Conqueror
         [120212] = { 119305, 0 },
         [120227] = { 119305, 570 },
         [120242] = { 119305, 569 },
         -- Gauntlets of the Iron Conqueror
         [120213] = { 119306, 0 },
         [120228] = { 119306, 570 },
         [120243] = { 119306, 569 },
         -- Helm of the Iron Conqueror
         [120215] = { 119308, 0 },
         [120230] = { 119308, 570 },
         [120245] = { 119308, 569 },
         -- Leggings of the Iron Conqueror
         [120214] = { 119307, 0 },
         [120229] = { 119307, 570 },
         [120244] = { 119307, 569 },
         -- Shoulders of the Iron Conqueror
         [120216] = { 119309, 0 },
         [120231] = { 119309, 570 },
         [120246] = { 119309, 569 },
         -- Chest of the Iron Protector
         [120222] = { 119318, 0 },
         [120237] = { 119318, 570 },
         [120252] = { 119318, 569 },
         -- Gauntlets of the Iron Protector
         [120223] = { 119319, 0 },
         [120238] = { 119319, 570 },
         [120253] = { 119319, 569 },
         -- Helm of the Iron Protector
         [120225] = { 119321, 0 },
         [120240] = { 119321, 570 },
         [120255] = { 119321, 569 },
         -- Leggings of the Iron Protector
         [120224] = { 119320, 0 },
         [120239] = { 119320, 570 },
         [120254] = { 119320, 569 },
         -- Shoulders of the Iron Protector
         [120226] = { 119322, 0 },
         [120241] = { 119322, 570 },
         [120256] = { 119322, 569 },
         -- Chest of the Iron Vanquisher
         [120221] = { 119315, 0 },
         [120236] = { 119315, 570 },
         [120251] = { 119315, 569 },
         -- Gauntlets of the Iron Vanquisher
         [120217] = { 119311, 0 },
         [120232] = { 119311, 570 },
         [120247] = { 119311, 569 },
         -- Helm of the Iron Vanquisher
         [120218] = { 119312, 0 },
         [120233] = { 119312, 570 },
         [120248] = { 119312, 569 },
         -- Leggins of the Iron Vanquisher
         [120219] = { 119313, 0 },
         [120234] = { 119313, 570 },
         [120249] = { 119313, 569 },
         -- Shoulders of the Iron Vanquisher
         [120220] = { 119314, 0 },
         [120235] = { 119314, 570 },
         [120250] = { 119314, 569 },

}

local CLASSNAME, _, CLASS = UnitClass("player")
--CLASS = DRUID
local EQUIP = CLASSARMOR[CLASS]
gequip = EQUIP



-- from http://lua-users.org/wiki/SortedIteration
-- adjusted to support mixed string-number indices
function __genOrderedIndex( t )
    local orderedIndex = {}
    for key in pairs(t) do
          table.insert( orderedIndex, key )
    end
    table.sort( orderedIndex, function(a,b) return a..""<b.."" end ) -- force string comparison
    return orderedIndex
end

function orderedNext(t, state)
    -- Equivalent of the next function, but returns the keys in the alphabetic
    -- order. We use a temporary ordered key table that is stored in the
    -- table being iterated.

    key = nil
    --print("orderedNext: state = "..tostring(state) )
    if state == nil then
        -- the first time, generate the index
        t.__orderedIndex = __genOrderedIndex( t )
        key = t.__orderedIndex[1]
    else
        -- fetch the next value
        for i = 1,table.getn(t.__orderedIndex) do
            if t.__orderedIndex[i] == state then
                key = t.__orderedIndex[i+1]
            end
        end
    end

    if key then
        return key, t[key]
    end

    -- no more value to return, cleanup
    t.__orderedIndex = nil
    return
end

function orderedPairs(t)
    -- Equivalent of the pairs() function on tables. Allows to iterate
    -- in order
    return orderedNext, t, nil
end
-- from http://lua-users.org/wiki/SortedIteration

TokenSplainerTokens = {}

local GetSimilar = function(set)
         local names = {}
         if type(set) ~= "table" then return end
         for _,i in ipairs(set) do
                 GetItemInfo(i)
                 local n, _ = GetItemInfo(i)
                 if not n then return end
                 table.insert(names,n)
         end
         if #names == 0 then return end
         local base = names[1]
         if not base then return end
         local left, right = "", "" --names[1]:sub(1,1), names[1]:sub(names[1]:len())
         table.remove(names,1)
         if #names == 0 then return end
         -- left
         local bl, br
         local lastspaceL = 0
         for i=1,base:len() do
                 for _,n in ipairs(names) do
                         if n:sub(i,i) == " " then lastspaceL = i end
                         if n:sub(i,i) ~= base:sub(i,i) then bl = true break end
                         if i >= n:len() - 1 then break end
                 end
                 if bl then break end
                 left = base:sub(1,i)
         end
         -- right
         local lastspaceR = 0
         for i=0,base:len()-1 do
                 for _,n in ipairs(names) do
                         if n:sub(-i-1,-i-1) == " " then lastspaceR = i end
                         if n:sub(-i-1,-i-1) ~= base:sub(-i-1,-i-1) then br = true break end
                         if i >= n:len() - 1 then break end
                 end
                 if br then break end
                 right = base:sub(base:len()-i)
         end

         if left==base or right==base then return end
         if left=="" and right=="" then return end

          -- check for breaks mid-word
         if left:len() > 0 and left:sub(left:len()) ~= " " then
                 left = left:sub(1,lastspaceL)
         end
         if right:len() > 0 and right:sub(1,1) ~= " " then

                 right = right:sub(-lastspaceR-1)
         end

         return left, right
end

local LocalizeAndColor = function(dtype)

         -- localization, yay!
         local loc = LOCCLASSES[dtype] or LOC[dtype] or dtype
         local color
         if dtype == CLASS then
                 color = select(4, GetItemQualityColor(2)) -- green/uncommon
         elseif type(dtype) == "string" and EQUIP[dtype] then
                 local canget = true
                 if dtype:sub(1,4) == "Role" then
                         canget = EQUIP[GetSpecialization()] and EQUIP[GetSpecialization()][dtype]
                 end

                 if canget then
                         color = select(4, GetItemQualityColor(2)) -- green/uncommon
                 else
                         color = select(4, GetItemQualityColor(5)) -- orange/leg
                 end

         else
                 color = select(4, GetItemQualityColor(0)) -- grey/poor
         end

         return "|c"..color..loc.."|r"

end

local GetBareLink = function(itemID)

         return "\124Hitem:"..itemID.."::::::::::::::::\124h"

end

local AddBonusID = function(link, bonusID)
         if not link then return end
         if not bonusID then return link end
         -- :0:0:0:0:0:0:0:0:0:0:0:
         local _, _, itemID, ench, j1, j2, j3, j4, suffixID, uniqueID, level, spec, upgradeID, instanceDifficultyID, numBonusIds, bonus1, bonus2, bonus3, bonus4 =
                 string.find(link,"item:(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*)")
         local bonusLink = "\124Hitem:"..itemID..":0:0:0:0:0:0:0:0:0:0:0:1:"..bonusID.."\124htest\124h"
         return bonusLink
end

local currentTip
local currentTipTag
local currentID

local OnHide = function(tooltip)
         if tooltip ~= currentTip and currentTip and currentTip:IsShown() then return end -- different tooltip while owner is still visible
         currentTip = nil
         currentTipTag = nil
         currentID = nil
         TokenFrame:Hide()
         TokenFrameInfo:Hide()
end

local OnFade = function(tooltip)
         if tooltip ~= currentTip and currentTip and currentTip:IsShown() then return end -- different tooltip while owner is still visible
         currentTip = nil
         currentTipTag = nil
         currentID = nil
         TokenFrame:FadeOut()
         TokenFrameInfo:FadeOut()
end



local OnMove = function(tooltip)
         if tooltip ~= currentTip or not TokenFrame:IsShown() then return end
         TokenFrame:ClearAllPoints();
         local left = tooltip:GetLeft() or 0
         local right = tooltip:GetRight() or 0
         local screen = GetScreenWidth()
         local rightAttach = (left + right) / 2 < screen / 2 -- middle of the tooltip is
         local infoOffset = TokenFrameInfo:IsShown() and TokenFrameInfo:GetHeight() or 0

         if rightAttach then
                  TokenFrame:SetPoint("TOPLEFT",tooltip,"TOPRIGHT",0,-infoOffset);
                  TokenFrameInfo:SetPoint("BOTTOMLEFT",TokenFrame,"TOPLEFT",0,0);
         else
                  TokenFrame:SetPoint("TOPRIGHT",tooltip,"TOPLEFT",0,-infoOffset);
                  TokenFrameInfo:SetPoint("BOTTOMRIGHT",TokenFrame,"TOPRIGHT",0,0);
         end

end

local GetTransmogInfo  = function(itemLink, ignoreClass)

         if not CanIMogIt then return end

         local text = "|cFFFF0000can't read 'Learned' status, try again|r";
         -- itemLink should be valid at this point, but as we're passing this to CanIMogIt, any errors would falsely be shown as coming from there

         if itemLink then -- oh look, it worked!
                 text = CanIMogIt:GetTooltipText(itemLink)
                 if not text then text = "|cFF999999cannot determine status|r" end

                 text = text:gsub(CanIMogIt.KNOWN_FROM_ANOTHER_ITEM, CanIMogIt.KNOWN)
                 -- ignore current class
                 if ignoreClass then

                         if text:match(CanIMogIt.UNKNOWABLE_BY_CHARACTER) or text:match(CanIMogIt.UNKNOWABLE_SOULBOUND) then
                                 text = CanIMogIt.UNKNOWN
                         end

                         text = text:gsub(CanIMogIt.KNOWN_BY_ANOTHER_CHARACTER, CanIMogIt.KNOWN)
                         text = text:gsub(CanIMogIt.KNOWN_FROM_ANOTHER_ITEM_AND_CHARACTER, CanIMogIt.KNOWN)
                         text = text:gsub(CanIMogIt.KNOWN_FROM_ANOTHER_ITEM_BUT_TOO_LOW_LEVEL, CanIMogIt.KNOWN)

                 end
         end

         return text

end

local replace = function(text, match, sub)
         -- for a plain search, escape regexp characters in match string
         match = match:gsub("(%W)","%%%1")
         return text:gsub(match,sub)
end

local OnTooltip = function(tooltip)

         TokenFrame:Hide()
         TokenFrameInfo:Hide()
         TokenFrame.UnknownItems = false

         local show = false


         if not tooltip then return end

         local link = tooltip:GetTooltipData()["hyperlink"]
         if not link then return end
         local _, _, itemID, ench, j1, j2, j3, j4, suffixID, uniqueID, level, spec, upgradeID, instanceDifficultyID, numBonusIds, bonus1, bonus2, bonus3, bonus4 =
                 string.find(link,"item:(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*):(%-?%d*)")
         itemID = tonumber(itemID) or 0
         numBonusIds = tonumber(numBonusIds) or 0
         bonus1 = tonumber(bonus1) or 0
         bonus2 = tonumber(bonus2) or 0
         bonus3 = tonumber(bonus3) or 0
         bonus4 = tonumber(bonus4) or 0

         -- determine bonus
         local bonusID
         if bonus[bonus1] then bonusID = bonus[bonus1]
         elseif bonus[bonus2] then bonusID = bonus[bonus2]
         elseif bonus[bonus3] then bonusID = bonus[bonus3]
         elseif bonus[bonus4] then bonusID = bonus[bonus4]
         end
         -- Tier 18 redirect for "Essence of the Iron XY" quest rewards
         if Tier18Lookup[itemID] then -- override
                 bonusID = Tier18Lookup[itemID][2]
                 itemID = Tier18Lookup[itemID][1]
         end

         if not itemID or not TokenSplainerTokens[itemID] then return end

         link = nil
         local token = TokenSplainerTokens[itemID]
         gtoken = token
         local display = nil
         local class,armor,role

         local gnote = type(token)=="table" and token["note"]
         local grnd  = type(token)=="table" and token["rnd"]

         local ignoreClass = IsAltKeyDown()

         if itemID ~= currentID then currentTipTag = nil end
         currentTip = tooltip
         currentID = itemID

         local displays = {}
         if type(token)=="number" then
                 displays["ALL"] = {token}
         elseif ignoreClass then
                 displays = token
         else
                 if token[CLASS] then displays[CLASS] = token[CLASS] end
                 for e,_ in pairs(EQUIP) do
                         if type(e) == "string" and token[e] then displays[e] = token[e] end
                 end
         end

         TokenFrame:ClearLines()
         TokenFrame:SetOwner(tooltip,"ANCHOR_NONE")

         -- first iteration to count
         local num, tid, tnote, trnd = 0
         for _,td in pairs(displays) do
                 if type(td) == "number" or type(td) == "string" then td = {td} end
                 trnd = grnd or td["rnd"]
                 for kk,tt in pairs(td) do
                 if type(tt) == "number" then tt = {tt} end
                 if type(tt) == "string" then tt = {} end
                 for k,ttt in ipairs(tt) do
                         num = num + 1
                         tid = ttt
                 end
                 tnote = tt["note"]
                 end
         end
--         print(num)
         if num == 1 then -- only one item
                 if not gnote and not tnote then tnote = "currency for:" end
                 if tnote or gnote then
                         TokenFrameInfo:ClearLines()
                         TokenFrameInfo:SetOwner(TokenFrame,"ANCHOR_NONE")
                         TokenFrameInfo:AddDoubleLine("|c"..select(4, GetItemQualityColor(2))..(tnote or gnote).."|r","|cffaee623[TokenSplainer]|r",nil,nil,nil,true)
                         local right = _G[TokenFrameInfo:GetName().."TextRight1"]
                         local filename, _, flags = right:GetFont()
                         local _, fontHeight, _ = _G[TokenFrameInfo:GetName().."TextLeft1"]:GetFont()
                         right:SetFont(filename, fontHeight * .75, flags)
                         TokenFrameInfo:Show()
                 end
                 if tid > 0 then
                         local _, tlink, _ = GetItemInfo(tid)
                         if not tlink then tlink = GetBareLink(tid) end
                         tlink = AddBonusID(tlink, bonusID)
                         TokenFrame:SetHyperlink(tlink)
                         tlink = select(2,TokenFrame:GetItem())
                         TokenFrame:AddDoubleLine(" ", GetTransmogInfo(tlink,ignoreClass))
                         if trnd then
                                 _G[TokenFrame:GetName().."TextLeft1"]:SetText(_G[TokenFrame:GetName().."TextLeft1"]:GetText().." "..ITEM_RANDOM_ENCHANT:lower())
                         end
                 else -- fake item for "nothing"
                         local nothing, _ = GetSpellInfo(106228)
                         TokenFrame:ClearLines()
                         TokenFrame:AddLine(nothing.." ")
                         TokenFrame:AddLine("Token not used anymore, just sell it",.5,.5,.5)
                 end
                 displays = {} -- skip second interation
                 show = true
         end

         if not show then TokenFrame:AddDoubleLine("|c"..select(4, GetItemQualityColor(2))..(gnote or ITEMS).."|r"," ") end
         for dtype,display in orderedPairs(displays) do
         -- imagine indentation here
         if type(display) == "table" then

                 show = true
                 local same
                 local set
                 local note = display["note"]
                 local rnd = display["rnd"] or grnd

                 local header = LocalizeAndColor(dtype)
                 TokenFrame:AddLine(header)
                 for e,v in pairs(display) do
                         local id, link, kid, kLink
                         --
                         if type(v) == "number" then v={v} end
                         if type(v) == "string" then v={} end -- skip
                         --
                         if v["same"] then same = v["same"] end
                         if v["set"] then set   = v["set"] end
                         if v["note"] then note = v["note"] end

                         if note then TokenFrame:AddLine(note) end
                         -- todo other groupings, for now just "same look"
                         local r, g, b, hex
                         local left, right = GetSimilar(v)
                         local useLeft, useRight
                         if left or right then
                                 useLeft = (left or ""):len() >= (right or ""):len()
                                 useRight = not useLeft
                         end

                         if set and useLeft then
                                 local _, _, itemQuality, _ = GetItemInfo(v[1])
                                 if not itemQuality then itemQuality = 0 end -- grey for unknown
                                 r, g, b, hex = GetItemQualityColor( itemQuality );
                                 TokenFrame:AddLine((left.."..."), r, g, b)
                         end
                         for x,i in ipairs(v) do
                                 -- if we find multiple items here, assume same appearance, unless "set" is, er, set
                                 local itemName, itemLink, itemQuality, _, _, _, _, _, _, itemTexture, _ = GetItemInfo(i)
                                 if not itemLink then itemLink = GetBareLink(i) end
                                 itemLink = AddBonusID(itemLink, bonusID)
                                 if not itemQuality then itemQuality = 0 end -- grey for unknown
                                 if not itemName then
                                          itemName = "(Item #"..i..")"
                                          TokenFrame.UnknownItems = true
                                 end
                                 r, g, b, hex = GetItemQualityColor( itemQuality );
                                 if set then
                                         if useLeft then
                                                 itemName = replace(itemName, left, "")
                                         elseif useRight then
                                                 itemName = replace(itemName, right, "")
                                         end
                                         TokenFrame:AddDoubleLine(itemName, GetTransmogInfo(itemLink,ignoreClass), r, g, b)
                                 elseif useLeft then
                                         itemName = replace(itemName, left, "")
                                         TokenFrame:AddDoubleLine(x == 1 and (left.."...") or " ", itemName, r, g, b, r, g, b)
                                 elseif useRight then
                                         itemName = replace(itemName, right, "")
                                         TokenFrame:AddDoubleLine(itemName, x == #v and ("..."..right) or " ", r, g, b, r, g, b)
                                 else
                                         TokenFrame:AddLine(itemName..(rnd and " <rnd ench>" or ""), r, g, b)
                                 end
                                 id = i
                                 link = itemLink
                                 if itemLink and CanIMogIt and CanIMogIt:PlayerKnowsTransmogFromItem(itemLink) then kid = id kLink = link end
                         end
                         if set and useRight then
                                 local _, _, itemQuality, _ = GetItemInfo(v[#v])
                                 if not itemQuality then itemQuality = 0 end -- grey for unknown
                                 r, g, b, hex = GetItemQualityColor( itemQuality );
                                 TokenFrame:AddLine(("..."..right), r, g, b)
                         end

                         -- and now for the magic part
                         if not set then
                                 TokenFrame:AddDoubleLine(" ", GetTransmogInfo(kLink or link,ignoreClass))
                         end

                 end
                 show = true
         end
         -- ...
         end

         if show then

                 if currentTipTag and _G[tooltip:GetName().."TextRight"..currentTipTag].TokenSplainer then
                         _G[tooltip:GetName().."TextLeft"..currentTipTag]:SetText("")
                         _G[tooltip:GetName().."TextRight"..currentTipTag]:SetText("")
                         _G[tooltip:GetName().."TextLeft"..currentTipTag]:Show()
                         _G[tooltip:GetName().."TextRight"..currentTipTag]:Show()
                         tooltip:Show()
                 end

                 TokenFrame:Show()
                 if TokenFrameInfo:IsShown() then
                         TokenFrameInfo:SetMinimumWidth(max(TokenFrameInfo:GetWidth(),TokenFrame:GetWidth()-21))
                         TokenFrameInfo:Show()
                 else
                  -- addon tag
                         local right = _G[TokenFrame:GetName().."TextRight1"]
                         right:SetText((right:GetText() or "") .. "  |cffaee623[TokenSplainer]|r")
                         local filename, _, flags = right:GetFont()
                         local _, fontHeight, _ = _G[TokenFrame:GetName().."TextLeft1"]:GetFont()
                         right:SetFont(filename, fontHeight * .75, flags)
                         right:Show()
                 end

                 OnMove(tooltip)

         else

                 -- no results for current class
                 if currentTipTag then -- tag exists
                         _G[tooltip:GetName().."TextLeft"..currentTipTag]:SetText(" ")
                         _G[tooltip:GetName().."TextRight"..currentTipTag]:SetText("|c"..select(4, GetItemQualityColor(7)).."Hold Alt for info on other classes")
                         _G[tooltip:GetName().."TextLeft"..currentTipTag]:Show()
                         _G[tooltip:GetName().."TextRight"..currentTipTag]:Show()
                         tooltip:Show()
                 else
                         tooltip:AddDoubleLine(" ", "|c"..select(4, GetItemQualityColor(7)).."Hold Alt for info on other classes")
                         currentTipTag = tooltip:NumLines()
                         _G[tooltip:GetName().."TextRight"..currentTipTag].TokenSplainer = 1 -- additional flag
                 end


         end







 end

TokenFrame:SetScript("OnEvent",function(self, event, arg, ...)

         if event == "ADDON_LOADED" and arg == "TokenSplainer" then
                 TokenFrame:UnregisterEvent("ADDON_LOADED")
                 local tips = { GameTooltip, ItemRefTooltip }
                 if _G["AtlasLootTooltip"] then table.insert( tips, _G["AtlasLootTooltip"] ) end
                 for _,tooltip in pairs(tips) do
                         TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, OnTooltip)
                         hooksecurefunc(tooltip, "SetHyperlink", OnTooltip)
                         tooltip:HookScript("OnHide", OnHide)
                         hooksecurefunc(tooltip, "FadeOut", OnFade)
                         tooltip:HookScript("OnDragStop", OnMove)
                 end


         end

         if event == "MODIFIER_STATE_CHANGED" then -- use Alt as toggle
--                 if not TokenFrame:IsShown() or not TokenFrame:GetOwner() or not TokenFrame:GetOwner():IsShown() then return end
                 if arg ~= "LALT" and arg ~= "RALT" then return end
                 OnTooltip(TokenFrame:GetOwner()) -- function queries Shift status on its own
         end

         if event == "GET_ITEM_INFO_RECEIVED" and TokenFrame:IsShown() and TokenFrame.UnknownItems then
                 -- no need to match this with the items we're displaying, just 'redraw'
                 -- apparently triggers repeatedly, but I've noticed only a subjective millisecond of the display going from (item:X) to the actual name
                 OnTooltip(TokenFrame:GetOwner())
         end

end)

TokenFrame:RegisterEvent("ADDON_LOADED")
TokenFrame:RegisterEvent("MODIFIER_STATE_CHANGED")
TokenFrame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
--TokenFrame:RegisterEvent("LFG_LOCK_INFO_RECEIVED")
