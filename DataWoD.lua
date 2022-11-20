if not TokenSplainerTokens then return end

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
local ROLETANKAGI2 = "RoleTankAgi2H"
local ROLETANKSTR = "RoleTankStr"
local ROLETANKSTR1 = "RoleTankStr1H"
local ROLETANKSTR2 = "RoleTankStr2H"
local ROLECASTHEAL = "RoleCasterHealer" -- a.k.a. Intellect user
local ROLECASTMACE = "RoleCasterMace"

local CLOAK = "Cloak"

local TokensWoD = {

-- T17
        [119305] = { -- Chest of the Iron Conqueror
                [2] = { -- PALADIN
                        115566, -- Battleplate of Guiding Light
                },
                [5] = { -- PRIEST
                        115560, -- Soul Priest's Raiment
                },
                [9] = { -- WARLOCK
                        115588, -- Shadow Council's Robes
                },
        },
        [119318] = { -- Chest of the Iron Protector
                [1] = { -- WARRIOR
                        115582, -- Blackhand's Chestguard
                },
                [3] = { -- HUNTER
                        115548, -- Rylakstalker's Tunic
                },
                [7] = { -- SHAMAN
                        115577, -- Windspeaker's Tunic
                },
                [10] = { -- MONK
                        115558, -- Vest of the Somber Gaze
                },
        },
        [119315] = { -- Chest of the Iron Vanquisher
                [4] = { -- ROGUE
                        115570, -- Poisoner's Tunic
                },
                [6] = { -- DEATHKNIGHT
                        115537, -- Ogreskull Boneplate Breastplate
                },
                [8] = { -- MAGE
                        115550, -- Arcanoshatter Robes
                },
                [11] = { -- DRUID
                        115540, -- Living Wood Raiment
                },
        },
        [119306] = { -- Gauntlets of the Iron Conqueror
                [2] = { -- PALADIN
                        115567, -- Gauntlets of Guiding Light
                },
                [5] = { -- PRIEST
                        115562, -- Soul Priest's Gloves
                },
                [9] = { -- WARLOCK
                        115585, -- Shadow Council's Gloves
                },
        },
        [119319] = { -- Gauntlets of the Iron Protector
                [1] = { -- WARRIOR
                        115583, -- Blackhand's Handguards
                },
                [3] = { -- HUNTER
                        115549, -- Rylakstalker's Gloves
                },
                [7] = { -- SHAMAN
                        115578, -- Windspeaker's Handwraps
                },
                [10] = { -- MONK
                        115555, -- Handwraps of the Somber Gaze
                },
        },
        [119311] = { -- Gauntlets of the Iron Vanquisher
                [4] = { -- ROGUE
                        115571, -- Poisoner's Gloves
                },
                [6] = { -- DEATHKNIGHT
                        115538, -- Ogreskull Boneplate Gauntlets
                },
                [8] = { -- MAGE
                        115552, -- Arcanoshatter Gloves
                },
                [11] = { -- DRUID
                        115541, -- Living Wood Grips
                },
        },
        [119308] = { -- Helm of the Iron Conqueror
                [2] = { -- PALADIN
                        115568, -- Helmet of Guiding Light
                },
                [5] = { -- PRIEST
                        115563, -- Soul Priest's Hood
                },
                [9] = { -- WARLOCK
                        115586, -- Shadow Council's Hood
                },
        },
        [119321] = { -- Helm of the Iron Protector
                [1] = { -- WARRIOR
                        115584, -- Blackhand's Faceguard
                },
                [3] = { -- HUNTER
                        115545, -- Rylakstalker's Headguard
                },
                [7] = { -- SHAMAN
                        115579, -- Windspeaker's Faceguard
                },
                [10] = { -- MONK
                        115556, -- Helm of the Somber Gaze
                },
        },
        [119312] = { -- Helm of the Iron Vanquisher
                [4] = { -- ROGUE
                        115572, -- Poisoner's Helmet
                },
                [6] = { -- DEATHKNIGHT
                        115539, -- Ogreskull Boneplate Greathelm
                },
                [8] = { -- MAGE
                        115553, -- Arcanoshatter Hood
                },
                [11] = { -- DRUID
                        115542, -- Living Wood Headpiece
                },
        },
        [119307] = { -- Leggings of the Iron Conqueror
                [2] = { -- PALADIN
                        115569, -- Legplates of Guiding Light
                },
                [5] = { -- PRIEST
                        115564, -- Soul Priest's Leggings
                },
                [9] = { -- WARLOCK
                        115587, -- Shadow Council's Leggings
                },
        },
        [119320] = { -- Leggings of the Iron Protector
                [1] = { -- WARRIOR
                        115580, -- Blackhand's Legguards
                },
                [3] = { -- HUNTER
                        115546, -- Rylakstalker's Legguards
                },
                [7] = { -- SHAMAN
                        115575, -- Windspeaker's Legwraps
                },
                [10] = { -- MONK
                        115557, -- Legwraps of the Somber Gaze
                },
        },
        [119313] = { -- Leggings of the Iron Vanquisher
                [4] = { -- ROGUE
                        115573, -- Poisoner's Legguards
                },
                [6] = { -- DEATHKNIGHT
                        115535, -- Ogreskull Boneplate Greaves
                },
                [8] = { -- MAGE
                        115554, -- Arcanoshatter Leggings
                },
                [11] = { -- DRUID
                        115543, -- Living Wood Legguards
                },
        },
        [119309] = { -- Shoulders of the Iron Conqueror
                [2] = { -- PALADIN
                        115565, -- Pauldrons of Guiding Light
                },
                [5] = { -- PRIEST
                        115561, -- Soul Priest's Shoulderguards
                },
                [9] = { -- WARLOCK
                        115589, -- Shadow Council's Mantle
                },
        },
        [119322] = { -- Shoulders of the Iron Protector
                [1] = { -- WARRIOR
                        115581, -- Blackhand's Shoulderguards
                },
                [3] = { -- HUNTER
                        115547, -- Rylakstalker's Spaulders
                },
                [7] = { -- SHAMAN
                        115576, -- Windspeaker's Mantle
                },
                [10] = { -- MONK
                        115559, -- Mantle of the Somber Gaze
                },
        },
        [119314] = { -- Shoulders of the Iron Vanquisher
                [4] = { -- ROGUE
                        115574, -- Poisoner's Spaulders
                },
                [6] = { -- DEATHKNIGHT
                        115536, -- Ogreskull Boneplate Pauldrons
                },
                [8] = { -- MAGE
                        115551, -- Arcanoshatter Mantle
                },
                [11] = { -- DRUID
                        115544, -- Living Wood Spaulders
                },
        },

-- T18
        [127953] = { -- Chest of Hellfire's Conqueror
                [2] = { -- PALADIN
                        124318, -- Cuirass of the Ceaseless Vigil
                },
                [5] = { -- PRIEST
                        124172, -- Pious Raiment
                },
                [9] = { -- WARLOCK
                        124173, -- Deathrattle Robe
                },
        },
        [127963] = { -- Chest of Hellfire's Protector
                [1] = { -- WARRIOR
                        124319, -- Breastplate of Iron Wrath
                },
                [3] = { -- HUNTER
                        124284, -- Hauberk of the Savage Hunt
                },
                [7] = { -- SHAMAN
                        124303, -- Robe of the Living Mountain
                },
                [10] = { -- MONK
                        124247, -- Robe of the Hurricane's Eye
                },
        },
        [127962] = { -- Chest of Hellfire's Vanquisher
                [4] = { -- ROGUE
                        124248, -- Felblade Chestguard
                },
                [6] = { -- DEATHKNIGHT
                        124317, -- Demongaze Chestplate
                },
                [8] = { -- MAGE
                        124171, -- Robe of the Arcanic Conclave
                },
                [11] = { -- DRUID
                        124246, -- Oathclaw Vestment
                },
        },
        [127954] = { -- Gauntlets of Hellfire's Conqueror
                [2] = { -- PALADIN
                        124328, -- Gauntlets of the Ceaseless Vigil
                },
                [5] = { -- PRIEST
                        124155, -- Pious Handwraps
                },
                [9] = { -- WARLOCK
                        124156, -- Deathrattle Gloves
                },
        },
        [127964] = { -- Gauntlets of Hellfire's Protector
                [1] = { -- WARRIOR
                        124329, -- Gauntlets of Iron Wrath
                },
                [3] = { -- HUNTER
                        124292, -- Gloves of the Savage Hunt
                },
                [7] = { -- SHAMAN
                        124293, -- Gauntlets of the Living Mountain
                },
                [10] = { -- MONK
                        124256, -- Fistwraps of the Hurricane's Eye
                },
        },
        [127958] = { -- Gauntlets of Hellfire's Vanquisher
                [4] = { -- ROGUE
                        124257, -- Felblade Gloves
                },
                [6] = { -- DEATHKNIGHT
                        124327, -- Demongaze Gauntlets
                },
                [8] = { -- MAGE
                        124154, -- Gloves of the Arcanic Conclave
                },
                [11] = { -- DRUID
                        124255, -- Oathclaw Gauntlets
                },
        },
        [127956] = { -- Helm of Hellfire's Conqueror
                [2] = { -- PALADIN
                        124333, -- Helm of the Ceaseless Vigil
                },
                [5] = { -- PRIEST
                        124161, -- Pious Cowl
                },
                [9] = { -- WARLOCK
                        124162, -- Deathrattle Mask
                },
        },
        [127966] = { -- Helm of Hellfire's Protector
                [1] = { -- WARRIOR
                        124334, -- Faceguard of Iron Wrath
                },
                [3] = { -- HUNTER
                        124296, -- Hood of the Savage Hunt
                },
                [7] = { -- SHAMAN
                        124297, -- Crown of the Living Mountain
                },
                [10] = { -- MONK
                        124262, -- Mask of the Hurricane's Eye
                },
        },
        [127959] = { -- Helm of Hellfire's Vanquisher
                [4] = { -- ROGUE
                        124263, -- Felblade Hood
                },
                [6] = { -- DEATHKNIGHT
                        124332, -- Demongaze Helm
                },
                [8] = { -- MAGE
                        124160, -- Cowl of the Arcanic Conclave
                },
                [11] = { -- DRUID
                        124261, -- Oathclaw Helm
                },
        },
        [127955] = { -- Leggings of Hellfire's Conqueror
                [2] = { -- PALADIN
                        124339, -- Greaves of the Ceaseless Vigil
                },
                [5] = { -- PRIEST
                        124166, -- Pious Leggings
                },
                [9] = { -- WARLOCK
                        124167, -- Deathrattle Leggings
                },
        },
        [127965] = { -- Leggings of Hellfire's Protector
                [1] = { -- WARRIOR
                        124340, -- Legplates of Iron Wrath
                },
                [3] = { -- HUNTER
                        124301, -- Leggings of the Savage Hunt
                },
                [7] = { -- SHAMAN
                        124302, -- Leggings of the Living Mountain
                },
                [10] = { -- MONK
                        124268, -- Legwraps of the Hurricane's Eye
                },
        },
        [127960] = { -- Leggings of Hellfire's Vanquisher
                [4] = { -- ROGUE
                        124269, -- Felblade Leggings
                },
                [6] = { -- DEATHKNIGHT
                        124338, -- Demongaze Legplates
                },
                [8] = { -- MAGE
                        124165, -- Pantaloons of the Arcanic Conclave
                },
                [11] = { -- DRUID
                        124267, -- Oathclaw Leggings
                },
        },
        [127957] = { -- Shoulders of Hellfire's Conqueror
                [2] = { -- PALADIN
                        124345, -- Shoulderplates of the Ceaseless Vigil
                },
                [5] = { -- PRIEST
                        124178, -- Pious Mantle
                },
                [9] = { -- WARLOCK
                        124179, -- Deathrattle Shoulderpads
                },
        },
        [127967] = { -- Shoulders of Hellfire's Protector
                [1] = { -- WARRIOR
                        124346, -- Pauldrons of Iron Wrath
                },
                [3] = { -- HUNTER
                        124307, -- Pauldrons of the Savage Hunt
                },
                [7] = { -- SHAMAN
                        124308, -- Pauldrons of the Living Mountain
                },
                [10] = { -- MONK
                        124273, -- Mantle of the Hurricane's Eye
                },
        },
        [127961] = { -- Shoulders of Hellfire's Vanquisher
                [4] = { -- ROGUE
                        124274, -- Felblade Spaulders
                },
                [6] = { -- DEATHKNIGHT
                        124344, -- Demongaze Pauldrons
                },
                [8] = { -- MAGE
                        124177, -- Mantle of the Arcanic Conclave
                },
                [11] = { -- DRUID
                        124272, -- Oathclaw Mantle
                },
        },


-- Dwarven Bunker / War Mill Transmogs
        [113822] = {
                [CLOTH] = {
                        113797, -- Shadowmoon Sash
                },
                [LEATHER] = {
                        113789, -- Thunderlord Girdle
                },
                [MAIL] = {
                        113813, -- Warsong Cord
                },
                [PLATE] = {
                        113805, -- Blackrock Girth
                },
        },
        [113821] = {
                [CLOTH] = {
                        113801, -- Shadowmoon Cowl
                },
                [LEATHER] = {
                        113793, -- Thunderlord Helm
                },
                [MAIL] = {
                        113817, -- Warsong Hood
                },
                [PLATE] = {
                        113809, -- Blackrock Greathelm
                },
        },
        [113823] = {
                [CLOTH] = {
                        113803, -- Shadowmoon Shoulderguards
                },
                [LEATHER] = {
                        113795, -- Thunderlord Shoulderguards
                },
                [MAIL] = {
                        113819, -- Warsong Spaulders
                },
                [PLATE] = {
                        113811, -- Blackrock Pauldrons
                },
        },


}

-- Org/SW Cosmetics (also add Cosmetic category)
if UnitFactionGroup("player") == "Horde" then

         -- Orgrimmar set has no helm

         TokensWoD[113822][COSMETIC] = {
                        118369, -- Orgrimmar Belt
                }

         TokensWoD[113823][COSMETIC] = {
                        118366, -- Orgrimmar Spaulders
                }

else

         TokensWoD[113821][COSMETIC] = {
                        117406, -- Stormwind Helm
                }

         TokensWoD[113822][COSMETIC] = {
                        117410, -- Stormwind Belt
                }

         TokensWoD[113823][COSMETIC] = {
                        117407, -- Stormwind Shoulderguards
                }


end


for k,v in pairs(TokensWoD) do

         if k ~= 113821 and k ~= 113822 and k ~= 113823 then -- set note for the Tier Tokens, but not the DB/WM Transmogs
                  v["note"] = "turns into:"
         end

         TokenSplainerTokens[k] = v

end