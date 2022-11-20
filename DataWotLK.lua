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

local TokensWotLK = {

-- T7
        [40618] = {
                [4] = { -- ROGUE
                        39561, -- Heroes' Bonescythe Helmet
                },
                [6] = { -- DEATHKNIGHT
                        39619, -- Heroes' Scourgeborne Helmet
                        39625, -- Heroes' Scourgeborne Faceguard
                },
                [8] = { -- MAGE
                        39491, -- Heroes' Frostfire Circlet
                },
                [11] = { -- DRUID
                        39553, -- Heroes' Dreamwalker Headguard
                        39531, -- Heroes' Dreamwalker Headpiece
                        39545, -- Heroes' Dreamwalker Cover
                },
        },
        [40612] = {
                [4] = { -- ROGUE
                        39558, -- Heroes' Bonescythe Breastplate
                },
                [6] = { -- DEATHKNIGHT
                        39617, -- Heroes' Scourgeborne Battleplate
                        39623, -- Heroes' Scourgeborne Chestguard
                },
                [8] = { -- MAGE
                        39492, -- Heroes' Frostfire Robe
                },
                [11] = { -- DRUID
                        39538, -- Heroes' Dreamwalker Robe
                        39547, -- Heroes' Dreamwalker Vestments
                        39554, -- Heroes' Dreamwalker Raiments
                },
        },
        [40621] = {
                [4] = { -- ROGUE
                        39564, -- Heroes' Bonescythe Legplates
                },
                [6] = { -- DEATHKNIGHT
                        39620, -- Heroes' Scourgeborne Legplates
                        39626, -- Heroes' Scourgeborne Legguards
                },
                [8] = { -- MAGE
                        39493, -- Heroes' Frostfire Leggings
                },
                [11] = { -- DRUID
                        39539, -- Heroes' Dreamwalker Leggings
                        39546, -- Heroes' Dreamwalker Trousers
                        39555, -- Heroes' Dreamwalker Legguards
                },
        },
        [40624] = {
                [4] = { -- ROGUE
                        39565, -- Heroes' Bonescythe Pauldrons
                },
                [6] = { -- DEATHKNIGHT
                        39621, -- Heroes' Scourgeborne Shoulderplates
                        39627, -- Heroes' Scourgeborne Pauldrons
                },
                [8] = { -- MAGE
                        39494, -- Heroes' Frostfire Shoulderpads
                },
                [11] = { -- DRUID
                        39542, -- Heroes' Dreamwalker Spaulders
                        39548, -- Heroes' Dreamwalker Mantle
                        39556, -- Heroes' Dreamwalker Shoulderpads
                },
        },
        [40615] = {
                [4] = { -- ROGUE
                        39560, -- Heroes' Bonescythe Gauntlets
                },
                [6] = { -- DEATHKNIGHT
                        39618, -- Heroes' Scourgeborne Gauntlets
                        39624, -- Heroes' Scourgeborne Handguards
                },
                [8] = { -- MAGE
                        39495, -- Heroes' Frostfire Gloves
                },
                [11] = { -- DRUID
                        39543, -- Heroes' Dreamwalker Handguards
                        39544, -- Heroes' Dreamwalker Gloves
                        39557, -- Heroes' Dreamwalker Handgrips
                },
        },
        [40616] = {
                [2] = { -- PALADIN
                        39628, -- Heroes' Redemption Headpiece
                        39635, -- Heroes' Redemption Helm
                        39640, -- Heroes' Redemption Faceguard
                },
                [5] = { -- PRIEST
                        39514, -- Heroes' Crown of Faith
                        39521, -- Heroes' Circlet of Faith
                },
                [9] = { -- WARLOCK
                        39496, -- Heroes' Plagueheart Circlet
                },
        },
        [40610] = {
                [2] = { -- PALADIN
                        39629, -- Heroes' Redemption Tunic
                        39633, -- Heroes' Redemption Chestpiece
                        39638, -- Heroes' Redemption Breastplate
                },
                [5] = { -- PRIEST
                        39515, -- Heroes' Robe of Faith
                        39523, -- Heroes' Raiments of Faith
                },
                [9] = { -- WARLOCK
                        39497, -- Heroes' Plagueheart Robe
                },
        },
        [40619] = {
                [2] = { -- PALADIN
                        39630, -- Heroes' Redemption Greaves
                        39636, -- Heroes' Redemption Legplates
                        39641, -- Heroes' Redemption Legguards
                },
                [5] = { -- PRIEST
                        39517, -- Heroes' Leggings of Faith
                        39528, -- Heroes' Pants of Faith
                },
                [9] = { -- WARLOCK
                        39498, -- Heroes' Plagueheart Leggings
                },
        },
        [40622] = {
                [2] = { -- PALADIN
                        39631, -- Heroes' Redemption Spaulders
                        39637, -- Heroes' Redemption Shoulderplates
                        39642, -- Heroes' Redemption Shoulderguards
                },
                [5] = { -- PRIEST
                        39518, -- Heroes' Shoulderpads of Faith
                        39529, -- Heroes' Mantle of Faith
                },
                [9] = { -- WARLOCK
                        39499, -- Heroes' Plagueheart Shoulderpads
                },
        },
        [40613] = {
                [2] = { -- PALADIN
                        39632, -- Heroes' Redemption Gloves
                        39634, -- Heroes' Redemption Gauntlets
                        39639, -- Heroes' Redemption Handguards
                },
                [5] = { -- PRIEST
                        39519, -- Heroes' Gloves of Faith
                        39530, -- Heroes' Handwraps of Faith
                },
                [9] = { -- WARLOCK
                        39500, -- Heroes' Plagueheart Gloves
                },
        },
        [40617] = {
                [1] = { -- WARRIOR
                        39605, -- Heroes' Dreadnaught Helmet
                        39610, -- Heroes' Dreadnaught Greathelm
                },
                [3] = { -- HUNTER
                        39578, -- Heroes' Cryptstalker Headpiece
                },
                [7] = { -- SHAMAN
                        39583, -- Heroes' Earthshatter Headpiece
                        39594, -- Heroes' Earthshatter Helm
                        39602, -- Heroes' Earthshatter Faceguard
                },
        },
        [40611] = {
                [1] = { -- WARRIOR
                        39606, -- Heroes' Dreadnaught Battleplate
                        39611, -- Heroes' Dreadnaught Breastplate
                },
                [3] = { -- HUNTER
                        39579, -- Heroes' Cryptstalker Tunic
                },
                [7] = { -- SHAMAN
                        39588, -- Heroes' Earthshatter Tunic
                        39592, -- Heroes' Earthshatter Hauberk
                        39597, -- Heroes' Earthshatter Chestguard
                },
        },
        [40620] = {
                [1] = { -- WARRIOR
                        39607, -- Heroes' Dreadnaught Legplates
                        39612, -- Heroes' Dreadnaught Legguards
                },
                [3] = { -- HUNTER
                        39580, -- Heroes' Cryptstalker Legguards
                },
                [7] = { -- SHAMAN
                        39589, -- Heroes' Earthshatter Legguards
                        39595, -- Heroes' Earthshatter Kilt
                        39603, -- Heroes' Earthshatter War-Kilt
                },
        },
        [40623] = {
                [1] = { -- WARRIOR
                        39608, -- Heroes' Dreadnaught Shoulderplates
                        39613, -- Heroes' Dreadnaught Pauldrons
                },
                [3] = { -- HUNTER
                        39581, -- Heroes' Cryptstalker Spaulders
                },
                [7] = { -- SHAMAN
                        39590, -- Heroes' Earthshatter Spaulders
                        39596, -- Heroes' Earthshatter Shoulderpads
                        39604, -- Heroes' Earthshatter Shoulderguards
                },
        },
        [40614] = {
                [1] = { -- WARRIOR
                        39609, -- Heroes' Dreadnaught Gauntlets
                        39622, -- Heroes' Dreadnaught Handguards
                },
                [3] = { -- HUNTER
                        39582, -- Heroes' Cryptstalker Handguards
                },
                [7] = { -- SHAMAN
                        39591, -- Heroes' Earthshatter Handguards
                        39593, -- Heroes' Earthshatter Gloves
                        39601, -- Heroes' Earthshatter Grips
                },
        },
        [40630] = {
                [4] = { -- ROGUE
                        40496, -- Valorous Bonescythe Gauntlets
                },
                [6] = { -- DEATHKNIGHT
                        40552, -- Valorous Scourgeborne Gauntlets
                        40563, -- Valorous Scourgeborne Handguards
                },
                [8] = { -- MAGE
                        40415, -- Valorous Frostfire Gloves
                },
                [11] = { -- DRUID
                        40460, -- Valorous Dreamwalker Handguards
                        40466, -- Valorous Dreamwalker Gloves
                        40472, -- Valorous Dreamwalker Handgrips
                },
        },
        [40633] = {
                [4] = { -- ROGUE
                        40499, -- Valorous Bonescythe Helmet
                },
                [6] = { -- DEATHKNIGHT
                        40554, -- Valorous Scourgeborne Helmet
                        40565, -- Valorous Scourgeborne Faceguard
                },
                [8] = { -- MAGE
                        40416, -- Valorous Frostfire Circlet
                },
                [11] = { -- DRUID
                        40461, -- Valorous Dreamwalker Headpiece
                        40467, -- Valorous Dreamwalker Cover
                        40473, -- Valorous Dreamwalker Headguard
                },
        },
        [40636] = {
                [4] = { -- ROGUE
                        40500, -- Valorous Bonescythe Legplates
                },
                [6] = { -- DEATHKNIGHT
                        40556, -- Valorous Scourgeborne Legplates
                        40567, -- Valorous Scourgeborne Legguards
                },
                [8] = { -- MAGE
                        40417, -- Valorous Frostfire Leggings
                },
                [11] = { -- DRUID
                        40462, -- Valorous Dreamwalker Leggings
                        40468, -- Valorous Dreamwalker Trousers
                        40493, -- Valorous Dreamwalker Legguards
                },
        },
        [40627] = {
                [4] = { -- ROGUE
                        40495, -- Valorous Bonescythe Breastplate
                },
                [6] = { -- DEATHKNIGHT
                        40550, -- Valorous Scourgeborne Battleplate
                        40559, -- Valorous Scourgeborne Chestguard
                },
                [8] = { -- MAGE
                        40418, -- Valorous Frostfire Robe
                },
                [11] = { -- DRUID
                        40463, -- Valorous Dreamwalker Robe
                        40469, -- Valorous Dreamwalker Vestments
                        40471, -- Valorous Dreamwalker Raiments
                },
        },
        [40639] = {
                [4] = { -- ROGUE
                        40502, -- Valorous Bonescythe Pauldrons
                },
                [6] = { -- DEATHKNIGHT
                        40557, -- Valorous Scourgeborne Shoulderplates
                        40568, -- Valorous Scourgeborne Pauldrons
                },
                [8] = { -- MAGE
                        40419, -- Valorous Frostfire Shoulderpads
                },
                [11] = { -- DRUID
                        40465, -- Valorous Dreamwalker Spaulders
                        40470, -- Valorous Dreamwalker Mantle
                        40494, -- Valorous Dreamwalker Shoulderpads
                },
        },
        [40628] = {
                [2] = { -- PALADIN
                        40570, -- Valorous Redemption Gloves
                        40575, -- Valorous Redemption Gauntlets
                        40580, -- Valorous Redemption Handguards
                },
                [5] = { -- PRIEST
                        40445, -- Valorous Gloves of Faith
                        40454, -- Valorous Handwraps of Faith
                },
                [9] = { -- WARLOCK
                        40420, -- Valorous Plagueheart Gloves
                },
        },
        [40631] = {
                [2] = { -- PALADIN
                        40571, -- Valorous Redemption Headpiece
                        40576, -- Valorous Redemption Helm
                        40581, -- Valorous Redemption Faceguard
                },
                [5] = { -- PRIEST
                        40447, -- Valorous Crown of Faith
                        40456, -- Valorous Circlet of Faith
                },
                [9] = { -- WARLOCK
                        40421, -- Valorous Plagueheart Circlet
                },
        },
        [40634] = {
                [2] = { -- PALADIN
                        40572, -- Valorous Redemption Greaves
                        40577, -- Valorous Redemption Legplates
                        40583, -- Valorous Redemption Legguards
                },
                [5] = { -- PRIEST
                        40448, -- Valorous Leggings of Faith
                        40457, -- Valorous Pants of Faith
                },
                [9] = { -- WARLOCK
                        40422, -- Valorous Plagueheart Leggings
                },
        },
        [40625] = {
                [2] = { -- PALADIN
                        40569, -- Valorous Redemption Tunic
                        40574, -- Valorous Redemption Chestpiece
                        40579, -- Valorous Redemption Breastplate
                },
                [5] = { -- PRIEST
                        40449, -- Valorous Robe of Faith
                        40458, -- Valorous Raiments of Faith
                },
                [9] = { -- WARLOCK
                        40423, -- Valorous Plagueheart Robe
                },
        },
        [40637] = {
                [2] = { -- PALADIN
                        40573, -- Valorous Redemption Spaulders
                        40578, -- Valorous Redemption Shoulderplates
                        40584, -- Valorous Redemption Shoulderguards
                },
                [5] = { -- PRIEST
                        40450, -- Valorous Shoulderpads of Faith
                        40459, -- Valorous Mantle of Faith
                },
                [9] = { -- WARLOCK
                        40424, -- Valorous Plagueheart Shoulderpads
                },
        },
        [40626] = {
                [1] = { -- WARRIOR
                        40525, -- Valorous Dreadnaught Battleplate
                        40544, -- Valorous Dreadnaught Breastplate
                },
                [3] = { -- HUNTER
                        40503, -- Valorous Cryptstalker Tunic
                },
                [7] = { -- SHAMAN
                        40508, -- Valorous Earthshatter Tunic
                        40514, -- Valorous Earthshatter Hauberk
                        40523, -- Valorous Earthshatter Chestguard
                },
        },
        [40629] = {
                [1] = { -- WARRIOR
                        40527, -- Valorous Dreadnaught Gauntlets
                        40545, -- Valorous Dreadnaught Handguards
                },
                [3] = { -- HUNTER
                        40504, -- Valorous Cryptstalker Handguards
                },
                [7] = { -- SHAMAN
                        40509, -- Valorous Earthshatter Handguards
                        40515, -- Valorous Earthshatter Gloves
                        40520, -- Valorous Earthshatter Grips
                },
        },
        [40632] = {
                [1] = { -- WARRIOR
                        40528, -- Valorous Dreadnaught Helmet
                        40546, -- Valorous Dreadnaught Greathelm
                },
                [3] = { -- HUNTER
                        40505, -- Valorous Cryptstalker Headpiece
                },
                [7] = { -- SHAMAN
                        40510, -- Valorous Earthshatter Headpiece
                        40516, -- Valorous Earthshatter Helm
                        40521, -- Valorous Earthshatter Faceguard
                },
        },
        [40635] = {
                [1] = { -- WARRIOR
                        40529, -- Valorous Dreadnaught Legplates
                        40547, -- Valorous Dreadnaught Legguards
                },
                [3] = { -- HUNTER
                        40506, -- Valorous Cryptstalker Legguards
                },
                [7] = { -- SHAMAN
                        40512, -- Valorous Earthshatter Legguards
                        40517, -- Valorous Earthshatter Kilt
                        40522, -- Valorous Earthshatter War-Kilt
                },
        },
        [40638] = {
                [1] = { -- WARRIOR
                        40530, -- Valorous Dreadnaught Shoulderplates
                        40548, -- Valorous Dreadnaught Pauldrons
                },
                [3] = { -- HUNTER
                        40507, -- Valorous Cryptstalker Spaulders
                },
                [7] = { -- SHAMAN
                        40513, -- Valorous Earthshatter Spaulders
                        40518, -- Valorous Earthshatter Shoulderpads
                        40524, -- Valorous Earthshatter Shoulderguards
                },
        },

        [45637] = {
                [4] = { -- ROGUE
                        45396, -- Valorous Terrorblade Breastplate
                },
                [6] = { -- DEATHKNIGHT
                        45335, -- Valorous Darkruned Chestguard
                        45340, -- Valorous Darkruned Battleplate
                },
                [8] = { -- MAGE
                        45368, -- Valorous Kirin Tor Tunic
                },
                [11] = { -- DRUID
                        45348, -- Valorous Nightsong Robe
                        45354, -- Valorous Nightsong Vestments
                        45358, -- Valorous Nightsong Raiments
                },
        },
        [45649] = {
                [4] = { -- ROGUE
                        45398, -- Valorous Terrorblade Helmet
                },
                [6] = { -- DEATHKNIGHT
                        45336, -- Valorous Darkruned Faceguard
                        45342, -- Valorous Darkruned Helmet
                },
                [8] = { -- MAGE
                        45365, -- Valorous Kirin Tor Hood
                },
                [11] = { -- DRUID
                        45346, -- Valorous Nightsong Headpiece
                        45356, -- Valorous Nightsong Headguard
                        46313, -- Valorous Nightsong Cover
                },
        },
        [45646] = {
                [4] = { -- ROGUE
                        45397, -- Valorous Terrorblade Gauntlets
                },
                [6] = { -- DEATHKNIGHT
                        45337, -- Valorous Darkruned Handguards
                        45341, -- Valorous Darkruned Gauntlets
                },
                [8] = { -- MAGE
                        46131, -- Valorous Kirin Tor Gauntlets
                },
                [11] = { -- DRUID
                        45345, -- Valorous Nightsong Handguards
                        45351, -- Valorous Nightsong Gloves
                        45355, -- Valorous Nightsong Handgrips
                },
        },
        [45652] = {
                [4] = { -- ROGUE
                        45399, -- Valorous Terrorblade Legplates
                },
                [6] = { -- DEATHKNIGHT
                        45338, -- Valorous Darkruned Legguards
                        45343, -- Valorous Darkruned Legplates
                },
                [8] = { -- MAGE
                        45367, -- Valorous Kirin Tor Leggings
                },
                [11] = { -- DRUID
                        45347, -- Valorous Nightsong Leggings
                        45353, -- Valorous Nightsong Trousers
                        45357, -- Valorous Nightsong Legguards
                },
        },
        [45661] = {
                [4] = { -- ROGUE
                        45400, -- Valorous Terrorblade Pauldrons
                },
                [6] = { -- DEATHKNIGHT
                        45339, -- Valorous Darkruned Pauldrons
                        45344, -- Valorous Darkruned Shoulderplates
                },
                [8] = { -- MAGE
                        45369, -- Valorous Kirin Tor Shoulderpads
                },
                [11] = { -- DRUID
                        45349, -- Valorous Nightsong Spaulders
                        45352, -- Valorous Nightsong Mantle
                        45359, -- Valorous Nightsong Shoulderpads
                },
        },
        [45645] = {
                [1] = { -- WARRIOR
                        45426, -- Valorous Siegebreaker Handguards
                        45430, -- Valorous Siegebreaker Gauntlets
                },
                [3] = { -- HUNTER
                        45360, -- Valorous Scourgestalker Handguards
                },
                [7] = { -- SHAMAN
                        45401, -- Valorous Worldbreaker Handguards
                        45406, -- Valorous Worldbreaker Gloves
                        45414, -- Valorous Worldbreaker Grips
                },
        },
        [45648] = {
                [1] = { -- WARRIOR
                        45425, -- Valorous Siegebreaker Greathelm
                        45431, -- Valorous Siegebreaker Helmet
                },
                [3] = { -- HUNTER
                        45361, -- Valorous Scourgestalker Headpiece
                },
                [7] = { -- SHAMAN
                        45402, -- Valorous Worldbreaker Headpiece
                        45408, -- Valorous Worldbreaker Helm
                        45412, -- Valorous Worldbreaker Faceguard
                },
        },
        [45651] = {
                [1] = { -- WARRIOR
                        45427, -- Valorous Siegebreaker Legguards
                        45432, -- Valorous Siegebreaker Legplates
                },
                [3] = { -- HUNTER
                        45362, -- Valorous Scourgestalker Legguards
                },
                [7] = { -- SHAMAN
                        45403, -- Valorous Worldbreaker Legguards
                        45409, -- Valorous Worldbreaker Kilt
                        45416, -- Valorous Worldbreaker War-Kilt
                },
        },
        [45660] = {
                [1] = { -- WARRIOR
                        45428, -- Valorous Siegebreaker Pauldrons
                        45433, -- Valorous Siegebreaker Shoulderplates
                },
                [3] = { -- HUNTER
                        45363, -- Valorous Scourgestalker Spaulders
                },
                [7] = { -- SHAMAN
                        45404, -- Valorous Worldbreaker Spaulders
                        45410, -- Valorous Worldbreaker Shoulderpads
                        45415, -- Valorous Worldbreaker Shoulderguards
                },
        },
        [45636] = {
                [1] = { -- WARRIOR
                        45424, -- Valorous Siegebreaker Breastplate
                        45429, -- Valorous Siegebreaker Battleplate
                },
                [3] = { -- HUNTER
                        45364, -- Valorous Scourgestalker Tunic
                },
                [7] = { -- SHAMAN
                        45405, -- Valorous Worldbreaker Tunic
                        45411, -- Valorous Worldbreaker Hauberk
                        45413, -- Valorous Worldbreaker Chestguard
                },
        },
        [45644] = {
                [2] = { -- PALADIN
                        45370, -- Valorous Aegis Gloves
                        45376, -- Valorous Aegis Gauntlets
                        45383, -- Valorous Aegis Handguards
                },
                [5] = { -- PRIEST
                        45387, -- Valorous Gloves of Sanctification
                        45392, -- Valorous Handwraps of Sanctification
                },
                [9] = { -- WARLOCK
                        45419, -- Valorous Deathbringer Gloves
                },
        },
        [45650] = {
                [2] = { -- PALADIN
                        45371, -- Valorous Aegis Greaves
                        45379, -- Valorous Aegis Legplates
                        45384, -- Valorous Aegis Legguards
                },
                [5] = { -- PRIEST
                        45388, -- Valorous Leggings of Sanctification
                        45394, -- Valorous Pants of Sanctification
                },
                [9] = { -- WARLOCK
                        45420, -- Valorous Deathbringer Leggings
                },
        },
        [45647] = {
                [2] = { -- PALADIN
                        45372, -- Valorous Aegis Headpiece
                        45377, -- Valorous Aegis Helm
                        45382, -- Valorous Aegis Faceguard
                },
                [5] = { -- PRIEST
                        45386, -- Valorous Cowl of Sanctification
                        45391, -- Valorous Circlet of Sanctification
                },
                [9] = { -- WARLOCK
                        45417, -- Valorous Deathbringer Hood
                },
        },
        [45659] = {
                [2] = { -- PALADIN
                        45373, -- Valorous Aegis Spaulders
                        45380, -- Valorous Aegis Shoulderplates
                        45385, -- Valorous Aegis Shoulderguards
                },
                [5] = { -- PRIEST
                        45390, -- Valorous Shoulderpads of Sanctification
                        45393, -- Valorous Mantle of Sanctification
                },
                [9] = { -- WARLOCK
                        45422, -- Valorous Deathbringer Shoulderpads
                },
        },
        [45635] = {
                [2] = { -- PALADIN
                        45374, -- Valorous Aegis Tunic
                        45375, -- Valorous Aegis Battleplate
                        45381, -- Valorous Aegis Breastplate
                },
                [5] = { -- PRIEST
                        45389, -- Valorous Robe of Sanctification
                        45395, -- Valorous Raiments of Sanctification
                },
                [9] = { -- WARLOCK
                        45421, -- Valorous Deathbringer Robe
                },
        },
        [45634] = {
                [4] = { -- ROGUE
                        46123, -- Conqueror's Terrorblade Breastplate
                },
                [6] = { -- DEATHKNIGHT
                        46111, -- Conqueror's Darkruned Battleplate
                        46118, -- Conqueror's Darkruned Chestguard
                },
                [8] = { -- MAGE
                        46130, -- Conqueror's Kirin Tor Tunic
                },
                [11] = { -- DRUID
                        46159, -- Conqueror's Nightsong Raiments
                        46186, -- Conqueror's Nightsong Robe
                        46194, -- Conqueror's Nightsong Vestments
                },
        },
        [45643] = {
                [4] = { -- ROGUE
                        46124, -- Conqueror's Terrorblade Gauntlets
                },
                [6] = { -- DEATHKNIGHT
                        46113, -- Conqueror's Darkruned Gauntlets
                        46119, -- Conqueror's Darkruned Handguards
                },
                [8] = { -- MAGE
                        46132, -- Conqueror's Kirin Tor Gauntlets
                },
                [11] = { -- DRUID
                        46158, -- Conqueror's Nightsong Handgrips
                        46183, -- Conqueror's Nightsong Handguards
                        46189, -- Conqueror's Nightsong Gloves
                },
        },
        [45640] = {
                [4] = { -- ROGUE
                        46125, -- Conqueror's Terrorblade Helmet
                },
                [6] = { -- DEATHKNIGHT
                        46115, -- Conqueror's Darkruned Helmet
                        46120, -- Conqueror's Darkruned Faceguard
                },
                [8] = { -- MAGE
                        46129, -- Conqueror's Kirin Tor Hood
                },
                [11] = { -- DRUID
                        46161, -- Conqueror's Nightsong Headguard
                        46184, -- Conqueror's Nightsong Headpiece
                        46191, -- Conqueror's Nightsong Cover
                },
        },
        [45655] = {
                [4] = { -- ROGUE
                        46126, -- Conqueror's Terrorblade Legplates
                },
                [6] = { -- DEATHKNIGHT
                        46116, -- Conqueror's Darkruned Legplates
                        46121, -- Conqueror's Darkruned Legguards
                },
                [8] = { -- MAGE
                        46133, -- Conqueror's Kirin Tor Leggings
                },
                [11] = { -- DRUID
                        46160, -- Conqueror's Nightsong Legguards
                        46185, -- Conqueror's Nightsong Leggings
                        46192, -- Conqueror's Nightsong Trousers
                },
        },
        [45658] = {
                [4] = { -- ROGUE
                        46127, -- Conqueror's Terrorblade Pauldrons
                },
                [6] = { -- DEATHKNIGHT
                        46117, -- Conqueror's Darkruned Shoulderplates
                        46122, -- Conqueror's Darkruned Pauldrons
                },
                [8] = { -- MAGE
                        46134, -- Conqueror's Kirin Tor Shoulderpads
                },
                [11] = { -- DRUID
                        46157, -- Conqueror's Nightsong Shoulderpads
                        46187, -- Conqueror's Nightsong Spaulders
                        46196, -- Conqueror's Nightsong Mantle
                },
        },
        [45641] = {
                [2] = { -- PALADIN
                        46155, -- Conqueror's Aegis Gauntlets
                        46174, -- Conqueror's Aegis Handguards
                        46179, -- Conqueror's Aegis Gloves
                },
                [5] = { -- PRIEST
                        46163, -- Conqueror's Handwraps of Sanctification
                        46188, -- Conqueror's Gloves of Sanctification
                },
                [9] = { -- WARLOCK
                        46135, -- Conqueror's Deathbringer Gloves
                },
        },
        [45656] = {
                [2] = { -- PALADIN
                        46152, -- Conqueror's Aegis Shoulderplates
                        46177, -- Conqueror's Aegis Shoulderguards
                        46182, -- Conqueror's Aegis Spaulders
                },
                [5] = { -- PRIEST
                        46165, -- Conqueror's Mantle of Sanctification
                        46190, -- Conqueror's Shoulderpads of Sanctification
                },
                [9] = { -- WARLOCK
                        46136, -- Conqueror's Deathbringer Shoulderpads
                },
        },
        [45632] = {
                [2] = { -- PALADIN
                        46154, -- Conqueror's Aegis Battleplate
                        46173, -- Conqueror's Aegis Breastplate
                        46178, -- Conqueror's Aegis Tunic
                },
                [5] = { -- PRIEST
                        46168, -- Conqueror's Raiments of Sanctification
                        46193, -- Conqueror's Robe of Sanctification
                },
                [9] = { -- WARLOCK
                        46137, -- Conqueror's Deathbringer Robe
                },
        },
        [45653] = {
                [2] = { -- PALADIN
                        46153, -- Conqueror's Aegis Legplates
                        46176, -- Conqueror's Aegis Legguards
                        46181, -- Conqueror's Aegis Greaves
                },
                [5] = { -- PRIEST
                        46170, -- Conqueror's Pants of Sanctification
                        46195, -- Conqueror's Leggings of Sanctification
                },
                [9] = { -- WARLOCK
                        46139, -- Conqueror's Deathbringer Leggings
                },
        },
        [45638] = {
                [2] = { -- PALADIN
                        46156, -- Conqueror's Aegis Helm
                        46175, -- Conqueror's Aegis Faceguard
                        46180, -- Conqueror's Aegis Headpiece
                },
                [5] = { -- PRIEST
                        46172, -- Conqueror's Circlet of Sanctification
                        46197, -- Conqueror's Cowl of Sanctification
                },
                [9] = { -- WARLOCK
                        46140, -- Conqueror's Deathbringer Hood
                },
        },
        [45633] = {
                [1] = { -- WARRIOR
                        46146, -- Conqueror's Siegebreaker Battleplate
                        46162, -- Conqueror's Siegebreaker Breastplate
                },
                [3] = { -- HUNTER
                        46141, -- Conqueror's Scourgestalker Tunic
                },
                [7] = { -- SHAMAN
                        46198, -- Conqueror's Worldbreaker Tunic
                        46205, -- Conqueror's Worldbreaker Chestguard
                        46206, -- Conqueror's Worldbreaker Hauberk
                },
        },
        [45642] = {
                [1] = { -- WARRIOR
                        46148, -- Conqueror's Siegebreaker Gauntlets
                        46164, -- Conqueror's Siegebreaker Handguards
                },
                [3] = { -- HUNTER
                        46142, -- Conqueror's Scourgestalker Handguards
                },
                [7] = { -- SHAMAN
                        46199, -- Conqueror's Worldbreaker Handguards
                        46200, -- Conqueror's Worldbreaker Grips
                        46207, -- Conqueror's Worldbreaker Gloves
                },
        },
        [45639] = {
                [1] = { -- WARRIOR
                        46151, -- Conqueror's Siegebreaker Helmet
                        46166, -- Conqueror's Siegebreaker Greathelm
                },
                [3] = { -- HUNTER
                        46143, -- Conqueror's Scourgestalker Headpiece
                },
                [7] = { -- SHAMAN
                        46201, -- Conqueror's Worldbreaker Headpiece
                        46209, -- Conqueror's Worldbreaker Helm
                        46212, -- Conqueror's Worldbreaker Faceguard
                },
        },
        [45654] = {
                [1] = { -- WARRIOR
                        46150, -- Conqueror's Siegebreaker Legplates
                        46169, -- Conqueror's Siegebreaker Legguards
                },
                [3] = { -- HUNTER
                        46144, -- Conqueror's Scourgestalker Legguards
                },
                [7] = { -- SHAMAN
                        46202, -- Conqueror's Worldbreaker Legguards
                        46208, -- Conqueror's Worldbreaker War-Kilt
                        46210, -- Conqueror's Worldbreaker Kilt
                },
        },
        [45657] = {
                [1] = { -- WARRIOR
                        46149, -- Conqueror's Siegebreaker Shoulderplates
                        46167, -- Conqueror's Siegebreaker Pauldrons
                },
                [3] = { -- HUNTER
                        46145, -- Conqueror's Scourgestalker Spaulders
                },
                [7] = { -- SHAMAN
                        46203, -- Conqueror's Worldbreaker Shoulderguards
                        46204, -- Conqueror's Worldbreaker Spaulders
                        46211, -- Conqueror's Worldbreaker Shoulderpads
                },
        },

-- T9: no need, no real tokens, especially not if you only want it for Transmog

-- T10, special cases
        [52025] = {
                [4] = { -- ROGUE
                        51185, -- Sanctified Shadowblade Pauldrons
                        51186, -- Sanctified Shadowblade Legplates
                        51187, -- Sanctified Shadowblade Helmet
                        51188, -- Sanctified Shadowblade Gauntlets
                        51189, -- Sanctified Shadowblade Breastplate
                },
                [6] = { -- DEATHKNIGHT
                        51125, -- Sanctified Scourgelord Shoulderplates
                        51126, -- Sanctified Scourgelord Legplates
                        51127, -- Sanctified Scourgelord Helmet
                        51128, -- Sanctified Scourgelord Gauntlets
                        51129, -- Sanctified Scourgelord Battleplate
                        51130, -- Sanctified Scourgelord Pauldrons
                        51131, -- Sanctified Scourgelord Legguards
                        51132, -- Sanctified Scourgelord Handguards
                        51133, -- Sanctified Scourgelord Faceguard
                        51134, -- Sanctified Scourgelord Chestguard
                },
                [8] = { -- MAGE
                        51155, -- Sanctified Bloodmage Shoulderpads
                        51156, -- Sanctified Bloodmage Robe
                        51157, -- Sanctified Bloodmage Leggings
                        51158, -- Sanctified Bloodmage Hood
                        51159, -- Sanctified Bloodmage Gloves
                },
                [11] = { -- DRUID
                        51135, -- Sanctified Lasherweave Pauldrons
                        51136, -- Sanctified Lasherweave Legplates
                        51137, -- Sanctified Lasherweave Helmet
                        51138, -- Sanctified Lasherweave Gauntlets
                        51139, -- Sanctified Lasherweave Robes
                        51140, -- Sanctified Lasherweave Shoulderpads
                        51141, -- Sanctified Lasherweave Raiment
                        51142, -- Sanctified Lasherweave Legguards
                        51143, -- Sanctified Lasherweave Headguard
                        51144, -- Sanctified Lasherweave Handgrips
                        51145, -- Sanctified Lasherweave Vestment
                        51146, -- Sanctified Lasherweave Trousers
                        51147, -- Sanctified Lasherweave Mantle
                        51148, -- Sanctified Lasherweave Gloves
                        51149, -- Sanctified Lasherweave Cover
                },
        },
        [50098] = {
                [6] = { -- DEATHKNIGHT
                        51125, -- Sanctified Scourgelord Shoulderplates
                },
        },
        [50097] = {
                [6] = { -- DEATHKNIGHT
                        51126, -- Sanctified Scourgelord Legplates
                },
        },
        [50096] = {
                [6] = { -- DEATHKNIGHT
                        51127, -- Sanctified Scourgelord Helmet
                },
        },
        [50095] = {
                [6] = { -- DEATHKNIGHT
                        51128, -- Sanctified Scourgelord Gauntlets
                },
        },
        [50094] = {
                [6] = { -- DEATHKNIGHT
                        51129, -- Sanctified Scourgelord Battleplate
                },
        },
        [50853] = {
                [6] = { -- DEATHKNIGHT
                        51130, -- Sanctified Scourgelord Pauldrons
                },
        },
        [50854] = {
                [6] = { -- DEATHKNIGHT
                        51131, -- Sanctified Scourgelord Legguards
                },
        },
        [50856] = {
                [6] = { -- DEATHKNIGHT
                        51132, -- Sanctified Scourgelord Handguards
                },
        },
        [50855] = {
                [6] = { -- DEATHKNIGHT
                        51133, -- Sanctified Scourgelord Faceguard
                },
        },
        [50857] = {
                [6] = { -- DEATHKNIGHT
                        51134, -- Sanctified Scourgelord Chestguard
                },
        },
        [50113] = {
                [11] = { -- DRUID
                        51135, -- Sanctified Lasherweave Pauldrons
                },
        },
        [50109] = {
                [11] = { -- DRUID
                        51136, -- Sanctified Lasherweave Legplates
                },
        },
        [50108] = {
                [11] = { -- DRUID
                        51137, -- Sanctified Lasherweave Helmet
                },
        },
        [50107] = {
                [11] = { -- DRUID
                        51138, -- Sanctified Lasherweave Gauntlets
                },
        },
        [50106] = {
                [11] = { -- DRUID
                        51139, -- Sanctified Lasherweave Robes
                },
        },
        [50824] = {
                [11] = { -- DRUID
                        51140, -- Sanctified Lasherweave Shoulderpads
                },
        },
        [50828] = {
                [11] = { -- DRUID
                        51141, -- Sanctified Lasherweave Raiment
                },
        },
        [50825] = {
                [11] = { -- DRUID
                        51142, -- Sanctified Lasherweave Legguards
                },
        },
        [50826] = {
                [11] = { -- DRUID
                        51143, -- Sanctified Lasherweave Headguard
                },
        },
        [50827] = {
                [11] = { -- DRUID
                        51144, -- Sanctified Lasherweave Handgrips
                },
        },
        [50823] = {
                [11] = { -- DRUID
                        51145, -- Sanctified Lasherweave Vestment
                },
        },
        [50820] = {
                [11] = { -- DRUID
                        51146, -- Sanctified Lasherweave Trousers
                },
        },
        [50819] = {
                [11] = { -- DRUID
                        51147, -- Sanctified Lasherweave Mantle
                },
        },
        [50822] = {
                [11] = { -- DRUID
                        51148, -- Sanctified Lasherweave Gloves
                },
        },
        [50821] = {
                [11] = { -- DRUID
                        51149, -- Sanctified Lasherweave Cover
                },
        },
        [52026] = {
                [1] = { -- WARRIOR
                        51210, -- Sanctified Ymirjar Lord's Shoulderplates
                        51211, -- Sanctified Ymirjar Lord's Legplates
                        51212, -- Sanctified Ymirjar Lord's Helmet
                        51213, -- Sanctified Ymirjar Lord's Gauntlets
                        51214, -- Sanctified Ymirjar Lord's Battleplate
                        51215, -- Sanctified Ymirjar Lord's Pauldrons
                        51216, -- Sanctified Ymirjar Lord's Legguards
                        51217, -- Sanctified Ymirjar Lord's Handguards
                        51218, -- Sanctified Ymirjar Lord's Greathelm
                        51219, -- Sanctified Ymirjar Lord's Breastplate
                },
                [3] = { -- HUNTER
                        51150, -- Sanctified Ahn'Kahar Blood Hunter's Tunic
                        51151, -- Sanctified Ahn'Kahar Blood Hunter's Spaulders
                        51152, -- Sanctified Ahn'Kahar Blood Hunter's Legguards
                        51153, -- Sanctified Ahn'Kahar Blood Hunter's Headpiece
                        51154, -- Sanctified Ahn'Kahar Blood Hunter's Handguards
                },
                [7] = { -- SHAMAN
                        51190, -- Sanctified Frost Witch's Tunic
                        51191, -- Sanctified Frost Witch's Handguards
                        51192, -- Sanctified Frost Witch's Headpiece
                        51193, -- Sanctified Frost Witch's Legguards
                        51194, -- Sanctified Frost Witch's Spaulders
                        51195, -- Sanctified Frost Witch's Chestguard
                        51196, -- Sanctified Frost Witch's Grips
                        51197, -- Sanctified Frost Witch's Faceguard
                        51198, -- Sanctified Frost Witch's War-Kilt
                        51199, -- Sanctified Frost Witch's Shoulderguards
                        51200, -- Sanctified Frost Witch's Hauberk
                        51201, -- Sanctified Frost Witch's Gloves
                        51202, -- Sanctified Frost Witch's Helm
                        51203, -- Sanctified Frost Witch's Kilt
                        51204, -- Sanctified Frost Witch's Shoulderpads
                },
        },
        [50118] = {
                [3] = { -- HUNTER
                        51150, -- Sanctified Ahn'Kahar Blood Hunter's Tunic
                },
        },
        [50117] = {
                [3] = { -- HUNTER
                        51151, -- Sanctified Ahn'Kahar Blood Hunter's Spaulders
                },
        },
        [50116] = {
                [3] = { -- HUNTER
                        51152, -- Sanctified Ahn'Kahar Blood Hunter's Legguards
                },
        },
        [50115] = {
                [3] = { -- HUNTER
                        51153, -- Sanctified Ahn'Kahar Blood Hunter's Headpiece
                },
        },
        [50114] = {
                [3] = { -- HUNTER
                        51154, -- Sanctified Ahn'Kahar Blood Hunter's Handguards
                },
        },
        [50279] = {
                [8] = { -- MAGE
                        51155, -- Sanctified Bloodmage Shoulderpads
                },
        },
        [50278] = {
                [8] = { -- MAGE
                        51156, -- Sanctified Bloodmage Robe
                },
        },
        [50277] = {
                [8] = { -- MAGE
                        51157, -- Sanctified Bloodmage Leggings
                },
        },
        [50276] = {
                [8] = { -- MAGE
                        51158, -- Sanctified Bloodmage Hood
                },
        },
        [50275] = {
                [8] = { -- MAGE
                        51159, -- Sanctified Bloodmage Gloves
                },
        },
        [52027] = {
                [2] = { -- PALADIN
                        51160, -- Sanctified Lightsworn Shoulderplates
                        51161, -- Sanctified Lightsworn Legplates
                        51162, -- Sanctified Lightsworn Helmet
                        51163, -- Sanctified Lightsworn Gauntlets
                        51164, -- Sanctified Lightsworn Battleplate
                        51165, -- Sanctified Lightsworn Tunic
                        51166, -- Sanctified Lightsworn Spaulders
                        51167, -- Sanctified Lightsworn Headpiece
                        51168, -- Sanctified Lightsworn Greaves
                        51169, -- Sanctified Lightsworn Gloves
                        51170, -- Sanctified Lightsworn Shoulderguards
                        51171, -- Sanctified Lightsworn Legguards
                        51172, -- Sanctified Lightsworn Handguards
                        51173, -- Sanctified Lightsworn Faceguard
                        51174, -- Sanctified Lightsworn Chestguard
                },
                [5] = { -- PRIEST
                        51175, -- Sanctified Crimson Acolyte Shoulderpads
                        51176, -- Sanctified Crimson Acolyte Robe
                        51177, -- Sanctified Crimson Acolyte Leggings
                        51178, -- Sanctified Crimson Acolyte Hood
                        51179, -- Sanctified Crimson Acolyte Gloves
                        51180, -- Sanctified Crimson Acolyte Raiments
                        51181, -- Sanctified Crimson Acolyte Pants
                        51182, -- Sanctified Crimson Acolyte Mantle
                        51183, -- Sanctified Crimson Acolyte Handwraps
                        51184, -- Sanctified Crimson Acolyte Cowl
                },
                [9] = { -- WARLOCK
                        51205, -- Sanctified Dark Coven Shoulderpads
                        51206, -- Sanctified Dark Coven Robe
                        51207, -- Sanctified Dark Coven Leggings
                        51208, -- Sanctified Dark Coven Hood
                        51209, -- Sanctified Dark Coven Gloves
                },
        },
        [50324] = {
                [2] = { -- PALADIN
                        51160, -- Sanctified Lightsworn Shoulderplates
                },
        },
        [50325] = {
                [2] = { -- PALADIN
                        51161, -- Sanctified Lightsworn Legplates
                },
        },
        [50326] = {
                [2] = { -- PALADIN
                        51162, -- Sanctified Lightsworn Helmet
                },
        },
        [50327] = {
                [2] = { -- PALADIN
                        51163, -- Sanctified Lightsworn Gauntlets
                },
        },
        [50328] = {
                [2] = { -- PALADIN
                        51164, -- Sanctified Lightsworn Battleplate
                },
        },
        [50869] = {
                [2] = { -- PALADIN
                        51165, -- Sanctified Lightsworn Tunic
                },
        },
        [50865] = {
                [2] = { -- PALADIN
                        51166, -- Sanctified Lightsworn Spaulders
                },
        },
        [50867] = {
                [2] = { -- PALADIN
                        51167, -- Sanctified Lightsworn Headpiece
                },
        },
        [50866] = {
                [2] = { -- PALADIN
                        51168, -- Sanctified Lightsworn Greaves
                },
        },
        [50868] = {
                [2] = { -- PALADIN
                        51169, -- Sanctified Lightsworn Gloves
                },
        },
        [50860] = {
                [2] = { -- PALADIN
                        51170, -- Sanctified Lightsworn Shoulderguards
                },
        },
        [50861] = {
                [2] = { -- PALADIN
                        51171, -- Sanctified Lightsworn Legguards
                },
        },
        [50863] = {
                [2] = { -- PALADIN
                        51172, -- Sanctified Lightsworn Handguards
                },
        },
        [50862] = {
                [2] = { -- PALADIN
                        51173, -- Sanctified Lightsworn Faceguard
                },
        },
        [50864] = {
                [2] = { -- PALADIN
                        51174, -- Sanctified Lightsworn Chestguard
                },
        },
        [50767] = {
                [5] = { -- PRIEST
                        51175, -- Sanctified Crimson Acolyte Shoulderpads
                },
        },
        [50768] = {
                [5] = { -- PRIEST
                        51176, -- Sanctified Crimson Acolyte Robe
                },
        },
        [50769] = {
                [5] = { -- PRIEST
                        51177, -- Sanctified Crimson Acolyte Leggings
                },
        },
        [50765] = {
                [5] = { -- PRIEST
                        51178, -- Sanctified Crimson Acolyte Hood
                },
        },
        [50766] = {
                [5] = { -- PRIEST
                        51179, -- Sanctified Crimson Acolyte Gloves
                },
        },
        [50394] = {
                [5] = { -- PRIEST
                        51180, -- Sanctified Crimson Acolyte Raiments
                },
        },
        [50393] = {
                [5] = { -- PRIEST
                        51181, -- Sanctified Crimson Acolyte Pants
                },
        },
        [50396] = {
                [5] = { -- PRIEST
                        51182, -- Sanctified Crimson Acolyte Mantle
                },
        },
        [50391] = {
                [5] = { -- PRIEST
                        51183, -- Sanctified Crimson Acolyte Handwraps
                },
        },
        [50392] = {
                [5] = { -- PRIEST
                        51184, -- Sanctified Crimson Acolyte Cowl
                },
        },
        [50105] = {
                [4] = { -- ROGUE
                        51185, -- Sanctified Shadowblade Pauldrons
                },
        },
        [50090] = {
                [4] = { -- ROGUE
                        51186, -- Sanctified Shadowblade Legplates
                },
        },
        [50089] = {
                [4] = { -- ROGUE
                        51187, -- Sanctified Shadowblade Helmet
                },
        },
        [50088] = {
                [4] = { -- ROGUE
                        51188, -- Sanctified Shadowblade Gauntlets
                },
        },
        [50087] = {
                [4] = { -- ROGUE
                        51189, -- Sanctified Shadowblade Breastplate
                },
        },
        [50835] = {
                [7] = { -- SHAMAN
                        51190, -- Sanctified Frost Witch's Tunic
                },
        },
        [50836] = {
                [7] = { -- SHAMAN
                        51191, -- Sanctified Frost Witch's Handguards
                },
        },
        [50837] = {
                [7] = { -- SHAMAN
                        51192, -- Sanctified Frost Witch's Headpiece
                },
        },
        [50838] = {
                [7] = { -- SHAMAN
                        51193, -- Sanctified Frost Witch's Legguards
                },
        },
        [50839] = {
                [7] = { -- SHAMAN
                        51194, -- Sanctified Frost Witch's Spaulders
                },
        },
        [50830] = {
                [7] = { -- SHAMAN
                        51195, -- Sanctified Frost Witch's Chestguard
                },
        },
        [50831] = {
                [7] = { -- SHAMAN
                        51196, -- Sanctified Frost Witch's Grips
                },
        },
        [50832] = {
                [7] = { -- SHAMAN
                        51197, -- Sanctified Frost Witch's Faceguard
                },
        },
        [50833] = {
                [7] = { -- SHAMAN
                        51198, -- Sanctified Frost Witch's War-Kilt
                },
        },
        [50834] = {
                [7] = { -- SHAMAN
                        51199, -- Sanctified Frost Witch's Shoulderguards
                },
        },
        [50841] = {
                [7] = { -- SHAMAN
                        51200, -- Sanctified Frost Witch's Hauberk
                },
        },
        [50842] = {
                [7] = { -- SHAMAN
                        51201, -- Sanctified Frost Witch's Gloves
                },
        },
        [50843] = {
                [7] = { -- SHAMAN
                        51202, -- Sanctified Frost Witch's Helm
                },
        },
        [50844] = {
                [7] = { -- SHAMAN
                        51203, -- Sanctified Frost Witch's Kilt
                },
        },
        [50845] = {
                [7] = { -- SHAMAN
                        51204, -- Sanctified Frost Witch's Shoulderpads
                },
        },
        [50244] = {
                [9] = { -- WARLOCK
                        51205, -- Sanctified Dark Coven Shoulderpads
                },
        },
        [50243] = {
                [9] = { -- WARLOCK
                        51206, -- Sanctified Dark Coven Robe
                },
        },
        [50242] = {
                [9] = { -- WARLOCK
                        51207, -- Sanctified Dark Coven Leggings
                },
        },
        [50241] = {
                [9] = { -- WARLOCK
                        51208, -- Sanctified Dark Coven Hood
                },
        },
        [50240] = {
                [9] = { -- WARLOCK
                        51209, -- Sanctified Dark Coven Gloves
                },
        },
        [50082] = {
                [1] = { -- WARRIOR
                        51210, -- Sanctified Ymirjar Lord's Shoulderplates
                },
        },
        [50081] = {
                [1] = { -- WARRIOR
                        51211, -- Sanctified Ymirjar Lord's Legplates
                },
        },
        [50080] = {
                [1] = { -- WARRIOR
                        51212, -- Sanctified Ymirjar Lord's Helmet
                },
        },
        [50079] = {
                [1] = { -- WARRIOR
                        51213, -- Sanctified Ymirjar Lord's Gauntlets
                },
        },
        [50078] = {
                [1] = { -- WARRIOR
                        51214, -- Sanctified Ymirjar Lord's Battleplate
                },
        },
        [50846] = {
                [1] = { -- WARRIOR
                        51215, -- Sanctified Ymirjar Lord's Pauldrons
                },
        },
        [50847] = {
                [1] = { -- WARRIOR
                        51216, -- Sanctified Ymirjar Lord's Legguards
                },
        },
        [50849] = {
                [1] = { -- WARRIOR
                        51217, -- Sanctified Ymirjar Lord's Handguards
                },
        },
        [50848] = {
                [1] = { -- WARRIOR
                        51218, -- Sanctified Ymirjar Lord's Greathelm
                },
        },
        [50850] = {
                [1] = { -- WARRIOR
                        51219, -- Sanctified Ymirjar Lord's Breastplate
                },
        },
        [52029] = {
                [1] = { -- WARRIOR
                        51220, -- Sanctified Ymirjar Lord's Breastplate, Heroic
                        51221, -- Sanctified Ymirjar Lord's Greathelm, Heroic
                        51222, -- Sanctified Ymirjar Lord's Handguards, Heroic
                        51223, -- Sanctified Ymirjar Lord's Legguards, Heroic
                        51224, -- Sanctified Ymirjar Lord's Pauldrons, Heroic
                        51225, -- Sanctified Ymirjar Lord's Battleplate, Heroic
                        51226, -- Sanctified Ymirjar Lord's Gauntlets, Heroic
                        51227, -- Sanctified Ymirjar Lord's Helmet, Heroic
                        51228, -- Sanctified Ymirjar Lord's Legplates, Heroic
                        51229, -- Sanctified Ymirjar Lord's Shoulderplates, Heroic
                },
                [3] = { -- HUNTER
                        51285, -- Sanctified Ahn'Kahar Blood Hunter's Handguards, Heroic
                        51286, -- Sanctified Ahn'Kahar Blood Hunter's Headpiece, Heroic
                        51287, -- Sanctified Ahn'Kahar Blood Hunter's Legguards, Heroic
                        51288, -- Sanctified Ahn'Kahar Blood Hunter's Spaulders, Heroic
                        51289, -- Sanctified Ahn'Kahar Blood Hunter's Tunic, Heroic
                },
                [7] = { -- SHAMAN
                        51235, -- Sanctified Frost Witch's Shoulderpads, Heroic
                        51236, -- Sanctified Frost Witch's Kilt, Heroic
                        51237, -- Sanctified Frost Witch's Helm, Heroic
                        51238, -- Sanctified Frost Witch's Gloves, Heroic
                        51239, -- Sanctified Frost Witch's Hauberk, Heroic
                        51240, -- Sanctified Frost Witch's Shoulderguards, Heroic
                        51241, -- Sanctified Frost Witch's War-Kilt, Heroic
                        51242, -- Sanctified Frost Witch's Faceguard, Heroic
                        51243, -- Sanctified Frost Witch's Grips, Heroic
                        51244, -- Sanctified Frost Witch's Chestguard, Heroic
                        51245, -- Sanctified Frost Witch's Spaulders, Heroic
                        51246, -- Sanctified Frost Witch's Legguards, Heroic
                        51247, -- Sanctified Frost Witch's Headpiece, Heroic
                        51248, -- Sanctified Frost Witch's Handguards, Heroic
                        51249, -- Sanctified Frost Witch's Tunic, Heroic
                },
        },
        [51219] = {
                [1] = { -- WARRIOR
                        51220, -- Sanctified Ymirjar Lord's Breastplate, Heroic
                },
        },
        [51218] = {
                [1] = { -- WARRIOR
                        51221, -- Sanctified Ymirjar Lord's Greathelm, Heroic
                },
        },
        [51217] = {
                [1] = { -- WARRIOR
                        51222, -- Sanctified Ymirjar Lord's Handguards, Heroic
                },
        },
        [51216] = {
                [1] = { -- WARRIOR
                        51223, -- Sanctified Ymirjar Lord's Legguards, Heroic
                },
        },
        [51215] = {
                [1] = { -- WARRIOR
                        51224, -- Sanctified Ymirjar Lord's Pauldrons, Heroic
                },
        },
        [51214] = {
                [1] = { -- WARRIOR
                        51225, -- Sanctified Ymirjar Lord's Battleplate, Heroic
                },
        },
        [51213] = {
                [1] = { -- WARRIOR
                        51226, -- Sanctified Ymirjar Lord's Gauntlets, Heroic
                },
        },
        [51212] = {
                [1] = { -- WARRIOR
                        51227, -- Sanctified Ymirjar Lord's Helmet, Heroic
                },
        },
        [51211] = {
                [1] = { -- WARRIOR
                        51228, -- Sanctified Ymirjar Lord's Legplates, Heroic
                },
        },
        [51210] = {
                [1] = { -- WARRIOR
                        51229, -- Sanctified Ymirjar Lord's Shoulderplates, Heroic
                },
        },
        [52030] = {
                [2] = { -- PALADIN
                        51265, -- Sanctified Lightsworn Chestguard, Heroic
                        51266, -- Sanctified Lightsworn Faceguard, Heroic
                        51267, -- Sanctified Lightsworn Handguards, Heroic
                        51268, -- Sanctified Lightsworn Legguards, Heroic
                        51269, -- Sanctified Lightsworn Shoulderguards, Heroic
                        51270, -- Sanctified Lightsworn Gloves, Heroic
                        51271, -- Sanctified Lightsworn Greaves, Heroic
                        51272, -- Sanctified Lightsworn Headpiece, Heroic
                        51273, -- Sanctified Lightsworn Spaulders, Heroic
                        51274, -- Sanctified Lightsworn Tunic, Heroic
                        51275, -- Sanctified Lightsworn Battleplate, Heroic
                        51276, -- Sanctified Lightsworn Gauntlets, Heroic
                        51277, -- Sanctified Lightsworn Helmet, Heroic
                        51278, -- Sanctified Lightsworn Legplates, Heroic
                        51279, -- Sanctified Lightsworn Shoulderplates, Heroic
                },
                [5] = { -- PRIEST
                        51255, -- Sanctified Crimson Acolyte Cowl, Heroic
                        51256, -- Sanctified Crimson Acolyte Handwraps, Heroic
                        51257, -- Sanctified Crimson Acolyte Mantle, Heroic
                        51258, -- Sanctified Crimson Acolyte Pants, Heroic
                        51259, -- Sanctified Crimson Acolyte Raiments, Heroic
                        51260, -- Sanctified Crimson Acolyte Gloves, Heroic
                        51261, -- Sanctified Crimson Acolyte Hood, Heroic
                        51262, -- Sanctified Crimson Acolyte Leggings, Heroic
                        51263, -- Sanctified Crimson Acolyte Robe, Heroic
                        51264, -- Sanctified Crimson Acolyte Shoulderpads, Heroic
                },
                [9] = { -- WARLOCK
                        51230, -- Sanctified Dark Coven Gloves, Heroic
                        51231, -- Sanctified Dark Coven Hood, Heroic
                        51232, -- Sanctified Dark Coven Leggings, Heroic
                        51233, -- Sanctified Dark Coven Robe, Heroic
                        51234, -- Sanctified Dark Coven Shoulderpads, Heroic
                },
        },
        [51209] = {
                [9] = { -- WARLOCK
                        51230, -- Sanctified Dark Coven Gloves, Heroic
                },
        },
        [51208] = {
                [9] = { -- WARLOCK
                        51231, -- Sanctified Dark Coven Hood, Heroic
                },
        },
        [51207] = {
                [9] = { -- WARLOCK
                        51232, -- Sanctified Dark Coven Leggings, Heroic
                },
        },
        [51206] = {
                [9] = { -- WARLOCK
                        51233, -- Sanctified Dark Coven Robe, Heroic
                },
        },
        [51205] = {
                [9] = { -- WARLOCK
                        51234, -- Sanctified Dark Coven Shoulderpads, Heroic
                },
        },
        [51204] = {
                [7] = { -- SHAMAN
                        51235, -- Sanctified Frost Witch's Shoulderpads, Heroic
                },
        },
        [51203] = {
                [7] = { -- SHAMAN
                        51236, -- Sanctified Frost Witch's Kilt, Heroic
                },
        },
        [51202] = {
                [7] = { -- SHAMAN
                        51237, -- Sanctified Frost Witch's Helm, Heroic
                },
        },
        [51201] = {
                [7] = { -- SHAMAN
                        51238, -- Sanctified Frost Witch's Gloves, Heroic
                },
        },
        [51200] = {
                [7] = { -- SHAMAN
                        51239, -- Sanctified Frost Witch's Hauberk, Heroic
                },
        },
        [51199] = {
                [7] = { -- SHAMAN
                        51240, -- Sanctified Frost Witch's Shoulderguards, Heroic
                },
        },
        [51198] = {
                [7] = { -- SHAMAN
                        51241, -- Sanctified Frost Witch's War-Kilt, Heroic
                },
        },
        [51197] = {
                [7] = { -- SHAMAN
                        51242, -- Sanctified Frost Witch's Faceguard, Heroic
                },
        },
        [51196] = {
                [7] = { -- SHAMAN
                        51243, -- Sanctified Frost Witch's Grips, Heroic
                },
        },
        [51195] = {
                [7] = { -- SHAMAN
                        51244, -- Sanctified Frost Witch's Chestguard, Heroic
                },
        },
        [51194] = {
                [7] = { -- SHAMAN
                        51245, -- Sanctified Frost Witch's Spaulders, Heroic
                },
        },
        [51193] = {
                [7] = { -- SHAMAN
                        51246, -- Sanctified Frost Witch's Legguards, Heroic
                },
        },
        [51192] = {
                [7] = { -- SHAMAN
                        51247, -- Sanctified Frost Witch's Headpiece, Heroic
                },
        },
        [51191] = {
                [7] = { -- SHAMAN
                        51248, -- Sanctified Frost Witch's Handguards, Heroic
                },
        },
        [51190] = {
                [7] = { -- SHAMAN
                        51249, -- Sanctified Frost Witch's Tunic, Heroic
                },
        },
        [52028] = {
                [4] = { -- ROGUE
                        51250, -- Sanctified Shadowblade Breastplate, Heroic
                        51251, -- Sanctified Shadowblade Gauntlets, Heroic
                        51252, -- Sanctified Shadowblade Helmet, Heroic
                        51253, -- Sanctified Shadowblade Legplates, Heroic
                        51254, -- Sanctified Shadowblade Pauldrons, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        51305, -- Sanctified Scourgelord Chestguard, Heroic
                        51306, -- Sanctified Scourgelord Faceguard, Heroic
                        51307, -- Sanctified Scourgelord Handguards, Heroic
                        51308, -- Sanctified Scourgelord Legguards, Heroic
                        51309, -- Sanctified Scourgelord Pauldrons, Heroic
                        51310, -- Sanctified Scourgelord Battleplate, Heroic
                        51311, -- Sanctified Scourgelord Gauntlets, Heroic
                        51312, -- Sanctified Scourgelord Helmet, Heroic
                        51313, -- Sanctified Scourgelord Legplates, Heroic
                        51314, -- Sanctified Scourgelord Shoulderplates, Heroic
                },
                [8] = { -- MAGE
                        51280, -- Sanctified Bloodmage Gloves, Heroic
                        51281, -- Sanctified Bloodmage Hood, Heroic
                        51282, -- Sanctified Bloodmage Leggings, Heroic
                        51283, -- Sanctified Bloodmage Robe, Heroic
                        51284, -- Sanctified Bloodmage Shoulderpads, Heroic
                },
                [11] = { -- DRUID
                        51290, -- Sanctified Lasherweave Cover, Heroic
                        51291, -- Sanctified Lasherweave Gloves, Heroic
                        51292, -- Sanctified Lasherweave Mantle, Heroic
                        51293, -- Sanctified Lasherweave Trousers, Heroic
                        51294, -- Sanctified Lasherweave Vestment, Heroic
                        51295, -- Sanctified Lasherweave Handgrips, Heroic
                        51296, -- Sanctified Lasherweave Headguard, Heroic
                        51297, -- Sanctified Lasherweave Legguards, Heroic
                        51298, -- Sanctified Lasherweave Raiment, Heroic
                        51299, -- Sanctified Lasherweave Shoulderpads, Heroic
                        51300, -- Sanctified Lasherweave Robes, Heroic
                        51301, -- Sanctified Lasherweave Gauntlets, Heroic
                        51302, -- Sanctified Lasherweave Helmet, Heroic
                        51303, -- Sanctified Lasherweave Legplates, Heroic
                        51304, -- Sanctified Lasherweave Pauldrons, Heroic
                },
        },
        [51189] = {
                [4] = { -- ROGUE
                        51250, -- Sanctified Shadowblade Breastplate, Heroic
                },
        },
        [51188] = {
                [4] = { -- ROGUE
                        51251, -- Sanctified Shadowblade Gauntlets, Heroic
                },
        },
        [51187] = {
                [4] = { -- ROGUE
                        51252, -- Sanctified Shadowblade Helmet, Heroic
                },
        },
        [51186] = {
                [4] = { -- ROGUE
                        51253, -- Sanctified Shadowblade Legplates, Heroic
                },
        },
        [51185] = {
                [4] = { -- ROGUE
                        51254, -- Sanctified Shadowblade Pauldrons, Heroic
                },
        },
        [51184] = {
                [5] = { -- PRIEST
                        51255, -- Sanctified Crimson Acolyte Cowl, Heroic
                },
        },
        [51183] = {
                [5] = { -- PRIEST
                        51256, -- Sanctified Crimson Acolyte Handwraps, Heroic
                },
        },
        [51182] = {
                [5] = { -- PRIEST
                        51257, -- Sanctified Crimson Acolyte Mantle, Heroic
                },
        },
        [51181] = {
                [5] = { -- PRIEST
                        51258, -- Sanctified Crimson Acolyte Pants, Heroic
                },
        },
        [51180] = {
                [5] = { -- PRIEST
                        51259, -- Sanctified Crimson Acolyte Raiments, Heroic
                },
        },
        [51179] = {
                [5] = { -- PRIEST
                        51260, -- Sanctified Crimson Acolyte Gloves, Heroic
                },
        },
        [51178] = {
                [5] = { -- PRIEST
                        51261, -- Sanctified Crimson Acolyte Hood, Heroic
                },
        },
        [51177] = {
                [5] = { -- PRIEST
                        51262, -- Sanctified Crimson Acolyte Leggings, Heroic
                },
        },
        [51176] = {
                [5] = { -- PRIEST
                        51263, -- Sanctified Crimson Acolyte Robe, Heroic
                },
        },
        [51175] = {
                [5] = { -- PRIEST
                        51264, -- Sanctified Crimson Acolyte Shoulderpads, Heroic
                },
        },
        [51174] = {
                [2] = { -- PALADIN
                        51265, -- Sanctified Lightsworn Chestguard, Heroic
                },
        },
        [51173] = {
                [2] = { -- PALADIN
                        51266, -- Sanctified Lightsworn Faceguard, Heroic
                },
        },
        [51172] = {
                [2] = { -- PALADIN
                        51267, -- Sanctified Lightsworn Handguards, Heroic
                },
        },
        [51171] = {
                [2] = { -- PALADIN
                        51268, -- Sanctified Lightsworn Legguards, Heroic
                },
        },
        [51170] = {
                [2] = { -- PALADIN
                        51269, -- Sanctified Lightsworn Shoulderguards, Heroic
                },
        },
        [51169] = {
                [2] = { -- PALADIN
                        51270, -- Sanctified Lightsworn Gloves, Heroic
                },
        },
        [51168] = {
                [2] = { -- PALADIN
                        51271, -- Sanctified Lightsworn Greaves, Heroic
                },
        },
        [51167] = {
                [2] = { -- PALADIN
                        51272, -- Sanctified Lightsworn Headpiece, Heroic
                },
        },
        [51166] = {
                [2] = { -- PALADIN
                        51273, -- Sanctified Lightsworn Spaulders, Heroic
                },
        },
        [51165] = {
                [2] = { -- PALADIN
                        51274, -- Sanctified Lightsworn Tunic, Heroic
                },
        },
        [51164] = {
                [2] = { -- PALADIN
                        51275, -- Sanctified Lightsworn Battleplate, Heroic
                },
        },
        [51163] = {
                [2] = { -- PALADIN
                        51276, -- Sanctified Lightsworn Gauntlets, Heroic
                },
        },
        [51162] = {
                [2] = { -- PALADIN
                        51277, -- Sanctified Lightsworn Helmet, Heroic
                },
        },
        [51161] = {
                [2] = { -- PALADIN
                        51278, -- Sanctified Lightsworn Legplates, Heroic
                },
        },
        [51160] = {
                [2] = { -- PALADIN
                        51279, -- Sanctified Lightsworn Shoulderplates, Heroic
                },
        },
        [51159] = {
                [8] = { -- MAGE
                        51280, -- Sanctified Bloodmage Gloves, Heroic
                },
        },
        [51158] = {
                [8] = { -- MAGE
                        51281, -- Sanctified Bloodmage Hood, Heroic
                },
        },
        [51157] = {
                [8] = { -- MAGE
                        51282, -- Sanctified Bloodmage Leggings, Heroic
                },
        },
        [51156] = {
                [8] = { -- MAGE
                        51283, -- Sanctified Bloodmage Robe, Heroic
                },
        },
        [51155] = {
                [8] = { -- MAGE
                        51284, -- Sanctified Bloodmage Shoulderpads, Heroic
                },
        },
        [51154] = {
                [3] = { -- HUNTER
                        51285, -- Sanctified Ahn'Kahar Blood Hunter's Handguards, Heroic
                },
        },
        [51153] = {
                [3] = { -- HUNTER
                        51286, -- Sanctified Ahn'Kahar Blood Hunter's Headpiece, Heroic
                },
        },
        [51152] = {
                [3] = { -- HUNTER
                        51287, -- Sanctified Ahn'Kahar Blood Hunter's Legguards, Heroic
                },
        },
        [51151] = {
                [3] = { -- HUNTER
                        51288, -- Sanctified Ahn'Kahar Blood Hunter's Spaulders, Heroic
                },
        },
        [51150] = {
                [3] = { -- HUNTER
                        51289, -- Sanctified Ahn'Kahar Blood Hunter's Tunic, Heroic
                },
        },
        [51149] = {
                [11] = { -- DRUID
                        51290, -- Sanctified Lasherweave Cover, Heroic
                },
        },
        [51148] = {
                [11] = { -- DRUID
                        51291, -- Sanctified Lasherweave Gloves, Heroic
                },
        },
        [51147] = {
                [11] = { -- DRUID
                        51292, -- Sanctified Lasherweave Mantle, Heroic
                },
        },
        [51146] = {
                [11] = { -- DRUID
                        51293, -- Sanctified Lasherweave Trousers, Heroic
                },
        },
        [51145] = {
                [11] = { -- DRUID
                        51294, -- Sanctified Lasherweave Vestment, Heroic
                },
        },
        [51144] = {
                [11] = { -- DRUID
                        51295, -- Sanctified Lasherweave Handgrips, Heroic
                },
        },
        [51143] = {
                [11] = { -- DRUID
                        51296, -- Sanctified Lasherweave Headguard, Heroic
                },
        },
        [51142] = {
                [11] = { -- DRUID
                        51297, -- Sanctified Lasherweave Legguards, Heroic
                },
        },
        [51141] = {
                [11] = { -- DRUID
                        51298, -- Sanctified Lasherweave Raiment, Heroic
                },
        },
        [51140] = {
                [11] = { -- DRUID
                        51299, -- Sanctified Lasherweave Shoulderpads, Heroic
                },
        },
        [51139] = {
                [11] = { -- DRUID
                        51300, -- Sanctified Lasherweave Robes, Heroic
                },
        },
        [51138] = {
                [11] = { -- DRUID
                        51301, -- Sanctified Lasherweave Gauntlets, Heroic
                },
        },
        [51137] = {
                [11] = { -- DRUID
                        51302, -- Sanctified Lasherweave Helmet, Heroic
                },
        },
        [51136] = {
                [11] = { -- DRUID
                        51303, -- Sanctified Lasherweave Legplates, Heroic
                },
        },
        [51135] = {
                [11] = { -- DRUID
                        51304, -- Sanctified Lasherweave Pauldrons, Heroic
                },
        },
        [51134] = {
                [6] = { -- DEATHKNIGHT
                        51305, -- Sanctified Scourgelord Chestguard, Heroic
                },
        },
        [51133] = {
                [6] = { -- DEATHKNIGHT
                        51306, -- Sanctified Scourgelord Faceguard, Heroic
                },
        },
        [51132] = {
                [6] = { -- DEATHKNIGHT
                        51307, -- Sanctified Scourgelord Handguards, Heroic
                },
        },
        [51131] = {
                [6] = { -- DEATHKNIGHT
                        51308, -- Sanctified Scourgelord Legguards, Heroic
                },
        },
        [51130] = {
                [6] = { -- DEATHKNIGHT
                        51309, -- Sanctified Scourgelord Pauldrons, Heroic
                },
        },
        [51129] = {
                [6] = { -- DEATHKNIGHT
                        51310, -- Sanctified Scourgelord Battleplate, Heroic
                },
        },
        [51128] = {
                [6] = { -- DEATHKNIGHT
                        51311, -- Sanctified Scourgelord Gauntlets, Heroic
                },
        },
        [51127] = {
                [6] = { -- DEATHKNIGHT
                        51312, -- Sanctified Scourgelord Helmet, Heroic
                },
        },
        [51126] = {
                [6] = { -- DEATHKNIGHT
                        51313, -- Sanctified Scourgelord Legplates, Heroic
                },
        },
        [51125] = {
                [6] = { -- DEATHKNIGHT
                        51314, -- Sanctified Scourgelord Shoulderplates, Heroic
                },
        },

}

for k,v in pairs(TokensWotLK) do

         -- unlike BC, here we can say: if a token yields 2 or 3 items per class, they have the same appearance
         for i,c in pairs(v) do
                 if type(c)=="table" and #c>1 and #c<4 then
                         c["same"]=1
                         v[i]={c}
                 end
         end


         TokenSplainerTokens[k] = v

end