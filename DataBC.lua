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

local TokensBC = {

-- Spirit Shards
        [28558] = {
                [CLOTH] = {
                        { ["same"] = 1,
                        ["note"] = "costs 18 |T" .. GetItemIcon(28558) .. ":0|t",
                        28759, -- Exorcist's Dreadweave Hood
                        28760, -- Exorcist's Silk Hood
                        },
                },
                [LEATHER] = {
                        { ["same"] = 1,
                        ["note"] = "costs 18 |T" .. GetItemIcon(28558) .. ":0|t",
                        28574, -- Exorcist's Dragonhide Helm
                        28561, -- Exorcist's Leather Helm
                        28575, -- Exorcist's Wyrmhide Helm
                        },
                },
                [MAIL] = {
                        { ["same"] = 1,
                        ["note"] = "costs 18 |T" .. GetItemIcon(28558) .. ":0|t",
                        28576, -- Exorcist's Chain Helm
                        28577, -- Exorcist's Linked Helm
                        28758, -- Exorcist's Mail Helm
                        },
                },
                [PLATE] = {
                        { ["same"] = 1,
                        ["note"] = "costs 18 |T" .. GetItemIcon(28558) .. ":0|t",
                        28560, -- Exorcist's Lamellar Helm
                        28559, -- Exorcist's Plate Helm
                        28761, -- Exorcist's Scaled Helm
                        },
                },
        },

-- T4 (S1)
        [29761] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        29021, -- Warbringer Battle-Helm
                        29011, -- Warbringer Greathelm
                        },
                        24545, -- Gladiator's Plate Helm, Season 1
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        29049, -- Light-Collar of the Incarnate
                        29058, -- Soul-Collar of the Incarnate
                        },
                        { ["same"] = 1,
                        31410, -- Gladiator's Mooncloth Hood, Season 1
                        27708, -- Gladiator's Satin Hood, Season 1
                        },
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        29093, -- Antlers of Malorne
                        29086, -- Crown of Malorne
                        29098, -- Stag-Helm of Malorne
                        },
--                        { ["same"] = 1,
--                        28127, -- Gladiator's Dragonhide Helm, Season 1
--                        31376, -- Gladiator's Kodohide Helm, Season 1
--                        28137, -- Gladiator's Wyrmhide Helm, Season 1
--                        },
                },
        },
        [29753] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        29019, -- Warbringer Breastplate
                        29012, -- Warbringer Chestguard
                        },
                        24544, -- Gladiator's Plate Chestpiece, Season 1
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        29050, -- Robes of the Incarnate
                        29056, -- Shroud of the Incarnate
                        },
                        { ["same"] = 1,
                        31413, -- Gladiator's Mooncloth Robe, Season 1
                        27711, -- Gladiator's Satin Robe, Season 1
                        },
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        29096, -- Breastplate of Malorne
                        29087, -- Chestguard of Malorne
                        29091, -- Chestpiece of Malorne
                        },
                        { ["same"] = 1,
                        28130, -- Gladiator's Dragonhide Tunic, Season 1
                        31379, -- Gladiator's Kodohide Tunic, Season 1
                        28140, -- Gladiator's Wyrmhide Tunic, Season 1
                        },
                },
        },
        [29767] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        29022, -- Warbringer Greaves
                        29015, -- Warbringer Legguards
                        },
                        24547, -- Gladiator's Plate Legguards, Season 1
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        29059, -- Leggings of the Incarnate
                        29053, -- Trousers of the Incarnate
                        },
                        { ["same"] = 1,
                        31411, -- Gladiator's Mooncloth Leggings, Season 1
                        27709, -- Gladiator's Satin Leggings, Season 1
                        },
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        29094, -- Britches of Malorne
                        29099, -- Greaves of Malorne
                        29088, -- Legguards of Malorne
                        },
                        { ["same"] = 1,
                        28128, -- Gladiator's Dragonhide Legguards, Season 1
                        31377, -- Gladiator's Kodohide Legguards, Season 1
                        28138, -- Gladiator's Wyrmhide Legguards, Season 1
                        },
                },
        },
        [29759] = {
                [3] = { -- HUNTER
                        29081, -- Demon Stalker Greathelm
                        28331, -- Gladiator's Chain Helm, Season 1
                },
                [8] = { -- MAGE
                        29076, -- Collar of the Aldor
                        25855, -- Gladiator's Silk Cowl, Season 1
                },
                [9] = { -- WARLOCK
                        28963, -- Voidheart Crown
                        { ["same"] = 1,
                        24553, -- Gladiator's Dreadweave Hood, Season 1
                        30187, -- Gladiator's Felweave Cowl, Season 1
                        },
                },
        },
        [29754] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        29071, -- Justicar Breastplate
                        29066, -- Justicar Chestguard
                        29062, -- Justicar Chestpiece
                        },
                        { ["same"] = 1,
                        27702, -- Gladiator's Lamellar Chestpiece, Season 1
                        31613, -- Gladiator's Ornamented Chestguard, Season 1
                        27879, -- Gladiator's Scaled Chestpiece, Season 1
                        },
                },
                [4] = { -- ROGUE
                        29045, -- Netherblade Chestpiece
                        25831, -- Gladiator's Leather Tunic, Season 1
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        29038, -- Cyclone Breastplate
                        29033, -- Cyclone Chestguard
                        29029, -- Cyclone Hauberk
                        },
                        { ["same"] = 1,
                        25997, -- Gladiator's Linked Armor, Season 1
                        27469, -- Gladiator's Mail Armor, Season 1
                        31396, -- Gladiator's Ringmail Armor, Season 1
                        },
                },
        },
        [29760] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        29073, -- Justicar Crown
                        29061, -- Justicar Diadem
                        29068, -- Justicar Faceguard
                        },
                        { ["same"] = 1,
                        27704, -- Gladiator's Lamellar Helm, Season 1
                        31616, -- Gladiator's Ornamented Headcover, Season 1
                        27881, -- Gladiator's Scaled Helm, Season 1
                        },
                },
                [4] = { -- ROGUE
                        29044, -- Netherblade Facemask
                        25830, -- Gladiator's Leather Helm, Season 1
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        29035, -- Cyclone Faceguard
                        29028, -- Cyclone Headdress
                        29040, -- Cyclone Helm
                        },
                        { ["same"] = 1,
                        25998, -- Gladiator's Linked Helm, Season 1
                        27471, -- Gladiator's Mail Helm, Season 1
                        31400, -- Gladiator's Ringmail Helm, Season 1
                        },
                },
        },
        [29757] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        29072, -- Justicar Gauntlets
                        29065, -- Justicar Gloves
                        29067, -- Justicar Handguards
                        },
                        { ["same"] = 1,
                        27703, -- Gladiator's Lamellar Gauntlets, Season 1
                        31614, -- Gladiator's Ornamented Gloves, Season 1
                        27880, -- Gladiator's Scaled Gauntlets, Season 1
                        },
                },
                [4] = { -- ROGUE
                        29048, -- Netherblade Gloves
                        25834, -- Gladiator's Leather Gloves, Season 1
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        29039, -- Cyclone Gauntlets
                        29032, -- Cyclone Gloves
                        29034, -- Cyclone Handguards
                        },
                        { ["same"] = 1,
                        26000, -- Gladiator's Linked Gauntlets, Season 1
                        27470, -- Gladiator's Mail Gauntlets, Season 1
                        31397, -- Gladiator's Ringmail Gauntlets, Season 1
                        },
                },
        },
        [29766] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        29074, -- Justicar Greaves
                        29063, -- Justicar Leggings
                        29069, -- Justicar Legguards
                        },
                        { ["same"] = 1,
                        27705, -- Gladiator's Lamellar Legguards, Season 1
                        31618, -- Gladiator's Ornamented Legplates, Season 1
                        27882, -- Gladiator's Scaled Legguards, Season 1
                        },
                },
                [4] = { -- ROGUE
                        29046, -- Netherblade Breeches
                        25833, -- Gladiator's Leather Legguards, Season 1
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        29030, -- Cyclone Kilt
                        29036, -- Cyclone Legguards
                        29042, -- Cyclone War-Kilt
                        },
                        { ["same"] = 1,
                        26001, -- Gladiator's Linked Leggings, Season 1
                        27472, -- Gladiator's Mail Leggings, Season 1
                        31406, -- Gladiator's Ringmail Leggings, Season 1
                        },
                },
        },
        [29763] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        29064, -- Justicar Pauldrons
                        29070, -- Justicar Shoulderguards
                        29075, -- Justicar Shoulderplates
                        },
                        { ["same"] = 1,
                        27706, -- Gladiator's Lamellar Shoulders, Season 1
                        31619, -- Gladiator's Ornamented Spaulders, Season 1
                        27883, -- Gladiator's Scaled Shoulders, Season 1
                        },
                },
                [4] = { -- ROGUE
                        29047, -- Netherblade Shoulderpads
                        25832, -- Gladiator's Leather Spaulders, Season 1
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        29037, -- Cyclone Shoulderguards
                        29031, -- Cyclone Shoulderpads
                        29043, -- Cyclone Shoulderplates
                        },
                        { ["same"] = 1,
                        25999, -- Gladiator's Linked Spaulders, Season 1
                        27473, -- Gladiator's Mail Spaulders, Season 1
                        31407, -- Gladiator's Ringmail Spaulders, Season 1
                        },
                },
        },
        [29756] = {
                [3] = { -- HUNTER
                        29085, -- Demon Stalker Gauntlets
                        28335, -- Gladiator's Chain Gauntlets, Season 1
                },
                [8] = { -- MAGE
                        29080, -- Gloves of the Aldor
                        25857, -- Gladiator's Silk Handguards, Season 1
                },
                [9] = { -- WARLOCK
                        28968, -- Voidheart Gloves
                        { ["same"] = 1,
                        24556, -- Gladiator's Dreadweave Gloves, Season 1
                        30188, -- Gladiator's Felweave Handguards, Season 1
                        },
                },
        },
        [29765] = {
                [3] = { -- HUNTER
                        29083, -- Demon Stalker Greaves
                        28332, -- Gladiator's Chain Leggings, Season 1
                },
                [8] = { -- MAGE
                        29078, -- Legwraps of the Aldor
                        25858, -- Gladiator's Silk Trousers, Season 1
                },
                [9] = { -- WARLOCK
                        28966, -- Voidheart Leggings
                        { ["same"] = 1,
                        24555, -- Gladiator's Dreadweave Leggings, Season 1
                        30201, -- Gladiator's Felweave Trousers, Season 1
                        },
                },
        },
        [29755] = {
                [3] = { -- HUNTER
                        29082, -- Demon Stalker Harness
                        28334, -- Gladiator's Chain Armor, Season 1
                },
                [8] = { -- MAGE
                        29077, -- Vestments of the Aldor
                        25856, -- Gladiator's Silk Raiment, Season 1
                },
                [9] = { -- WARLOCK
                        28964, -- Voidheart Robe
                        { ["same"] = 1,
                        24552, -- Gladiator's Dreadweave Robe, Season 1
                        30200, -- Gladiator's Felweave Raiment, Season 1
                        },
                },
        },
        [29762] = {
                [3] = { -- HUNTER
                        29084, -- Demon Stalker Shoulderguards
                        28333, -- Gladiator's Chain Spaulders, Season 1
                },
                [8] = { -- MAGE
                        29079, -- Pauldrons of the Aldor
                        25854, -- Gladiator's Silk Amice, Season 1
                },
                [9] = { -- WARLOCK
                        28967, -- Voidheart Mantle
                        { ["same"] = 1,
                        24554, -- Gladiator's Dreadweave Mantle, Season 1
                        30186, -- Gladiator's Felweave Amice, Season 1
                        },
                },
        },
        [29758] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        29020, -- Warbringer Gauntlets
                        29017, -- Warbringer Handguards
                        },
                        24549, -- Gladiator's Plate Gauntlets, Season 1
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        29057, -- Gloves of the Incarnate
                        29055, -- Handwraps of the Incarnate
                        },
                        { ["same"] = 1,
                        31409, -- Gladiator's Mooncloth Gloves, Season 1
                        27707, -- Gladiator's Satin Gloves, Season 1
                        },
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        29097, -- Gauntlets of Malorne
                        29092, -- Gloves of Malorne
                        29090, -- Handguards of Malorne
                        },
                        { ["same"] = 1,
                        28126, -- Gladiator's Dragonhide Gloves, Season 1
                        31375, -- Gladiator's Kodohide Gloves, Season 1
                        28136, -- Gladiator's Wyrmhide Gloves, Season 1
                        },
                },
        },
        [29764] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        29016, -- Warbringer Shoulderguards
                        29023, -- Warbringer Shoulderplates
                        },
                        24546, -- Gladiator's Plate Shoulders, Season 1
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        29054, -- Light-Mantle of the Incarnate
                        29060, -- Soul-Mantle of the Incarnate
                        },
                        { ["same"] = 1,
                        31412, -- Gladiator's Mooncloth Mantle, Season 1
                        27710, -- Gladiator's Satin Mantle, Season 1
                        },
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        29100, -- Mantle of Malorne
                        29095, -- Pauldrons of Malorne
                        29089, -- Shoulderguards of Malorne
                        },
                        { ["same"] = 1,
                        28129, -- Gladiator's Dragonhide Spaulders, Season 1
                        31378, -- Gladiator's Kodohide Spaulders, Season 1
                        28139, -- Gladiator's Wyrmhide Spaulders, Season 1
                        },
                },
        },

-- T5 (S2)
        [30246] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        30121, -- Destroyer Greaves
                        30116, -- Destroyer Legguards
                        },
                        30489, -- Merciless Gladiator's Plate Legguards, Season 2
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        30153, -- Breeches of the Avatar
                        30162, -- Leggings of the Avatar
                        },
                        { ["same"] = 1,
                        32017, -- Merciless Gladiator's Mooncloth Leggings, Season 2
                        32036, -- Merciless Gladiator's Satin Leggings, Season 2
                        },
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        30229, -- Nordrassil Feral-Kilt
                        30220, -- Nordrassil Life-Kilt
                        30234, -- Nordrassil Wrath-Kilt
                        },
                        { ["same"] = 1,
                        31969, -- Merciless Gladiator's Dragonhide Legguards, Season 2
                        31989, -- Merciless Gladiator's Kodohide Legguards, Season 2
                        32058, -- Merciless Gladiator's Wyrmhide Legguards, Season 2
                        },
                },
        },
        [30236] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        30129, -- Crystalforge Breastplate
                        30123, -- Crystalforge Chestguard
                        30134, -- Crystalforge Chestpiece
                        },
                        { ["same"] = 1,
                        31992, -- Merciless Gladiator's Lamellar Chestpiece, Season 2
                        32020, -- Merciless Gladiator's Ornamented Chestguard, Season 2
                        32039, -- Merciless Gladiator's Scaled Chestpiece, Season 2
                        },
                },
                [4] = { -- ROGUE
                        30144, -- Deathmantle Chestguard
                        32002, -- Merciless Gladiator's Leather Tunic, Season 2
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        30164, -- Cataclysm Chestguard
                        30169, -- Cataclysm Chestpiece
                        30185, -- Cataclysm Chestplate
                        },
                        { ["same"] = 1,
                        32004, -- Merciless Gladiator's Linked Armor, Season 2
                        32009, -- Merciless Gladiator's Mail Armor, Season 2
                        32029, -- Merciless Gladiator's Ringmail Armor, Season 2
                        },
                },
        },
        [30239] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        30130, -- Crystalforge Gauntlets
                        30135, -- Crystalforge Gloves
                        30124, -- Crystalforge Handguards
                        },
                        { ["same"] = 1,
                        31993, -- Merciless Gladiator's Lamellar Gauntlets, Season 2
                        32021, -- Merciless Gladiator's Ornamented Gloves, Season 2
                        32040, -- Merciless Gladiator's Scaled Gauntlets, Season 2
                        },
                },
                [4] = { -- ROGUE
                        30145, -- Deathmantle Handguards
                        31998, -- Merciless Gladiator's Leather Gloves, Season 2
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        30189, -- Cataclysm Gauntlets
                        30165, -- Cataclysm Gloves
                        30170, -- Cataclysm Handgrips
                        },
                        { ["same"] = 1,
                        32005, -- Merciless Gladiator's Linked Gauntlets, Season 2
                        32010, -- Merciless Gladiator's Mail Gauntlets, Season 2
                        32030, -- Merciless Gladiator's Ringmail Gauntlets, Season 2
                        },
                },
        },
        [30242] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        30125, -- Crystalforge Faceguard
                        30136, -- Crystalforge Greathelm
                        30131, -- Crystalforge War-Helm
                        },
                        { ["same"] = 1,
                        31997, -- Merciless Gladiator's Lamellar Helm, Season 2
                        32022, -- Merciless Gladiator's Ornamented Headcover, Season 2
                        32041, -- Merciless Gladiator's Scaled Helm, Season 2
                        },
                },
                [4] = { -- ROGUE
                        30146, -- Deathmantle Helm
                        31999, -- Merciless Gladiator's Leather Helm, Season 2
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        30166, -- Cataclysm Headguard
                        30171, -- Cataclysm Headpiece
                        30190, -- Cataclysm Helm
                        },
                        { ["same"] = 1,
                        32006, -- Merciless Gladiator's Linked Helm, Season 2
                        32011, -- Merciless Gladiator's Mail Helm, Season 2
                        32031, -- Merciless Gladiator's Ringmail Helm, Season 2
                        },
                },
        },
        [30245] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        30132, -- Crystalforge Greaves
                        30137, -- Crystalforge Leggings
                        30126, -- Crystalforge Legguards
                        },
                        { ["same"] = 1,
                        31995, -- Merciless Gladiator's Lamellar Legguards, Season 2
                        32023, -- Merciless Gladiator's Ornamented Legplates, Season 2
                        32042, -- Merciless Gladiator's Scaled Legguards, Season 2
                        },
                },
                [4] = { -- ROGUE
                        30148, -- Deathmantle Legguards
                        32000, -- Merciless Gladiator's Leather Legguards, Season 2
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        30172, -- Cataclysm Leggings
                        30167, -- Cataclysm Legguards
                        30192, -- Cataclysm Legplates
                        },
                        { ["same"] = 1,
                        32007, -- Merciless Gladiator's Linked Leggings, Season 2
                        32012, -- Merciless Gladiator's Mail Leggings, Season 2
                        32032, -- Merciless Gladiator's Ringmail Leggings, Season 2
                        },
                },
        },
        [30248] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        30138, -- Crystalforge Pauldrons
                        30133, -- Crystalforge Shoulderbraces
                        30127, -- Crystalforge Shoulderguards
                        },
                        { ["same"] = 1,
                        31996, -- Merciless Gladiator's Lamellar Shoulders, Season 2
                        32024, -- Merciless Gladiator's Ornamented Spaulders, Season 2
                        32043, -- Merciless Gladiator's Scaled Shoulders, Season 2
                        },
                },
                [4] = { -- ROGUE
                        30149, -- Deathmantle Shoulderpads
                        32001, -- Merciless Gladiator's Leather Spaulders, Season 2
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        30168, -- Cataclysm Shoulderguards
                        30173, -- Cataclysm Shoulderpads
                        30194, -- Cataclysm Shoulderplates
                        },
                        { ["same"] = 1,
                        32008, -- Merciless Gladiator's Linked Spaulders, Season 2
                        32013, -- Merciless Gladiator's Mail Spaulders, Season 2
                        32033, -- Merciless Gladiator's Ringmail Spaulders, Season 2
                        },
                },
        },
        [30243] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        30120, -- Destroyer Battle-Helm
                        30115, -- Destroyer Greathelm
                        },
                        30488, -- Merciless Gladiator's Plate Helm, Season 2
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        30152, -- Cowl of the Avatar
                        30161, -- Hood of the Avatar
                        },
                        { ["same"] = 1,
                        32016, -- Merciless Gladiator's Mooncloth Hood, Season 2
                        32035, -- Merciless Gladiator's Satin Hood, Season 2
                        },
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        30228, -- Nordrassil Headdress
                        30219, -- Nordrassil Headguard
                        30233, -- Nordrassil Headpiece
                        },
                        { ["same"] = 1,
                        31968, -- Merciless Gladiator's Dragonhide Helm, Season 2
                        31988, -- Merciless Gladiator's Kodohide Helm, Season 2
                        32057, -- Merciless Gladiator's Wyrmhide Helm, Season 2
                        },
                },
        },
        [30244] = {
                [3] = { -- HUNTER
                        30141, -- Rift Stalker Helm
                        31962, -- Merciless Gladiator's Chain Helm, Season 2
                },
                [8] = { -- MAGE
                        30206, -- Cowl of Tirisfal
                        32048, -- Merciless Gladiator's Silk Cowl, Season 2
                },
                [9] = { -- WARLOCK
                        30212, -- Hood of the Corruptor
                        { ["same"] = 1,
                        31974, -- Merciless Gladiator's Dreadweave Hood, Season 2
                        31980, -- Merciless Gladiator's Felweave Cowl, Season 2
                        },
                },
        },
        [30237] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        30118, -- Destroyer Breastplate
                        30113, -- Destroyer Chestguard
                        },
                        30486, -- Merciless Gladiator's Plate Chestpiece, Season 2
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        30159, -- Shroud of the Avatar
                        30150, -- Vestments of the Avatar
                        },
                        { ["same"] = 1,
                        32019, -- Merciless Gladiator's Mooncloth Robe, Season 2
                        32038, -- Merciless Gladiator's Satin Robe, Season 2
                        },
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        30216, -- Nordrassil Chestguard
                        30231, -- Nordrassil Chestpiece
                        30222, -- Nordrassil Chestplate
                        },
                        { ["same"] = 1,
                        31972, -- Merciless Gladiator's Dragonhide Tunic, Season 2
                        31991, -- Merciless Gladiator's Kodohide Tunic, Season 2
                        32060, -- Merciless Gladiator's Wyrmhide Tunic, Season 2
                        },
                },
        },
        [30240] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        30119, -- Destroyer Gauntlets
                        30114, -- Destroyer Handguards
                        },
                        30487, -- Merciless Gladiator's Plate Gauntlets, Season 2
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        30151, -- Gloves of the Avatar
                        30160, -- Handguards of the Avatar
                        },
                        { ["same"] = 1,
                        32015, -- Merciless Gladiator's Mooncloth Gloves, Season 2
                        32034, -- Merciless Gladiator's Satin Gloves, Season 2
                        },
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        30232, -- Nordrassil Gauntlets
                        30217, -- Nordrassil Gloves
                        30223, -- Nordrassil Handgrips
                        },
                        { ["same"] = 1,
                        31967, -- Merciless Gladiator's Dragonhide Gloves, Season 2
                        31987, -- Merciless Gladiator's Kodohide Gloves, Season 2
                        32056, -- Merciless Gladiator's Wyrmhide Gloves, Season 2
                        },
                },
        },
        [30249] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        30122, -- Destroyer Shoulderblades
                        30117, -- Destroyer Shoulderguards
                        },
                        30490, -- Merciless Gladiator's Plate Shoulders, Season 2
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        30154, -- Mantle of the Avatar
                        30163, -- Wings of the Avatar
                        },
                        { ["same"] = 1,
                        32018, -- Merciless Gladiator's Mooncloth Mantle, Season 2
                        32037, -- Merciless Gladiator's Satin Mantle, Season 2
                        },
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        30230, -- Nordrassil Feral-Mantle
                        30221, -- Nordrassil Life-Mantle
                        30235, -- Nordrassil Wrath-Mantle
                        },
                        { ["same"] = 1,
                        31971, -- Merciless Gladiator's Dragonhide Spaulders, Season 2
                        31990, -- Merciless Gladiator's Kodohide Spaulders, Season 2
                        32059, -- Merciless Gladiator's Wyrmhide Spaulders, Season 2
                        },
                },
        },
        [30241] = {
                [3] = { -- HUNTER
                        30140, -- Rift Stalker Gauntlets
                        31961, -- Merciless Gladiator's Chain Gauntlets, Season 2
                },
                [8] = { -- MAGE
                        30205, -- Gloves of Tirisfal
                        32049, -- Merciless Gladiator's Silk Handguards, Season 2
                },
                [9] = { -- WARLOCK
                        30211, -- Gloves of the Corruptor
                        { ["same"] = 1,
                        31973, -- Merciless Gladiator's Dreadweave Gloves, Season 2
                        31981, -- Merciless Gladiator's Felweave Handguards, Season 2
                        },
                },
        },
        [30247] = {
                [3] = { -- HUNTER
                        30142, -- Rift Stalker Leggings
                        31963, -- Merciless Gladiator's Chain Leggings, Season 2
                },
                [8] = { -- MAGE
                        30207, -- Leggings of Tirisfal
                        32051, -- Merciless Gladiator's Silk Trousers, Season 2
                },
                [9] = { -- WARLOCK
                        30213, -- Leggings of the Corruptor
                        { ["same"] = 1,
                        31975, -- Merciless Gladiator's Dreadweave Leggings, Season 2
                        31983, -- Merciless Gladiator's Felweave Trousers, Season 2
                        },
                },
        },
        [30250] = {
                [3] = { -- HUNTER
                        30143, -- Rift Stalker Mantle
                        31964, -- Merciless Gladiator's Chain Spaulders, Season 2
                },
                [8] = { -- MAGE
                        30210, -- Mantle of Tirisfal
                        32047, -- Merciless Gladiator's Silk Amice, Season 2
                },
                [9] = { -- WARLOCK
                        30215, -- Mantle of the Corruptor
                        { ["same"] = 1,
                        31976, -- Merciless Gladiator's Dreadweave Mantle, Season 2
                        31979, -- Merciless Gladiator's Felweave Amice, Season 2
                        },
                },
        },
        [30238] = {
                [3] = { -- HUNTER
                        30139, -- Rift Stalker Hauberk
                        31960, -- Merciless Gladiator's Chain Armor, Season 2
                },
                [8] = { -- MAGE
                        30196, -- Robes of Tirisfal
                        32050, -- Merciless Gladiator's Silk Raiment, Season 2
                },
                [9] = { -- WARLOCK
                        30214, -- Robe of the Corruptor
                        { ["same"] = 1,
                        31977, -- Merciless Gladiator's Dreadweave Robe, Season 2
                        31982, -- Merciless Gladiator's Felweave Raiment, Season 2
                        },
                },
        },

-- T6 (S3) TODO: also add S2 items
        [34851] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        34441, -- Onslaught Bracers
                        34442, -- Onslaught Wristguards
                        },
                },
                [PLATENODK] = {
                        33813, -- Vindicator's Plate Bracers
                },
                [3] = { -- HUNTER
                        34443, -- Gronnstalker's Bracers
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        34437, -- Skyshatter Bands
                        34438, -- Skyshatter Bracers
                        34439, -- Skyshatter Wristguards
                        },
                },
                [MAIL] = {
                        33876, -- Vindicator's Chain Bracers
                        { ["same"] = 1,
                        33894, -- Vindicator's Linked Bracers
                        33897, -- Vindicator's Mail Bracers
                        33906, -- Vindicator's Ringmail Bracers
                        },
                },
        },
        [34852] = {
                [4] = { -- ROGUE
                        34448, -- Slayer's Bracers
                },
                [8] = { -- MAGE
                        34447, -- Bracers of the Tempest
                },
                [CLOTH] = {
                        33913, -- Vindicator's Silk Cuffs
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        34446, -- Thunderheart Bands
                        34445, -- Thunderheart Bracers
                        34444, -- Thunderheart Wristguards
                        },
                },
                [LEATHERNOMONK] = {
                        { ["same"] = 1,
                        33881, -- Vindicator's Dragonhide Bracers
                        33887, -- Vindicator's Kodohide Bracers
                        33917, -- Vindicator's Wyrmhide Bracers
                        },
                        33893, -- Vindicator's Leather Bracers
                },
        },
        [34848] = {
                [PLATENODK] = {
                        { ["same"] = 1,
                        33889, -- Vindicator's Lamellar Bracers
                        33904, -- Vindicator's Ornamented Bracers
                        33910, -- Vindicator's Scaled Bracers
                        },
                },
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        34431, -- Lightbringer Bands
                        34432, -- Lightbringer Bracers
                        34433, -- Lightbringer Wristguards
                        },
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        34434, -- Bracers of Absolution
                        34435, -- Cuffs of Absolution
                        },
                },
                [CLOTH] = {
                        33883, -- Vindicator's Dreadweave Cuffs
                        33901, -- Vindicator's Mooncloth Cuffs
                },
                [9] = { -- WARLOCK
                        34436, -- Bracers of the Malefic
                },
        },
        [31098] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        30993, -- Lightbringer Greaves
                        30994, -- Lightbringer Leggings
                        30995, -- Lightbringer Legguards
                        },
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        31068, -- Breeches of Absolution
                        31067, -- Leggings of Absolution
                        },
                },
                [9] = { -- WARLOCK
                        31053, -- Leggings of the Malefic
                },
        },
        [31097] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        30987, -- Lightbringer Faceguard
                        30988, -- Lightbringer Greathelm
                        30989, -- Lightbringer War-Helm
                        },
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        31063, -- Cowl of Absolution
                        31064, -- Hood of Absolution
                        },
                },
                [9] = { -- WARLOCK
                        31051, -- Hood of the Malefic
                },
        },
        [31096] = {
                [4] = { -- ROGUE
                        31027, -- Slayer's Helm
                },
                [8] = { -- MAGE
                        31056, -- Cowl of the Tempest
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        31039, -- Thunderheart Cover
                        31040, -- Thunderheart Headguard
                        31037, -- Thunderheart Helmet
                        },
                },
        },
        [31092] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        30982, -- Lightbringer Gauntlets
                        30983, -- Lightbringer Gloves
                        30985, -- Lightbringer Handguards
                        },
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        31060, -- Gloves of Absolution
                        31061, -- Handguards of Absolution
                        },
                },
                [9] = { -- WARLOCK
                        31050, -- Gloves of the Malefic
                },
        },
        [31093] = {
                [4] = { -- ROGUE
                        31026, -- Slayer's Handguards
                },
                [8] = { -- MAGE
                        31055, -- Gloves of the Tempest
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        31034, -- Thunderheart Gauntlets
                        31032, -- Thunderheart Gloves
                        31035, -- Thunderheart Handguards
                        },
                },
        },
        [31091] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        30975, -- Onslaught Breastplate
                        30976, -- Onslaught Chestguard
                        },
                },
                [3] = { -- HUNTER
                        31004, -- Gronnstalker's Chestguard
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        31017, -- Skyshatter Breastplate
                        31016, -- Skyshatter Chestguard
                        31018, -- Skyshatter Tunic
                        },
                },
        },
        [31094] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        30969, -- Onslaught Gauntlets
                        30970, -- Onslaught Handguards
                        },
                },
                [3] = { -- HUNTER
                        31001, -- Gronnstalker's Gloves
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        31008, -- Skyshatter Gauntlets
                        31007, -- Skyshatter Gloves
                        31011, -- Skyshatter Grips
                        },
                },
        },
        [31095] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        30972, -- Onslaught Battle-Helm
                        30974, -- Onslaught Greathelm
                        },
                },
                [3] = { -- HUNTER
                        31003, -- Gronnstalker's Helmet
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        31015, -- Skyshatter Cover
                        31014, -- Skyshatter Headguard
                        31012, -- Skyshatter Helmet
                        },
                },
        },
        [31100] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        30977, -- Onslaught Greaves
                        30978, -- Onslaught Legguards
                        },
                },
                [3] = { -- HUNTER
                        31005, -- Gronnstalker's Leggings
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        31019, -- Skyshatter Leggings
                        31020, -- Skyshatter Legguards
                        31021, -- Skyshatter Pants
                        },
                },
        },
        [31103] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        30979, -- Onslaught Shoulderblades
                        30980, -- Onslaught Shoulderguards
                        },
                },
                [3] = { -- HUNTER
                        31006, -- Gronnstalker's Spaulders
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        31023, -- Skyshatter Mantle
                        31024, -- Skyshatter Pauldrons
                        31022, -- Skyshatter Shoulderpads
                        },
                },
        },
        [31099] = {
                [4] = { -- ROGUE
                        31029, -- Slayer's Legguards
                },
                [8] = { -- MAGE
                        31058, -- Leggings of the Tempest
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        31044, -- Thunderheart Leggings
                        31045, -- Thunderheart Legguards
                        31046, -- Thunderheart Pants
                        },
                },
        },
        [31089] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        30990, -- Lightbringer Breastplate
                        30991, -- Lightbringer Chestguard
                        30992, -- Lightbringer Chestpiece
                        },
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        31065, -- Shroud of Absolution
                        31066, -- Vestments of Absolution
                        },
                },
                [9] = { -- WARLOCK
                        31052, -- Robe of the Malefic
                },
        },
        [31101] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        30996, -- Lightbringer Pauldrons
                        30997, -- Lightbringer Shoulderbraces
                        30998, -- Lightbringer Shoulderguards
                        },
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        31069, -- Mantle of Absolution
                        31070, -- Shoulderpads of Absolution
                        },
                },
                [9] = { -- WARLOCK
                        31054, -- Mantle of the Malefic
                },
        },
        [31102] = {
                [4] = { -- ROGUE
                        31030, -- Slayer's Shoulderpads
                },
                [8] = { -- MAGE
                        31059, -- Mantle of the Tempest
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        31048, -- Thunderheart Pauldrons
                        31049, -- Thunderheart Shoulderpads
                        31047, -- Thunderheart Spaulders
                        },
                },
        },
        [31090] = {
                [4] = { -- ROGUE
                        31028, -- Slayer's Chestguard
                },
                [8] = { -- MAGE
                        31057, -- Robes of the Tempest
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        31042, -- Thunderheart Chestguard
                        31041, -- Thunderheart Tunic
                        31043, -- Thunderheart Vest
                        },
                },
        },
        [34854] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        34546, -- Onslaught Belt
                        34547, -- Onslaught Waistguard
                        },
                },
                [PLATENODK] = {
                        33811, -- Vindicator's Plate Belt
                },
                [3] = { -- HUNTER
                        34549, -- Gronnstalker's Belt
                },
                [MAIL] = {
                        33877, -- Vindicator's Chain Girdle
                        { ["same"] = 1,
                        33895, -- Vindicator's Linked Girdle
                        33898, -- Vindicator's Mail Girdle
                        33907, -- Vindicator's Ringmail Girdle
                        },
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        34543, -- Skyshatter Belt
                        34542, -- Skyshatter Cord
                        34545, -- Skyshatter Girdle
                        },
                },
        },
        [34857] = {
                [1] = { -- WARRIOR
                        { ["same"] = 1,
                        34568, -- Onslaught Boots
                        34569, -- Onslaught Treads
                        },
                },
                [PLATENODK] = {
                        33812, -- Vindicator's Plate Greaves
                },
                [3] = { -- HUNTER
                        34570, -- Gronnstalker's Boots
                },
                [MAIL] = { -- HUNTER
                        33878, -- Vindicator's Chain Sabatons
                        { ["same"] = 1,
                        33896, -- Vindicator's Linked Sabatons
                        33899, -- Vindicator's Mail Sabatons
                        33908, -- Vindicator's Ringmail Sabatons
                        },
                },
                [7] = { -- SHAMAN
                        { ["same"] = 1,
                        34565, -- Skyshatter Boots
                        34567, -- Skyshatter Greaves
                        34566, -- Skyshatter Treads
                        },
                },
        },
        [34855] = {
                [4] = { -- ROGUE
                        34558, -- Slayer's Belt
                },
                [8] = { -- MAGE
                        34557, -- Belt of the Tempest
                },
                [CLOTH] = {
                        33912, -- Vindicator's Silk Belt
                },
                [11] = { -- DRUID
                        { ["same"] = 1,
                        34554, -- Thunderheart Belt
                        34555, -- Thunderheart Cord
                        34556, -- Thunderheart Waistguard
                        },
                },
                [LEATHERNOMONK] = {
                        { ["same"] = 1,
                        33879, -- Vindicator's Dragonhide Belt
                        33885, -- Vindicator's Kodohide Belt
                        33915, -- Vindicator's Wyrmhide Belt
                        },
                        33891, -- Vindicator's Leather Belt
                },
        },
        [34858] = {
                [4] = { -- ROGUE
                        34575, -- Slayer's Boots
                },
                [8] = { -- MAGE
                        34574, -- Boots of the Tempest
                },
                [CLOTH] = {
                        33914, -- Vindicator's Silk Footguards
                },
                [11] = { -- DRUID
                        34571, -- Thunderheart Boots
                        34572, -- Thunderheart Footwraps
                        34573, -- Thunderheart Treads
                },
                [LEATHERNOMONK] = {
                        { ["same"] = 1,
                        33880, -- Vindicator's Dragonhide Boots
                        33886, -- Vindicator's Kodohide Boots
                        33916, -- Vindicator's Wyrmhide Boots
                        },
                        33892, -- Vindicator's Leather Boots
                },
        },
        [34853] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        34487, -- Lightbringer Belt
                        34485, -- Lightbringer Girdle
                        34488, -- Lightbringer Waistguard
                        },
                },
                [PLATENODK] = {
                        { ["same"] = 1,
                        33888, -- Vindicator's Lamellar Belt
                        33903, -- Vindicator's Ornamented Belt
                        33909, -- Vindicator's Scaled Belt
                        },
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        34527, -- Belt of Absolution
                        34528, -- Cord of Absolution
                        },
                },
                [CLOTH] = {
                        33882, -- Vindicator's Dreadweave Belt
                        33900, -- Vindicator's Mooncloth Belt
                },
                [9] = { -- WARLOCK
                        34541, -- Belt of the Malefic
                },
        },
        [34856] = {
                [2] = { -- PALADIN
                        { ["same"] = 1,
                        34561, -- Lightbringer Boots
                        34560, -- Lightbringer Stompers
                        34559, -- Lightbringer Treads
                        },
                },
                [PLATENODK] = {
                        { ["same"] = 1,
                        33890, -- Vindicator's Lamellar Greaves
                        33905, -- Vindicator's Ornamented Greaves
                        33911, -- Vindicator's Scaled Greaves
                        },
                },
                [5] = { -- PRIEST
                        { ["same"] = 1,
                        34562, -- Boots of Absolution
                        34563, -- Treads of Absolution
                        },
                },
                [CLOTH] = {
                        33884, -- Vindicator's Dreadweave Stalkers
                        33902, -- Vindicator's Mooncloth Slippers
                },
                [9] = { -- WARLOCK
                        34564, -- Boots of the Malefic
                },
        },
        -- Sunmote trades
        [34351] = {
                [LEATHER] = {
                        { ["note"] = "+1 Sunmote =",
                        34407, -- Tranquil Moonlight Wraps
                        },
                },
        },
        [34211] = {
                [LEATHER] = {
                        { ["note"] = "+1 Sunmote =",
                        34397, -- Bladed Chaos Tunic
                        },
                },
        },
        [34215] = {
                [PLATE] = {
                        { ["note"] = "+1 Sunmote =",
                        34394, -- Breastplate of Agony's Aversion
                        },
                },
        },
        [34169] = {
                [LEATHER] = {
                        { ["note"] = "+1 Sunmote =",
                        34384, -- Breeches of Natural Splendor
                        },
                },
        },
        [34245] = {
                [LEATHER] = {
                        { ["note"] = "+1 Sunmote =",
                        34403, -- Cover of Ursoc the Mighty
                        },
                },
        },
        [34345] = {
                [PLATE] = {
                        { ["note"] = "+1 Sunmote =",
                        34400, -- Crown of Dath'Remar
                        },
                },
        },
        [34195] = {
                [LEATHER] = {
                        { ["note"] = "+1 Sunmote =",
                        34392, -- Demontooth Shoulderpads
                        },
                },
        },
        [34208] = {
                [MAIL] = {
                        { ["note"] = "+1 Sunmote =",
                        34390, -- Erupting Epaulets
                        },
                },
        },
        [34180] = {
                [PLATE] = {
                        { ["note"] = "+1 Sunmote =",
                        34381, -- Felstrength Legplates
                        },
                },
        },
        [34229] = {
                [MAIL] = {
                        { ["note"] = "+1 Sunmote =",
                        34396, -- Garments of Crashing Shores
                        },
                },
        },
        [34350] = {
                [MAIL] = {
                        { ["note"] = "+1 Sunmote =",
                        34409, -- Gauntlets of the Ancient Frostwolf
                        },
                },
        },
        [34234] = {
                [LEATHER] = {
                        { ["note"] = "+1 Sunmote =",
                        34408, -- Gloves of the Forest Drifter
                        },
                },
        },
        [34243] = {
                [PLATE] = {
                        { ["note"] = "+1 Sunmote =",
                        34401, -- Helm of Uther's Resolve
                        },
                },
        },
        [34167] = {
                [PLATE] = {
                        { ["note"] = "+1 Sunmote =",
                        34382, -- Judicator's Legguards
                        },
                },
        },
        [34186] = {
                [MAIL] = {
                        { ["note"] = "+1 Sunmote =",
                        34383, -- Kilt of Spiritual Reconstruction
                        },
                },
        },
        [34188] = {
                [LEATHER] = {
                        { ["note"] = "+1 Sunmote =",
                        34385, -- Leggings of the Immortal Beast
                        },
                },
        },
        [34244] = {
                [LEATHER] = {
                        { ["note"] = "+1 Sunmote =",
                        34404, -- Mask of the Fury Hunter
                        },
                },
        },
        [34216] = {
                [PLATE] = {
                        { ["note"] = "+1 Sunmote =",
                        34395, -- Noble Judicator's Chestguard
                        },
                },
        },
        [34170] = {
                [CLOTH] = {
                        { ["note"] = "+1 Sunmote =",
                        34386, -- Pantaloons of Growing Strife
                        },
                },
        },
        [34192] = {
                [PLATE] = {
                        { ["note"] = "+1 Sunmote =",
                        34388, -- Pauldrons of Berserking
                        },
                },
        },
        [34233] = {
                [CLOTH] = {
                        { ["note"] = "+1 Sunmote =",
                        34399, -- Robes of Ghostly Hatred
                        },
                },
        },
        [34202] = {
                [CLOTH] = {
                        { ["note"] = "+1 Sunmote =",
                        34393, -- Shoulderpads of Knowledge's Pursuit
                        },
                },
        },
        [34332] = {
                [MAIL] = {
                        { ["note"] = "+1 Sunmote =",
                        34402, -- Shroud of Chieftain Ner'zhul
                        },
                },
        },
        [34209] = {
                [LEATHER] = {
                        { ["note"] = "+1 Sunmote =",
                        34391, -- Spaulders of Devastation
                        },
                },
        },
        [34193] = {
                [PLATE] = {
                        { ["note"] = "+1 Sunmote =",
                        34389, -- Spaulders of the Thalassian Defender
                        },
                },
        },
        [34212] = {
                [LEATHER] = {
                        { ["note"] = "+1 Sunmote =",
                        34398, -- Utopian Tunic of Elune
                        },
                },
        },
        [34342] = {
                [CLOTH] = {
                        { ["note"] = "+1 Sunmote =",
                        34406, -- Gloves of Tyri's Power
                        },
                },
        },
        [34339] = {
                [CLOTH] = {
                        { ["note"] = "+1 Sunmote =",
                        34405, -- Helm of Arcane Purity
                        },
                },
        },

}

for k,v in pairs(TokensBC) do TokenSplainerTokens[k] = v end