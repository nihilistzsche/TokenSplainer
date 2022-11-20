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

local TokensMoP = {

-- T14 LFR, iLvl 483
        [89266] = {
                [1] = { -- WARRIOR
                        86672, -- Battleplate of Resounding Rings, Raid Finder
                        86668, -- Chestguard of Resounding Rings, Raid Finder
                },
                [3] = { -- HUNTER
                        86638, -- Yaungol Slayer's Tunic, Raid Finder
                },
                [7] = { -- SHAMAN
                        86628, -- Firebird's Cuirass, Raid Finder
                        86629, -- Firebird's Hauberk, Raid Finder
                        86693, -- Firebird's Tunic, Raid Finder
                },
                [10] = { -- MONK
                        86728, -- Red Crane Chestguard, Raid Finder
                        86734, -- Red Crane Tunic, Raid Finder
                        86732, -- Red Crane Vest, Raid Finder
                },
        },
        [89264] = {
                [4] = { -- ROGUE
                        86643, -- Tunic of the Thousandfold Blades, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        86678, -- Breastplate of the Lost Catacomb, Raid Finder
                        86658, -- Chestguard of the Lost Catacomb, Raid Finder
                },
                [8] = { -- MAGE
                        86715, -- Robes of the Burning Scroll, Raid Finder
                },
                [11] = { -- DRUID
                        86653, -- Eternal Blossom Raiment, Raid Finder
                        86695, -- Eternal Blossom Robes, Raid Finder
                        86719, -- Eternal Blossom Tunic, Raid Finder
                        86645, -- Eternal Blossom Vestment, Raid Finder
                },
        },
        [89267] = {
                [4] = { -- ROGUE
                        86640, -- Legguards of the Thousandfold Blades, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        86675, -- Greaves of the Lost Catacomb, Raid Finder
                        86655, -- Legguards of the Lost Catacomb, Raid Finder
                },
                [8] = { -- MAGE
                        86716, -- Leggings of the Burning Scroll, Raid Finder
                },
                [11] = { -- DRUID
                        86722, -- Eternal Blossom Breeches, Raid Finder
                        86646, -- Eternal Blossom Leggings, Raid Finder
                        86650, -- Eternal Blossom Legguards, Raid Finder
                        86696, -- Eternal Blossom Legwraps, Raid Finder
                },
        },
        [89273] = {
                [4] = { -- ROGUE
                        86641, -- Helmet of the Thousandfold Blades, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        86656, -- Faceguard of the Lost Catacomb, Raid Finder
                        86676, -- Helmet of the Lost Catacomb, Raid Finder
                },
                [8] = { -- MAGE
                        86717, -- Hood of the Burning Scroll, Raid Finder
                },
                [11] = { -- DRUID
                        86647, -- Eternal Blossom Cover, Raid Finder
                        86721, -- Eternal Blossom Headguard, Raid Finder
                        86651, -- Eternal Blossom Headpiece, Raid Finder
                        86697, -- Eternal Blossom Helm, Raid Finder
                },
        },
        [89270] = {
                [4] = { -- ROGUE
                        86642, -- Gloves of the Thousandfold Blades, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        86677, -- Gauntlets of the Lost Catacomb, Raid Finder
                        86657, -- Handguards of the Lost Catacomb, Raid Finder
                },
                [8] = { -- MAGE
                        86718, -- Gloves of the Burning Scroll, Raid Finder
                },
                [11] = { -- DRUID
                        86648, -- Eternal Blossom Gloves, Raid Finder
                        86652, -- Eternal Blossom Grips, Raid Finder
                        86720, -- Eternal Blossom Handguards, Raid Finder
                        86698, -- Eternal Blossom Handwraps, Raid Finder
                },
        },
        [89276] = {
                [4] = { -- ROGUE
                        86639, -- Spaulders of the Thousandfold Blades, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        86674, -- Pauldrons of the Lost Catacomb, Raid Finder
                        86654, -- Shoulderguards of the Lost Catacomb, Raid Finder
                },
                [8] = { -- MAGE
                        86714, -- Mantle of the Burning Scroll, Raid Finder
                },
                [11] = { -- DRUID
                        86694, -- Eternal Blossom Mantle, Raid Finder
                        86723, -- Eternal Blossom Shoulderguards, Raid Finder
                        86644, -- Eternal Blossom Shoulderwraps, Raid Finder
                        86649, -- Eternal Blossom Spaulders, Raid Finder
                },
        },
        [89275] = {
                [1] = { -- WARRIOR
                        86666, -- Faceguard of Resounding Rings, Raid Finder
                        86673, -- Helmet of Resounding Rings, Raid Finder
                },
                [3] = { -- HUNTER
                        86636, -- Yaungol Slayer's Headguard, Raid Finder
                },
                [7] = { -- SHAMAN
                        86691, -- Firebird's Faceguard, Raid Finder
                        86631, -- Firebird's Headpiece, Raid Finder
                        86626, -- Firebird's Helmet, Raid Finder
                },
                [10] = { -- MONK
                        86726, -- Red Crane Crown, Raid Finder
                        86736, -- Red Crane Headpiece, Raid Finder
                        86730, -- Red Crane Helm, Raid Finder
                },
        },
        [89272] = {
                [1] = { -- WARRIOR
                        86671, -- Gauntlets of Resounding Rings, Raid Finder
                        86667, -- Handguards of Resounding Rings, Raid Finder
                },
                [3] = { -- HUNTER
                        86637, -- Yaungol Slayer's Gloves, Raid Finder
                },
                [7] = { -- SHAMAN
                        86630, -- Firebird's Gloves, Raid Finder
                        86627, -- Firebird's Grips, Raid Finder
                        86692, -- Firebird's Handwraps, Raid Finder
                },
                [10] = { -- MONK
                        86727, -- Red Crane Gauntlets, Raid Finder
                        86735, -- Red Crane Grips, Raid Finder
                        86729, -- Red Crane Handwraps, Raid Finder
                },
        },
        [89269] = {
                [1] = { -- WARRIOR
                        86665, -- Legguards of Resounding Rings, Raid Finder
                        86670, -- Legplates of Resounding Rings, Raid Finder
                },
                [3] = { -- HUNTER
                        86635, -- Yaungol Slayer's Legguards, Raid Finder
                },
                [7] = { -- SHAMAN
                        86632, -- Firebird's Kilt, Raid Finder
                        86625, -- Firebird's Legguards, Raid Finder
                        86690, -- Firebird's Legwraps, Raid Finder
                },
                [10] = { -- MONK
                        86737, -- Red Crane Leggings, Raid Finder
                        86725, -- Red Crane Legguards, Raid Finder
                        86731, -- Red Crane Legwraps, Raid Finder
                },
        },
        [89278] = {
                [1] = { -- WARRIOR
                        86669, -- Pauldrons of Resounding Rings, Raid Finder
                        86664, -- Shoulderguards of Resounding Rings, Raid Finder
                },
                [3] = { -- HUNTER
                        86634, -- Yaungol Slayer's Spaulders, Raid Finder
                },
                [7] = { -- SHAMAN
                        86689, -- Firebird's Mantle, Raid Finder
                        86633, -- Firebird's Shoulderwraps, Raid Finder
                        86624, -- Firebird's Spaulders, Raid Finder
                },
                [10] = { -- MONK
                        86733, -- Red Crane Mantle, Raid Finder
                        86724, -- Red Crane Shoulderguards, Raid Finder
                        86738, -- Red Crane Spaulders, Raid Finder
                },
        },
        [89274] = {
                [2] = { -- PALADIN
                        86661, -- White Tiger Faceguard, Raid Finder
                        86686, -- White Tiger Headguard, Raid Finder
                        86681, -- White Tiger Helmet, Raid Finder
                },
                [5] = { -- PRIEST
                        86702, -- Guardian Serpent Cowl, Raid Finder
                        86705, -- Guardian Serpent Hood, Raid Finder
                },
                [9] = { -- WARLOCK
                        86710, -- Sha-Skin Hood, Raid Finder
                },
        },
        [89271] = {
                [2] = { -- PALADIN
                        86682, -- White Tiger Gauntlets, Raid Finder
                        86687, -- White Tiger Gloves, Raid Finder
                        86662, -- White Tiger Handguards, Raid Finder
                },
                [5] = { -- PRIEST
                        86704, -- Guardian Serpent Gloves, Raid Finder
                        86703, -- Guardian Serpent Handwraps, Raid Finder
                },
                [9] = { -- WARLOCK
                        86709, -- Sha-Skin Gloves, Raid Finder
                },
        },
        [89268] = {
                [2] = { -- PALADIN
                        86685, -- White Tiger Greaves, Raid Finder
                        86660, -- White Tiger Legguards, Raid Finder
                        86680, -- White Tiger Legplates, Raid Finder
                },
                [5] = { -- PRIEST
                        86706, -- Guardian Serpent Leggings, Raid Finder
                        86701, -- Guardian Serpent Legwraps, Raid Finder
                },
                [9] = { -- WARLOCK
                        86711, -- Sha-Skin Leggings, Raid Finder
                },
        },
        [89277] = {
                [2] = { -- PALADIN
                        86684, -- White Tiger Mantle, Raid Finder
                        86679, -- White Tiger Pauldrons, Raid Finder
                        86659, -- White Tiger Shoulderguards, Raid Finder
                },
                [5] = { -- PRIEST
                        86699, -- Guardian Serpent Mantle, Raid Finder
                        86708, -- Guardian Serpent Shoulderguards, Raid Finder
                },
                [9] = { -- WARLOCK
                        86713, -- Sha-Skin Mantle, Raid Finder
                },
        },
        [89265] = {
                [2] = { -- PALADIN
                        86683, -- White Tiger Battleplate, Raid Finder
                        86688, -- White Tiger Breastplate, Raid Finder
                        86663, -- White Tiger Chestguard, Raid Finder
                },
                [5] = { -- PRIEST
                        86707, -- Guardian Serpent Raiment, Raid Finder
                        86700, -- Guardian Serpent Robes, Raid Finder
                },
                [9] = { -- WARLOCK
                        86712, -- Sha-Skin Robes, Raid Finder
                },
        },

-- T14 Normal, iLvl 496
        [89238] = {
                [1] = { -- WARRIOR
                        85332, -- Battleplate of Resounding Rings
                        85328, -- Chestguard of Resounding Rings
                },
                [3] = { -- HUNTER
                        85298, -- Yaungol Slayer's Tunic
                },
                [7] = { -- SHAMAN
                        85288, -- Firebird's Cuirass
                        85289, -- Firebird's Hauberk
                        85353, -- Firebird's Tunic
                },
                [10] = { -- MONK
                        85388, -- Red Crane Chestguard
                        85394, -- Red Crane Tunic
                        85392, -- Red Crane Vest
                },
        },
        [89239] = {
                [4] = { -- ROGUE
                        85303, -- Tunic of the Thousandfold Blades
                },
                [6] = { -- DEATHKNIGHT
                        85338, -- Breastplate of the Lost Catacomb
                        85318, -- Chestguard of the Lost Catacomb
                },
                [8] = { -- MAGE
                        85375, -- Robes of the Burning Scroll
                },
                [11] = { -- DRUID
                        85313, -- Eternal Blossom Raiment
                        85355, -- Eternal Blossom Robes
                        85379, -- Eternal Blossom Tunic
                        85305, -- Eternal Blossom Vestment
                },
        },
        [89245] = {
                [4] = { -- ROGUE
                        85300, -- Legguards of the Thousandfold Blades
                },
                [6] = { -- DEATHKNIGHT
                        85335, -- Greaves of the Lost Catacomb
                        85315, -- Legguards of the Lost Catacomb
                },
                [8] = { -- MAGE
                        85376, -- Leggings of the Burning Scroll
                },
                [11] = { -- DRUID
                        85382, -- Eternal Blossom Breeches
                        85306, -- Eternal Blossom Leggings
                        85310, -- Eternal Blossom Legguards
                        85356, -- Eternal Blossom Legwraps
                },
        },
        [89234] = {
                [4] = { -- ROGUE
                        85301, -- Helmet of the Thousandfold Blades
                },
                [6] = { -- DEATHKNIGHT
                        85316, -- Faceguard of the Lost Catacomb
                        85336, -- Helmet of the Lost Catacomb
                },
                [8] = { -- MAGE
                        85377, -- Hood of the Burning Scroll
                },
                [11] = { -- DRUID
                        85307, -- Eternal Blossom Cover
                        85381, -- Eternal Blossom Headguard
                        85311, -- Eternal Blossom Headpiece
                        85357, -- Eternal Blossom Helm
                },
        },
        [89242] = {
                [4] = { -- ROGUE
                        85302, -- Gloves of the Thousandfold Blades
                },
                [6] = { -- DEATHKNIGHT
                        85337, -- Gauntlets of the Lost Catacomb
                        85317, -- Handguards of the Lost Catacomb
                },
                [8] = { -- MAGE
                        85378, -- Gloves of the Burning Scroll
                },
                [11] = { -- DRUID
                        85308, -- Eternal Blossom Gloves
                        85312, -- Eternal Blossom Grips
                        85380, -- Eternal Blossom Handguards
                        85358, -- Eternal Blossom Handwraps
                },
        },
        [89248] = {
                [4] = { -- ROGUE
                        85299, -- Spaulders of the Thousandfold Blades
                },
                [6] = { -- DEATHKNIGHT
                        85334, -- Pauldrons of the Lost Catacomb
                        85314, -- Shoulderguards of the Lost Catacomb
                },
                [8] = { -- MAGE
                        85374, -- Mantle of the Burning Scroll
                },
                [11] = { -- DRUID
                        85354, -- Eternal Blossom Mantle
                        85383, -- Eternal Blossom Shoulderguards
                        85304, -- Eternal Blossom Shoulderwraps
                        85309, -- Eternal Blossom Spaulders
                },
        },
        [89236] = {
                [1] = { -- WARRIOR
                        85326, -- Faceguard of Resounding Rings
                        85333, -- Helmet of Resounding Rings
                },
                [3] = { -- HUNTER
                        85296, -- Yaungol Slayer's Headguard
                },
                [7] = { -- SHAMAN
                        85351, -- Firebird's Faceguard
                        85291, -- Firebird's Headpiece
                        85286, -- Firebird's Helmet
                },
                [10] = { -- MONK
                        85386, -- Red Crane Crown
                        85396, -- Red Crane Headpiece
                        85390, -- Red Crane Helm
                },
        },
        [89241] = {
                [1] = { -- WARRIOR
                        85331, -- Gauntlets of Resounding Rings
                        85327, -- Handguards of Resounding Rings
                },
                [3] = { -- HUNTER
                        85297, -- Yaungol Slayer's Gloves
                },
                [7] = { -- SHAMAN
                        85290, -- Firebird's Gloves
                        85287, -- Firebird's Grips
                        85352, -- Firebird's Handwraps
                },
                [10] = { -- MONK
                        85387, -- Red Crane Gauntlets
                        85395, -- Red Crane Grips
                        85389, -- Red Crane Handwraps
                },
        },
        [89244] = {
                [1] = { -- WARRIOR
                        85325, -- Legguards of Resounding Rings
                        85330, -- Legplates of Resounding Rings
                },
                [3] = { -- HUNTER
                        85295, -- Yaungol Slayer's Legguards
                },
                [7] = { -- SHAMAN
                        85292, -- Firebird's Kilt
                        85285, -- Firebird's Legguards
                        85350, -- Firebird's Legwraps
                },
                [10] = { -- MONK
                        85397, -- Red Crane Leggings
                        85385, -- Red Crane Legguards
                        85391, -- Red Crane Legwraps
                },
        },
        [89247] = {
                [1] = { -- WARRIOR
                        85329, -- Pauldrons of Resounding Rings
                        85324, -- Shoulderguards of Resounding Rings
                },
                [3] = { -- HUNTER
                        85294, -- Yaungol Slayer's Spaulders
                },
                [7] = { -- SHAMAN
                        85349, -- Firebird's Mantle
                        85293, -- Firebird's Shoulderwraps
                        85284, -- Firebird's Spaulders
                },
                [10] = { -- MONK
                        85393, -- Red Crane Mantle
                        85384, -- Red Crane Shoulderguards
                        85398, -- Red Crane Spaulders
                },
        },
        [89235] = {
                [2] = { -- PALADIN
                        85321, -- White Tiger Faceguard
                        85346, -- White Tiger Headguard
                        85341, -- White Tiger Helmet
                },
                [5] = { -- PRIEST
                        85362, -- Guardian Serpent Cowl
                        85365, -- Guardian Serpent Hood
                },
                [9] = { -- WARLOCK
                        85370, -- Sha-Skin Hood
                },
        },
        [89240] = {
                [2] = { -- PALADIN
                        85342, -- White Tiger Gauntlets
                        85347, -- White Tiger Gloves
                        85322, -- White Tiger Handguards
                },
                [5] = { -- PRIEST
                        85364, -- Guardian Serpent Gloves
                        85363, -- Guardian Serpent Handwraps
                },
                [9] = { -- WARLOCK
                        85369, -- Sha-Skin Gloves
                },
        },
        [89243] = {
                [2] = { -- PALADIN
                        85345, -- White Tiger Greaves
                        85320, -- White Tiger Legguards
                        85340, -- White Tiger Legplates
                },
                [5] = { -- PRIEST
                        85366, -- Guardian Serpent Leggings
                        85361, -- Guardian Serpent Legwraps
                },
                [9] = { -- WARLOCK
                        85371, -- Sha-Skin Leggings
                },
        },
        [89246] = {
                [2] = { -- PALADIN
                        85344, -- White Tiger Mantle
                        85339, -- White Tiger Pauldrons
                        85319, -- White Tiger Shoulderguards
                },
                [5] = { -- PRIEST
                        85359, -- Guardian Serpent Mantle
                        85368, -- Guardian Serpent Shoulderguards
                },
                [9] = { -- WARLOCK
                        85373, -- Sha-Skin Mantle
                },
        },
        [89237] = {
                [2] = { -- PALADIN
                        85343, -- White Tiger Battleplate
                        85348, -- White Tiger Breastplate
                        85323, -- White Tiger Chestguard
                },
                [5] = { -- PRIEST
                        85367, -- Guardian Serpent Raiment
                        85360, -- Guardian Serpent Robes
                },
                [9] = { -- WARLOCK
                        85372, -- Sha-Skin Robes
                },
        },

-- T14 HC, iLvl 509
        [89251] = {
                [1] = { -- WARRIOR
                        87193, -- Battleplate of Resounding Rings, Heroic
                        87197, -- Chestguard of Resounding Rings, Heroic
                },
                [3] = { -- HUNTER
                        87002, -- Yaungol Slayer's Tunic, Heroic
                },
                [7] = { -- SHAMAN
                        87134, -- Firebird's Cuirass, Heroic
                        87139, -- Firebird's Hauberk, Heroic
                        87129, -- Firebird's Tunic, Heroic
                },
                [10] = { -- MONK
                        87094, -- Red Crane Chestguard, Heroic
                        87084, -- Red Crane Tunic, Heroic
                        87092, -- Red Crane Vest, Heroic
                },
        },
        [89249] = {
                [4] = { -- ROGUE
                        87124, -- Tunic of the Thousandfold Blades, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        86913, -- Breastplate of the Lost Catacomb, Heroic
                        86918, -- Chestguard of the Lost Catacomb, Heroic
                },
                [8] = { -- MAGE
                        87010, -- Robes of the Burning Scroll, Heroic
                },
                [11] = { -- DRUID
                        86923, -- Eternal Blossom Raiment, Heroic
                        86931, -- Eternal Blossom Robes, Heroic
                        86938, -- Eternal Blossom Tunic, Heroic
                        86936, -- Eternal Blossom Vestment, Heroic
                },
        },
        [89252] = {
                [4] = { -- ROGUE
                        87127, -- Legguards of the Thousandfold Blades, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        86916, -- Greaves of the Lost Catacomb, Heroic
                        86921, -- Legguards of the Lost Catacomb, Heroic
                },
                [8] = { -- MAGE
                        87009, -- Leggings of the Burning Scroll, Heroic
                },
                [11] = { -- DRUID
                        86941, -- Eternal Blossom Breeches, Heroic
                        86935, -- Eternal Blossom Leggings, Heroic
                        86926, -- Eternal Blossom Legguards, Heroic
                        86930, -- Eternal Blossom Legwraps, Heroic
                },
        },
        [89258] = {
                [4] = { -- ROGUE
                        87126, -- Helmet of the Thousandfold Blades, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        86920, -- Faceguard of the Lost Catacomb, Heroic
                        86915, -- Helmet of the Lost Catacomb, Heroic
                },
                [8] = { -- MAGE
                        87008, -- Hood of the Burning Scroll, Heroic
                },
                [11] = { -- DRUID
                        86934, -- Eternal Blossom Cover, Heroic
                        86940, -- Eternal Blossom Headguard, Heroic
                        86925, -- Eternal Blossom Headpiece, Heroic
                        86929, -- Eternal Blossom Helm, Heroic
                },
        },
        [89255] = {
                [4] = { -- ROGUE
                        87125, -- Gloves of the Thousandfold Blades, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        86914, -- Gauntlets of the Lost Catacomb, Heroic
                        86919, -- Handguards of the Lost Catacomb, Heroic
                },
                [8] = { -- MAGE
                        87007, -- Gloves of the Burning Scroll, Heroic
                },
                [11] = { -- DRUID
                        86933, -- Eternal Blossom Gloves, Heroic
                        86924, -- Eternal Blossom Grips, Heroic
                        86939, -- Eternal Blossom Handguards, Heroic
                        86928, -- Eternal Blossom Handwraps, Heroic
                },
        },
        [89261] = {
                [4] = { -- ROGUE
                        87128, -- Spaulders of the Thousandfold Blades, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        86917, -- Pauldrons of the Lost Catacomb, Heroic
                        86922, -- Shoulderguards of the Lost Catacomb, Heroic
                },
                [8] = { -- MAGE
                        87011, -- Mantle of the Burning Scroll, Heroic
                },
                [11] = { -- DRUID
                        86932, -- Eternal Blossom Mantle, Heroic
                        86942, -- Eternal Blossom Shoulderguards, Heroic
                        86937, -- Eternal Blossom Shoulderwraps, Heroic
                        86927, -- Eternal Blossom Spaulders, Heroic
                },
        },
        [89260] = {
                [1] = { -- WARRIOR
                        87199, -- Faceguard of Resounding Rings, Heroic
                        87192, -- Helmet of Resounding Rings, Heroic
                },
                [3] = { -- HUNTER
                        87004, -- Yaungol Slayer's Headguard, Heroic
                },
                [7] = { -- SHAMAN
                        87131, -- Firebird's Faceguard, Heroic
                        87141, -- Firebird's Headpiece, Heroic
                        87136, -- Firebird's Helmet, Heroic
                },
                [10] = { -- MONK
                        87096, -- Red Crane Crown, Heroic
                        87086, -- Red Crane Headpiece, Heroic
                        87090, -- Red Crane Helm, Heroic
                },
        },
        [89257] = {
                [1] = { -- WARRIOR
                        87194, -- Gauntlets of Resounding Rings, Heroic
                        87198, -- Handguards of Resounding Rings, Heroic
                },
                [3] = { -- HUNTER
                        87003, -- Yaungol Slayer's Gloves, Heroic
                },
                [7] = { -- SHAMAN
                        87140, -- Firebird's Gloves, Heroic
                        87135, -- Firebird's Grips, Heroic
                        87130, -- Firebird's Handwraps, Heroic
                },
                [10] = { -- MONK
                        87095, -- Red Crane Gauntlets, Heroic
                        87085, -- Red Crane Grips, Heroic
                        87089, -- Red Crane Handwraps, Heroic
                },
        },
        [89254] = {
                [1] = { -- WARRIOR
                        87200, -- Legguards of Resounding Rings, Heroic
                        87195, -- Legplates of Resounding Rings, Heroic
                },
                [3] = { -- HUNTER
                        87005, -- Yaungol Slayer's Legguards, Heroic
                },
                [7] = { -- SHAMAN
                        87142, -- Firebird's Kilt, Heroic
                        87137, -- Firebird's Legguards, Heroic
                        87132, -- Firebird's Legwraps, Heroic
                },
                [10] = { -- MONK
                        87087, -- Red Crane Leggings, Heroic
                        87097, -- Red Crane Legguards, Heroic
                        87091, -- Red Crane Legwraps, Heroic
                },
        },
        [89263] = {
                [1] = { -- WARRIOR
                        87196, -- Pauldrons of Resounding Rings, Heroic
                        87201, -- Shoulderguards of Resounding Rings, Heroic
                },
                [3] = { -- HUNTER
                        87006, -- Yaungol Slayer's Spaulders, Heroic
                },
                [7] = { -- SHAMAN
                        87133, -- Firebird's Mantle, Heroic
                        87143, -- Firebird's Shoulderwraps, Heroic
                        87138, -- Firebird's Spaulders, Heroic
                },
                [10] = { -- MONK
                        87093, -- Red Crane Mantle, Heroic
                        87098, -- Red Crane Shoulderguards, Heroic
                        87088, -- Red Crane Spaulders, Heroic
                },
        },
        [89259] = {
                [2] = { -- PALADIN
                        87111, -- White Tiger Faceguard, Heroic
                        87106, -- White Tiger Headguard, Heroic
                        87101, -- White Tiger Helmet, Heroic
                },
                [5] = { -- PRIEST
                        87115, -- Guardian Serpent Cowl, Heroic
                        87120, -- Guardian Serpent Hood, Heroic
                },
                [9] = { -- WARLOCK
                        87188, -- Sha-Skin Hood, Heroic
                },
        },
        [89256] = {
                [2] = { -- PALADIN
                        87100, -- White Tiger Gauntlets, Heroic
                        87105, -- White Tiger Gloves, Heroic
                        87110, -- White Tiger Handguards, Heroic
                },
                [5] = { -- PRIEST
                        87119, -- Guardian Serpent Gloves, Heroic
                        87114, -- Guardian Serpent Handwraps, Heroic
                },
                [9] = { -- WARLOCK
                        87187, -- Sha-Skin Gloves, Heroic
                },
        },
        [89253] = {
                [2] = { -- PALADIN
                        87107, -- White Tiger Greaves, Heroic
                        87112, -- White Tiger Legguards, Heroic
                        87102, -- White Tiger Legplates, Heroic
                },
                [5] = { -- PRIEST
                        87121, -- Guardian Serpent Leggings, Heroic
                        87116, -- Guardian Serpent Legwraps, Heroic
                },
                [9] = { -- WARLOCK
                        87189, -- Sha-Skin Leggings, Heroic
                },
        },
        [89262] = {
                [2] = { -- PALADIN
                        87108, -- White Tiger Mantle, Heroic
                        87103, -- White Tiger Pauldrons, Heroic
                        87113, -- White Tiger Shoulderguards, Heroic
                },
                [5] = { -- PRIEST
                        87118, -- Guardian Serpent Mantle, Heroic
                        87123, -- Guardian Serpent Shoulderguards, Heroic
                },
                [9] = { -- WARLOCK
                        87191, -- Sha-Skin Mantle, Heroic
                },
        },
        [89250] = {
                [2] = { -- PALADIN
                        87099, -- White Tiger Battleplate, Heroic
                        87104, -- White Tiger Breastplate, Heroic
                        87109, -- White Tiger Chestguard, Heroic
                },
                [5] = { -- PRIEST
                        87122, -- Guardian Serpent Raiment, Heroic
                        87117, -- Guardian Serpent Robes, Heroic
                },
                [9] = { -- WARLOCK
                        87190, -- Sha-Skin Robes, Heroic
                },
        },

-- T15 LFR, iLvl 502
        [95824] = {
                [1] = { -- WARRIOR
                        95987, -- Battleplate of the Last Mogu, Raid Finder
                        95991, -- Chestguard of the Last Mogu, Raid Finder
                },
                [3] = { -- HUNTER
                        95882, -- Saurok Stalker's Tunic, Raid Finder
                },
                [7] = { -- SHAMAN
                        95945, -- Cuirass of the Witch Doctor, Raid Finder
                        95950, -- Hauberk of the Witch Doctor, Raid Finder
                        95940, -- Tunic of the Witch Doctor, Raid Finder
                },
                [10] = { -- MONK
                        95905, -- Fire-Charm Chestguard, Raid Finder
                        95895, -- Fire-Charm Tunic, Raid Finder
                        95903, -- Fire-Charm Vest, Raid Finder
                },
        },
        [95822] = {
                [4] = { -- ROGUE
                        95935, -- Nine-Tailed Tunic, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        95825, -- Breastplate of the All-Consuming Maw, Raid Finder
                        95830, -- Chestguard of the All-Consuming Maw, Raid Finder
                },
                [8] = { -- MAGE
                        95893, -- Robes of the Chromatic Hydra, Raid Finder
                },
                [11] = { -- DRUID
                        95835, -- Raiment of the Haunted Forest, Raid Finder
                        95843, -- Robes of the Haunted Forest, Raid Finder
                        95850, -- Tunic of the Haunted Forest, Raid Finder
                        95848, -- Vestment of the Haunted Forest, Raid Finder
                },
        },
        [95887] = {
                [4] = { -- ROGUE
                        95938, -- Nine-Tailed Legguards, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        95828, -- Greaves of the All-Consuming Maw, Raid Finder
                        95833, -- Legguards of the All-Consuming Maw, Raid Finder
                },
                [8] = { -- MAGE
                        95892, -- Leggings of the Chromatic Hydra, Raid Finder
                },
                [11] = { -- DRUID
                        95853, -- Breeches of the Haunted Forest, Raid Finder
                        95847, -- Leggings of the Haunted Forest, Raid Finder
                        95838, -- Legguards of the Haunted Forest, Raid Finder
                        95842, -- Legwraps of the Haunted Forest, Raid Finder
                },
        },
        [95879] = {
                [4] = { -- ROGUE
                        95937, -- Nine-Tailed Helmet, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        95832, -- Faceguard of the All-Consuming Maw, Raid Finder
                        95827, -- Helmet of the All-Consuming Maw, Raid Finder
                },
                [8] = { -- MAGE
                        95891, -- Hood of the Chromatic Hydra, Raid Finder
                },
                [11] = { -- DRUID
                        95846, -- Cover of the Haunted Forest, Raid Finder
                        95852, -- Headguard of the Haunted Forest, Raid Finder
                        95837, -- Headpiece of the Haunted Forest, Raid Finder
                        95841, -- Helm of the Haunted Forest, Raid Finder
                },
        },
        [95880] = {
                [2] = { -- PALADIN
                        95922, -- Lightning Emperor's Faceguard, Raid Finder
                        95917, -- Lightning Emperor's Headguard, Raid Finder
                        95912, -- Lightning Emperor's Helmet, Raid Finder
                },
                [5] = { -- PRIEST
                        95926, -- Cowl of the Exorcist, Raid Finder
                        95931, -- Hood of the Exorcist, Raid Finder
                },
                [9] = { -- WARLOCK
                        95982, -- Hood of the Thousandfold Hells, Raid Finder
                },
        },
        [95881] = {
                [1] = { -- WARRIOR
                        95993, -- Faceguard of the Last Mogu, Raid Finder
                        95986, -- Helmet of the Last Mogu, Raid Finder
                },
                [3] = { -- HUNTER
                        95884, -- Saurok Stalker's Headguard, Raid Finder
                },
                [7] = { -- SHAMAN
                        95942, -- Faceguard of the Witch Doctor, Raid Finder
                        95952, -- Headpiece of the Witch Doctor, Raid Finder
                        95947, -- Helmet of the Witch Doctor, Raid Finder
                },
                [10] = { -- MONK
                        95907, -- Fire-Charm Crown, Raid Finder
                        95897, -- Fire-Charm Headpiece, Raid Finder
                        95901, -- Fire-Charm Helm, Raid Finder
                },
        },
        [95857] = {
                [1] = { -- WARRIOR
                        95988, -- Gauntlets of the Last Mogu, Raid Finder
                        95992, -- Handguards of the Last Mogu, Raid Finder
                },
                [3] = { -- HUNTER
                        95883, -- Saurok Stalker's Gloves, Raid Finder
                },
                [7] = { -- SHAMAN
                        95951, -- Gloves of the Witch Doctor, Raid Finder
                        95946, -- Grips of the Witch Doctor, Raid Finder
                        95941, -- Handwraps of the Witch Doctor, Raid Finder
                },
                [10] = { -- MONK
                        95906, -- Fire-Charm Gauntlets, Raid Finder
                        95896, -- Fire-Charm Grips, Raid Finder
                        95900, -- Fire-Charm Handwraps, Raid Finder
                },
        },
        [95889] = {
                [1] = { -- WARRIOR
                        95994, -- Legguards of the Last Mogu, Raid Finder
                        95989, -- Legplates of the Last Mogu, Raid Finder
                },
                [3] = { -- HUNTER
                        95885, -- Saurok Stalker's Legguards, Raid Finder
                },
                [7] = { -- SHAMAN
                        95953, -- Kilt of the Witch Doctor, Raid Finder
                        95948, -- Legguards of the Witch Doctor, Raid Finder
                        95943, -- Legwraps of the Witch Doctor, Raid Finder
                },
                [10] = { -- MONK
                        95898, -- Fire-Charm Leggings, Raid Finder
                        95908, -- Fire-Charm Legguards, Raid Finder
                        95902, -- Fire-Charm Legwraps, Raid Finder
                },
        },
        [95957] = {
                [1] = { -- WARRIOR
                        95990, -- Pauldrons of the Last Mogu, Raid Finder
                        95995, -- Shoulderguards of the Last Mogu, Raid Finder
                },
                [3] = { -- HUNTER
                        95886, -- Saurok Stalker's Spaulders, Raid Finder
                },
                [7] = { -- SHAMAN
                        95944, -- Mantle of the Witch Doctor, Raid Finder
                        95954, -- Shoulderwraps of the Witch Doctor, Raid Finder
                        95949, -- Spaulders of the Witch Doctor, Raid Finder
                },
                [10] = { -- MONK
                        95904, -- Fire-Charm Mantle, Raid Finder
                        95909, -- Fire-Charm Shoulderguards, Raid Finder
                        95899, -- Fire-Charm Spaulders, Raid Finder
                },
        },
        [95855] = {
                [4] = { -- ROGUE
                        95936, -- Nine-Tailed Gloves, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        95826, -- Gauntlets of the All-Consuming Maw, Raid Finder
                        95831, -- Handguards of the All-Consuming Maw, Raid Finder
                },
                [8] = { -- MAGE
                        95890, -- Gloves of the Chromatic Hydra, Raid Finder
                },
                [11] = { -- DRUID
                        95845, -- Gloves of the Haunted Forest, Raid Finder
                        95836, -- Grips of the Haunted Forest, Raid Finder
                        95851, -- Handguards of the Haunted Forest, Raid Finder
                        95840, -- Handwraps of the Haunted Forest, Raid Finder
                },
        },
        [95856] = {
                [2] = { -- PALADIN
                        95911, -- Lightning Emperor's Gauntlets, Raid Finder
                        95916, -- Lightning Emperor's Gloves, Raid Finder
                        95921, -- Lightning Emperor's Handguards, Raid Finder
                },
                [5] = { -- PRIEST
                        95930, -- Gloves of the Exorcist, Raid Finder
                        95925, -- Handwraps of the Exorcist, Raid Finder
                },
                [9] = { -- WARLOCK
                        95981, -- Gloves of the Thousandfold Hells, Raid Finder
                },
        },
        [95888] = {
                [2] = { -- PALADIN
                        95918, -- Lightning Emperor's Greaves, Raid Finder
                        95923, -- Lightning Emperor's Legguards, Raid Finder
                        95913, -- Lightning Emperor's Legplates, Raid Finder
                },
                [5] = { -- PRIEST
                        95932, -- Leggings of the Exorcist, Raid Finder
                        95927, -- Legwraps of the Exorcist, Raid Finder
                },
                [9] = { -- WARLOCK
                        95983, -- Leggings of the Thousandfold Hells, Raid Finder
                },
        },
        [95823] = {
                [2] = { -- PALADIN
                        95910, -- Lightning Emperor's Battleplate, Raid Finder
                        95915, -- Lightning Emperor's Breastplate, Raid Finder
                        95920, -- Lightning Emperor's Chestguard, Raid Finder
                },
                [5] = { -- PRIEST
                        95933, -- Raiment of the Exorcist, Raid Finder
                        95928, -- Robes of the Exorcist, Raid Finder
                },
                [9] = { -- WARLOCK
                        95984, -- Robes of the Thousandfold Hells, Raid Finder
                },
        },
        [95956] = {
                [2] = { -- PALADIN
                        95919, -- Lightning Emperor's Mantle, Raid Finder
                        95914, -- Lightning Emperor's Pauldrons, Raid Finder
                        95924, -- Lightning Emperor's Shoulderguards, Raid Finder
                },
                [5] = { -- PRIEST
                        95929, -- Mantle of the Exorcist, Raid Finder
                        95934, -- Shoulderguards of the Exorcist, Raid Finder
                },
                [9] = { -- WARLOCK
                        95985, -- Mantle of the Thousandfold Hells, Raid Finder
                },
        },
        [95955] = {
                [4] = { -- ROGUE
                        95939, -- Nine-Tailed Spaulders, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        95829, -- Pauldrons of the All-Consuming Maw, Raid Finder
                        95834, -- Shoulderguards of the All-Consuming Maw, Raid Finder
                },
                [8] = { -- MAGE
                        95894, -- Mantle of the Chromatic Hydra, Raid Finder
                },
                [11] = { -- DRUID
                        95844, -- Mantle of the Haunted Forest, Raid Finder
                        95854, -- Shoulderguards of the Haunted Forest, Raid Finder
                        95849, -- Shoulderwraps of the Haunted Forest, Raid Finder
                        95839, -- Spaulders of the Haunted Forest, Raid Finder
                },
        },

-- T15 Normal, iLvl 522
        [95579] = {
                [1] = { -- WARRIOR
                        95331, -- Battleplate of the Last Mogu
                        95335, -- Chestguard of the Last Mogu
                },
                [3] = { -- HUNTER
                        95255, -- Saurok Stalker's Tunic
                },
                [7] = { -- SHAMAN
                        95315, -- Cuirass of the Witch Doctor
                        95320, -- Hauberk of the Witch Doctor
                        95310, -- Tunic of the Witch Doctor
                },
                [10] = { -- MONK
                        95275, -- Fire-Charm Chestguard
                        95265, -- Fire-Charm Tunic
                        95273, -- Fire-Charm Vest
                },
        },
        [95569] = {
                [4] = { -- ROGUE
                        95305, -- Nine-Tailed Tunic
                },
                [6] = { -- DEATHKNIGHT
                        95225, -- Breastplate of the All-Consuming Maw
                        95230, -- Chestguard of the All-Consuming Maw
                },
                [8] = { -- MAGE
                        95263, -- Robes of the Chromatic Hydra
                },
                [11] = { -- DRUID
                        95235, -- Raiment of the Haunted Forest
                        95243, -- Robes of the Haunted Forest
                        95250, -- Tunic of the Haunted Forest
                        95248, -- Vestment of the Haunted Forest
                },
        },
        [95572] = {
                [4] = { -- ROGUE
                        95308, -- Nine-Tailed Legguards
                },
                [6] = { -- DEATHKNIGHT
                        95228, -- Greaves of the All-Consuming Maw
                        95233, -- Legguards of the All-Consuming Maw
                },
                [8] = { -- MAGE
                        95262, -- Leggings of the Chromatic Hydra
                },
                [11] = { -- DRUID
                        95253, -- Breeches of the Haunted Forest
                        95247, -- Leggings of the Haunted Forest
                        95238, -- Legguards of the Haunted Forest
                        95242, -- Legwraps of the Haunted Forest
                },
        },
        [95571] = {
                [4] = { -- ROGUE
                        95307, -- Nine-Tailed Helmet
                },
                [6] = { -- DEATHKNIGHT
                        95232, -- Faceguard of the All-Consuming Maw
                        95227, -- Helmet of the All-Consuming Maw
                },
                [8] = { -- MAGE
                        95261, -- Hood of the Chromatic Hydra
                },
                [11] = { -- DRUID
                        95246, -- Cover of the Haunted Forest
                        95252, -- Headguard of the Haunted Forest
                        95237, -- Headpiece of the Haunted Forest
                        95241, -- Helm of the Haunted Forest
                },
        },
        [95577] = {
                [2] = { -- PALADIN
                        95292, -- Lightning Emperor's Faceguard
                        95287, -- Lightning Emperor's Headguard
                        95282, -- Lightning Emperor's Helmet
                },
                [5] = { -- PRIEST
                        95296, -- Cowl of the Exorcist
                        95301, -- Hood of the Exorcist
                },
                [9] = { -- WARLOCK
                        95326, -- Hood of the Thousandfold Hells
                },
        },
        [95582] = {
                [1] = { -- WARRIOR
                        95337, -- Faceguard of the Last Mogu
                        95330, -- Helmet of the Last Mogu
                },
                [3] = { -- HUNTER
                        95257, -- Saurok Stalker's Headguard
                },
                [7] = { -- SHAMAN
                        95312, -- Faceguard of the Witch Doctor
                        95322, -- Headpiece of the Witch Doctor
                        95317, -- Helmet of the Witch Doctor
                },
                [10] = { -- MONK
                        95277, -- Fire-Charm Crown
                        95267, -- Fire-Charm Headpiece
                        95271, -- Fire-Charm Helm
                },
        },
        [95580] = {
                [1] = { -- WARRIOR
                        95332, -- Gauntlets of the Last Mogu
                        95336, -- Handguards of the Last Mogu
                },
                [3] = { -- HUNTER
                        95256, -- Saurok Stalker's Gloves
                },
                [7] = { -- SHAMAN
                        95321, -- Gloves of the Witch Doctor
                        95316, -- Grips of the Witch Doctor
                        95311, -- Handwraps of the Witch Doctor
                },
                [10] = { -- MONK
                        95276, -- Fire-Charm Gauntlets
                        95266, -- Fire-Charm Grips
                        95270, -- Fire-Charm Handwraps
                },
        },
        [95581] = {
                [1] = { -- WARRIOR
                        95338, -- Legguards of the Last Mogu
                        95333, -- Legplates of the Last Mogu
                },
                [3] = { -- HUNTER
                        95258, -- Saurok Stalker's Legguards
                },
                [7] = { -- SHAMAN
                        95323, -- Kilt of the Witch Doctor
                        95318, -- Legguards of the Witch Doctor
                        95313, -- Legwraps of the Witch Doctor
                },
                [10] = { -- MONK
                        95268, -- Fire-Charm Leggings
                        95278, -- Fire-Charm Legguards
                        95272, -- Fire-Charm Legwraps
                },
        },
        [95583] = {
                [1] = { -- WARRIOR
                        95334, -- Pauldrons of the Last Mogu
                        95339, -- Shoulderguards of the Last Mogu
                },
                [3] = { -- HUNTER
                        95259, -- Saurok Stalker's Spaulders
                },
                [7] = { -- SHAMAN
                        95314, -- Mantle of the Witch Doctor
                        95324, -- Shoulderwraps of the Witch Doctor
                        95319, -- Spaulders of the Witch Doctor
                },
                [10] = { -- MONK
                        95274, -- Fire-Charm Mantle
                        95279, -- Fire-Charm Shoulderguards
                        95269, -- Fire-Charm Spaulders
                },
        },
        [95570] = {
                [4] = { -- ROGUE
                        95306, -- Nine-Tailed Gloves
                },
                [6] = { -- DEATHKNIGHT
                        95226, -- Gauntlets of the All-Consuming Maw
                        95231, -- Handguards of the All-Consuming Maw
                },
                [8] = { -- MAGE
                        95260, -- Gloves of the Chromatic Hydra
                },
                [11] = { -- DRUID
                        95245, -- Gloves of the Haunted Forest
                        95236, -- Grips of the Haunted Forest
                        95251, -- Handguards of the Haunted Forest
                        95240, -- Handwraps of the Haunted Forest
                },
        },
        [95575] = {
                [2] = { -- PALADIN
                        95281, -- Lightning Emperor's Gauntlets
                        95286, -- Lightning Emperor's Gloves
                        95291, -- Lightning Emperor's Handguards
                },
                [5] = { -- PRIEST
                        95300, -- Gloves of the Exorcist
                        95295, -- Handwraps of the Exorcist
                },
                [9] = { -- WARLOCK
                        95325, -- Gloves of the Thousandfold Hells
                },
        },
        [95576] = {
                [2] = { -- PALADIN
                        95288, -- Lightning Emperor's Greaves
                        95293, -- Lightning Emperor's Legguards
                        95283, -- Lightning Emperor's Legplates
                },
                [5] = { -- PRIEST
                        95302, -- Leggings of the Exorcist
                        95297, -- Legwraps of the Exorcist
                },
                [9] = { -- WARLOCK
                        95327, -- Leggings of the Thousandfold Hells
                },
        },
        [95574] = {
                [2] = { -- PALADIN
                        95280, -- Lightning Emperor's Battleplate
                        95285, -- Lightning Emperor's Breastplate
                        95290, -- Lightning Emperor's Chestguard
                },
                [5] = { -- PRIEST
                        95303, -- Raiment of the Exorcist
                        95298, -- Robes of the Exorcist
                },
                [9] = { -- WARLOCK
                        95328, -- Robes of the Thousandfold Hells
                },
        },
        [95578] = {
                [2] = { -- PALADIN
                        95289, -- Lightning Emperor's Mantle
                        95284, -- Lightning Emperor's Pauldrons
                        95294, -- Lightning Emperor's Shoulderguards
                },
                [5] = { -- PRIEST
                        95299, -- Mantle of the Exorcist
                        95304, -- Shoulderguards of the Exorcist
                },
                [9] = { -- WARLOCK
                        95329, -- Mantle of the Thousandfold Hells
                },
        },
        [95573] = {
                [4] = { -- ROGUE
                        95309, -- Nine-Tailed Spaulders
                },
                [6] = { -- DEATHKNIGHT
                        95229, -- Pauldrons of the All-Consuming Maw
                        95234, -- Shoulderguards of the All-Consuming Maw
                },
                [8] = { -- MAGE
                        95264, -- Mantle of the Chromatic Hydra
                },
                [11] = { -- DRUID
                        95244, -- Mantle of the Haunted Forest
                        95254, -- Shoulderguards of the Haunted Forest
                        95249, -- Shoulderwraps of the Haunted Forest
                        95239, -- Spaulders of the Haunted Forest
                },
        },

-- T15 HC, iLvl 535
        [96568] = {
                [1] = { -- WARRIOR
                        96731, -- Battleplate of the Last Mogu, Heroic
                        96735, -- Chestguard of the Last Mogu, Heroic
                },
                [3] = { -- HUNTER
                        96626, -- Saurok Stalker's Tunic, Heroic
                },
                [7] = { -- SHAMAN
                        96689, -- Cuirass of the Witch Doctor, Heroic
                        96694, -- Hauberk of the Witch Doctor, Heroic
                        96684, -- Tunic of the Witch Doctor, Heroic
                },
                [10] = { -- MONK
                        96649, -- Fire-Charm Chestguard, Heroic
                        96639, -- Fire-Charm Tunic, Heroic
                        96647, -- Fire-Charm Vest, Heroic
                },
        },
        [96566] = {
                [4] = { -- ROGUE
                        96679, -- Nine-Tailed Tunic, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        96569, -- Breastplate of the All-Consuming Maw, Heroic
                        96574, -- Chestguard of the All-Consuming Maw, Heroic
                },
                [8] = { -- MAGE
                        96637, -- Robes of the Chromatic Hydra, Heroic
                },
                [11] = { -- DRUID
                        96579, -- Raiment of the Haunted Forest, Heroic
                        96587, -- Robes of the Haunted Forest, Heroic
                        96594, -- Tunic of the Haunted Forest, Heroic
                        96592, -- Vestment of the Haunted Forest, Heroic
                },
        },
        [96631] = {
                [4] = { -- ROGUE
                        96682, -- Nine-Tailed Legguards, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        96572, -- Greaves of the All-Consuming Maw, Heroic
                        96577, -- Legguards of the All-Consuming Maw, Heroic
                },
                [8] = { -- MAGE
                        96636, -- Leggings of the Chromatic Hydra, Heroic
                },
                [11] = { -- DRUID
                        96597, -- Breeches of the Haunted Forest, Heroic
                        96591, -- Leggings of the Haunted Forest, Heroic
                        96582, -- Legguards of the Haunted Forest, Heroic
                        96586, -- Legwraps of the Haunted Forest, Heroic
                },
        },
        [96623] = {
                [4] = { -- ROGUE
                        96681, -- Nine-Tailed Helmet, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        96576, -- Faceguard of the All-Consuming Maw, Heroic
                        96571, -- Helmet of the All-Consuming Maw, Heroic
                },
                [8] = { -- MAGE
                        96635, -- Hood of the Chromatic Hydra, Heroic
                },
                [11] = { -- DRUID
                        96590, -- Cover of the Haunted Forest, Heroic
                        96596, -- Headguard of the Haunted Forest, Heroic
                        96581, -- Headpiece of the Haunted Forest, Heroic
                        96585, -- Helm of the Haunted Forest, Heroic
                },
        },
        [96624] = {
                [2] = { -- PALADIN
                        96666, -- Lightning Emperor's Faceguard, Heroic
                        96661, -- Lightning Emperor's Headguard, Heroic
                        96656, -- Lightning Emperor's Helmet, Heroic
                },
                [5] = { -- PRIEST
                        96670, -- Cowl of the Exorcist, Heroic
                        96675, -- Hood of the Exorcist, Heroic
                },
                [9] = { -- WARLOCK
                        96726, -- Hood of the Thousandfold Hells, Heroic
                },
        },
        [96625] = {
                [1] = { -- WARRIOR
                        96737, -- Faceguard of the Last Mogu, Heroic
                        96730, -- Helmet of the Last Mogu, Heroic
                },
                [3] = { -- HUNTER
                        96628, -- Saurok Stalker's Headguard, Heroic
                },
                [7] = { -- SHAMAN
                        96686, -- Faceguard of the Witch Doctor, Heroic
                        96696, -- Headpiece of the Witch Doctor, Heroic
                        96691, -- Helmet of the Witch Doctor, Heroic
                },
                [10] = { -- MONK
                        96651, -- Fire-Charm Crown, Heroic
                        96641, -- Fire-Charm Headpiece, Heroic
                        96645, -- Fire-Charm Helm, Heroic
                },
        },
        [96601] = {
                [1] = { -- WARRIOR
                        96732, -- Gauntlets of the Last Mogu, Heroic
                        96736, -- Handguards of the Last Mogu, Heroic
                },
                [3] = { -- HUNTER
                        96627, -- Saurok Stalker's Gloves, Heroic
                },
                [7] = { -- SHAMAN
                        96695, -- Gloves of the Witch Doctor, Heroic
                        96690, -- Grips of the Witch Doctor, Heroic
                        96685, -- Handwraps of the Witch Doctor, Heroic
                },
                [10] = { -- MONK
                        96650, -- Fire-Charm Gauntlets, Heroic
                        96640, -- Fire-Charm Grips, Heroic
                        96644, -- Fire-Charm Handwraps, Heroic
                },
        },
        [96633] = {
                [1] = { -- WARRIOR
                        96738, -- Legguards of the Last Mogu, Heroic
                        96733, -- Legplates of the Last Mogu, Heroic
                },
                [3] = { -- HUNTER
                        96629, -- Saurok Stalker's Legguards, Heroic
                },
                [7] = { -- SHAMAN
                        96697, -- Kilt of the Witch Doctor, Heroic
                        96692, -- Legguards of the Witch Doctor, Heroic
                        96687, -- Legwraps of the Witch Doctor, Heroic
                },
                [10] = { -- MONK
                        96642, -- Fire-Charm Leggings, Heroic
                        96652, -- Fire-Charm Legguards, Heroic
                        96646, -- Fire-Charm Legwraps, Heroic
                },
        },
        [96701] = {
                [1] = { -- WARRIOR
                        96734, -- Pauldrons of the Last Mogu, Heroic
                        96739, -- Shoulderguards of the Last Mogu, Heroic
                },
                [3] = { -- HUNTER
                        96630, -- Saurok Stalker's Spaulders, Heroic
                },
                [7] = { -- SHAMAN
                        96688, -- Mantle of the Witch Doctor, Heroic
                        96698, -- Shoulderwraps of the Witch Doctor, Heroic
                        96693, -- Spaulders of the Witch Doctor, Heroic
                },
                [10] = { -- MONK
                        96648, -- Fire-Charm Mantle, Heroic
                        96653, -- Fire-Charm Shoulderguards, Heroic
                        96643, -- Fire-Charm Spaulders, Heroic
                },
        },
        [96599] = {
                [4] = { -- ROGUE
                        96680, -- Nine-Tailed Gloves, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        96570, -- Gauntlets of the All-Consuming Maw, Heroic
                        96575, -- Handguards of the All-Consuming Maw, Heroic
                },
                [8] = { -- MAGE
                        96634, -- Gloves of the Chromatic Hydra, Heroic
                },
                [11] = { -- DRUID
                        96589, -- Gloves of the Haunted Forest, Heroic
                        96580, -- Grips of the Haunted Forest, Heroic
                        96595, -- Handguards of the Haunted Forest, Heroic
                        96584, -- Handwraps of the Haunted Forest, Heroic
                },
        },
        [96600] = {
                [2] = { -- PALADIN
                        96655, -- Lightning Emperor's Gauntlets, Heroic
                        96660, -- Lightning Emperor's Gloves, Heroic
                        96665, -- Lightning Emperor's Handguards, Heroic
                },
                [5] = { -- PRIEST
                        96674, -- Gloves of the Exorcist, Heroic
                        96669, -- Handwraps of the Exorcist, Heroic
                },
                [9] = { -- WARLOCK
                        96725, -- Gloves of the Thousandfold Hells, Heroic
                },
        },
        [96632] = {
                [2] = { -- PALADIN
                        96662, -- Lightning Emperor's Greaves, Heroic
                        96667, -- Lightning Emperor's Legguards, Heroic
                        96657, -- Lightning Emperor's Legplates, Heroic
                },
                [5] = { -- PRIEST
                        96676, -- Leggings of the Exorcist, Heroic
                        96671, -- Legwraps of the Exorcist, Heroic
                },
                [9] = { -- WARLOCK
                        96727, -- Leggings of the Thousandfold Hells, Heroic
                },
        },
        [96567] = {
                [2] = { -- PALADIN
                        96654, -- Lightning Emperor's Battleplate, Heroic
                        96659, -- Lightning Emperor's Breastplate, Heroic
                        96664, -- Lightning Emperor's Chestguard, Heroic
                },
                [5] = { -- PRIEST
                        96677, -- Raiment of the Exorcist, Heroic
                        96672, -- Robes of the Exorcist, Heroic
                },
                [9] = { -- WARLOCK
                        96728, -- Robes of the Thousandfold Hells, Heroic
                },
        },
        [96700] = {
                [2] = { -- PALADIN
                        96663, -- Lightning Emperor's Mantle, Heroic
                        96658, -- Lightning Emperor's Pauldrons, Heroic
                        96668, -- Lightning Emperor's Shoulderguards, Heroic
                },
                [5] = { -- PRIEST
                        96673, -- Mantle of the Exorcist, Heroic
                        96678, -- Shoulderguards of the Exorcist, Heroic
                },
                [9] = { -- WARLOCK
                        96729, -- Mantle of the Thousandfold Hells, Heroic
                },
        },
        [96699] = {
                [4] = { -- ROGUE
                        96683, -- Nine-Tailed Spaulders, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        96573, -- Pauldrons of the All-Consuming Maw, Heroic
                        96578, -- Shoulderguards of the All-Consuming Maw, Heroic
                },
                [8] = { -- MAGE
                        96638, -- Mantle of the Chromatic Hydra, Heroic
                },
                [11] = { -- DRUID
                        96588, -- Mantle of the Haunted Forest, Heroic
                        96598, -- Shoulderguards of the Haunted Forest, Heroic
                        96593, -- Shoulderwraps of the Haunted Forest, Heroic
                        96583, -- Spaulders of the Haunted Forest, Heroic
                },
        },

-- T16 LFR, iLvl 528
        [99679] = {
                [1] = { -- WARRIOR
                        99047, -- Battleplate of the Prehistoric Marauder, Raid Finder
                        99037, -- Chestguard of the Prehistoric Marauder, Raid Finder
                },
                [3] = { -- HUNTER
                        99085, -- Tunic of the Unblinking Vigil, Raid Finder
                },
                [7] = { -- SHAMAN
                        98992, -- Cuirass of Celestial Harmony, Raid Finder
                        99087, -- Hauberk of Celestial Harmony, Raid Finder
                        99011, -- Tunic of Celestial Harmony, Raid Finder
                },
                [10] = { -- MONK
                        99063, -- Chestguard of Seven Sacred Seals, Raid Finder
                        99071, -- Tunic of Seven Sacred Seals, Raid Finder
                        99061, -- Vest of Seven Sacred Seals, Raid Finder
                },
        },
        [99678] = {
                [2] = { -- PALADIN
                        99052, -- Battleplate of Winged Triumph, Raid Finder
                        99003, -- Breastplate of Winged Triumph, Raid Finder
                        99031, -- Chestguard of Winged Triumph, Raid Finder
                },
                [5] = { -- PRIEST
                        99004, -- Raiment of the Ternion Glory, Raid Finder
                        99017, -- Robes of the Ternion Glory, Raid Finder
                },
                [9] = { -- WARLOCK
                        99056, -- Robes of the Horned Nightmare, Raid Finder
                },
        },
        [99677] = {
                [4] = { -- ROGUE
                        99006, -- Tunic of the Barbed Assassin, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        99066, -- Breastplate of Cyclopean Dread, Raid Finder
                        99060, -- Chestguard of Cyclopean Dread, Raid Finder
                },
                [8] = { -- MAGE
                        99078, -- Chronomancer Robes, Raid Finder
                },
                [11] = { -- DRUID
                        99041, -- Raiment of the Shattered Vale, Raid Finder
                        99015, -- Robes of the Shattered Vale, Raid Finder
                        98999, -- Tunic of the Shattered Vale, Raid Finder
                        98997, -- Vestment of the Shattered Vale, Raid Finder
                },
        },
        [99674] = {
                [4] = { -- ROGUE
                        99009, -- Legguards of the Barbed Assassin, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        99058, -- Greaves of Cyclopean Dread, Raid Finder
                        99039, -- Legguards of Cyclopean Dread, Raid Finder
                },
                [8] = { -- MAGE
                        99077, -- Chronomancer Leggings, Raid Finder
                },
                [11] = { -- DRUID
                        98981, -- Breeches of the Shattered Vale, Raid Finder
                        98996, -- Leggings of the Shattered Vale, Raid Finder
                        99044, -- Legguards of the Shattered Vale, Raid Finder
                        99014, -- Legwraps of the Shattered Vale, Raid Finder
                },
        },
        [99680] = {
                [4] = { -- ROGUE
                        99007, -- Gloves of the Barbed Assassin, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        99067, -- Gauntlets of Cyclopean Dread, Raid Finder
                        99048, -- Handguards of Cyclopean Dread, Raid Finder
                },
                [8] = { -- MAGE
                        99083, -- Chronomancer Gloves, Raid Finder
                },
                [11] = { -- DRUID
                        98994, -- Gloves of the Shattered Vale, Raid Finder
                        99042, -- Grips of the Shattered Vale, Raid Finder
                        99000, -- Handguards of the Shattered Vale, Raid Finder
                        99012, -- Handwraps of the Shattered Vale, Raid Finder
                },
        },
        [99671] = {
                [4] = { -- ROGUE
                        99008, -- Helmet of the Barbed Assassin, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        99049, -- Faceguard of Cyclopean Dread, Raid Finder
                        99057, -- Helmet of Cyclopean Dread, Raid Finder
                },
                [8] = { -- MAGE
                        99084, -- Chronomancer Hood, Raid Finder
                },
                [11] = { -- DRUID
                        98995, -- Cover of the Shattered Vale, Raid Finder
                        99001, -- Headguard of the Shattered Vale, Raid Finder
                        99043, -- Headpiece of the Shattered Vale, Raid Finder
                        99013, -- Helm of the Shattered Vale, Raid Finder
                },
        },
        [99668] = {
                [4] = { -- ROGUE
                        99010, -- Spaulders of the Barbed Assassin, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        99059, -- Pauldrons of Cyclopean Dread, Raid Finder
                        99040, -- Shoulderguards of Cyclopean Dread, Raid Finder
                },
                [8] = { -- MAGE
                        99079, -- Chronomancer Mantle, Raid Finder
                },
                [11] = { -- DRUID
                        99016, -- Mantle of the Shattered Vale, Raid Finder
                        98978, -- Shoulderguards of the Shattered Vale, Raid Finder
                        98998, -- Shoulderwraps of the Shattered Vale, Raid Finder
                        99022, -- Spaulders of the Shattered Vale, Raid Finder
                },
        },
        [99672] = {
                [2] = { -- PALADIN
                        99029, -- Faceguard of Winged Triumph, Raid Finder
                        98979, -- Headguard of Winged Triumph, Raid Finder
                        98985, -- Helmet of Winged Triumph, Raid Finder
                },
                [5] = { -- PRIEST
                        99024, -- Cowl of the Ternion Glory, Raid Finder
                        99020, -- Hood of the Ternion Glory, Raid Finder
                },
                [9] = { -- WARLOCK
                        99054, -- Hood of the Horned Nightmare, Raid Finder
                },
        },
        [99673] = {
                [1] = { -- WARRIOR
                        99032, -- Faceguard of the Prehistoric Marauder, Raid Finder
                        99046, -- Helmet of the Prehistoric Marauder, Raid Finder
                },
                [3] = { -- HUNTER
                        99080, -- Headguard of the Unblinking Vigil, Raid Finder
                },
                [7] = { -- SHAMAN
                        98989, -- Faceguard of Celestial Harmony, Raid Finder
                        99089, -- Headpiece of Celestial Harmony, Raid Finder
                        98983, -- Helmet of Celestial Harmony, Raid Finder
                },
                [10] = { -- MONK
                        99065, -- Crown of Seven Sacred Seals, Raid Finder
                        99073, -- Headpiece of Seven Sacred Seals, Raid Finder
                        99069, -- Helm of Seven Sacred Seals, Raid Finder
                },
        },
        [99667] = {
                [1] = { -- WARRIOR
                        99034, -- Gauntlets of the Prehistoric Marauder, Raid Finder
                        99038, -- Handguards of the Prehistoric Marauder, Raid Finder
                },
                [3] = { -- HUNTER
                        99086, -- Gloves of the Unblinking Vigil, Raid Finder
                },
                [7] = { -- SHAMAN
                        99088, -- Gloves of Celestial Harmony, Raid Finder
                        98993, -- Grips of Celestial Harmony, Raid Finder
                        98988, -- Handwraps of Celestial Harmony, Raid Finder
                },
                [10] = { -- MONK
                        99064, -- Gauntlets of Seven Sacred Seals, Raid Finder
                        99072, -- Grips of Seven Sacred Seals, Raid Finder
                        99068, -- Handwraps of Seven Sacred Seals, Raid Finder
                },
        },
        [99681] = {
                [2] = { -- PALADIN
                        99002, -- Gauntlets of Winged Triumph, Raid Finder
                        98982, -- Gloves of Winged Triumph, Raid Finder
                        99028, -- Handguards of Winged Triumph, Raid Finder
                },
                [5] = { -- PRIEST
                        99019, -- Gloves of the Ternion Glory, Raid Finder
                        99023, -- Handwraps of the Ternion Glory, Raid Finder
                },
                [9] = { -- WARLOCK
                        99053, -- Gloves of the Horned Nightmare, Raid Finder
                },
        },
        [99675] = {
                [2] = { -- PALADIN
                        98980, -- Greaves of Winged Triumph, Raid Finder
                        99026, -- Legguards of Winged Triumph, Raid Finder
                        98986, -- Legplates of Winged Triumph, Raid Finder
                },
                [5] = { -- PRIEST
                        99021, -- Leggings of the Ternion Glory, Raid Finder
                        99025, -- Legwraps of the Ternion Glory, Raid Finder
                },
                [9] = { -- WARLOCK
                        99055, -- Leggings of the Horned Nightmare, Raid Finder
                },
        },
        [99676] = {
                [1] = { -- WARRIOR
                        99033, -- Legguards of the Prehistoric Marauder, Raid Finder
                        99035, -- Legplates of the Prehistoric Marauder, Raid Finder
                },
                [3] = { -- HUNTER
                        99081, -- Legguards of the Unblinking Vigil, Raid Finder
                },
                [7] = { -- SHAMAN
                        99090, -- Leggings of Celestial Harmony, Raid Finder
                        98984, -- Legguards of Celestial Harmony, Raid Finder
                        98990, -- Legwraps of Celestial Harmony, Raid Finder
                },
                [10] = { -- MONK
                        99074, -- Leggings of Seven Sacred Seals, Raid Finder
                        99050, -- Legguards of Seven Sacred Seals, Raid Finder
                        99070, -- Legwraps of Seven Sacred Seals, Raid Finder
                },
        },
        [99670] = {
                [1] = { -- WARRIOR
                        99036, -- Pauldrons of the Prehistoric Marauder, Raid Finder
                        99030, -- Shoulderguards of the Prehistoric Marauder, Raid Finder
                },
                [3] = { -- HUNTER
                        99082, -- Spaulders of the Unblinking Vigil, Raid Finder
                },
                [7] = { -- SHAMAN
                        98991, -- Mantle of Celestial Harmony, Raid Finder
                        99091, -- Shoulderwraps of Celestial Harmony, Raid Finder
                        98977, -- Spaulders of Celestial Harmony, Raid Finder
                },
                [10] = { -- MONK
                        99062, -- Mantle of Seven Sacred Seals, Raid Finder
                        99051, -- Shoulderguards of Seven Sacred Seals, Raid Finder
                        99075, -- Spaulders of Seven Sacred Seals, Raid Finder
                },
        },
        [99669] = {
                [2] = { -- PALADIN
                        99076, -- Mantle of Winged Triumph, Raid Finder
                        98987, -- Pauldrons of Winged Triumph, Raid Finder
                        99027, -- Shoulderguards of Winged Triumph, Raid Finder
                },
                [5] = { -- PRIEST
                        99018, -- Mantle of the Ternion Glory, Raid Finder
                        99005, -- Shoulderguards of the Ternion Glory, Raid Finder
                },
                [9] = { -- WARLOCK
                        99045, -- Mantle of the Horned Nightmare, Raid Finder
                },
        },

-- T16 Normal, iLvl 540
        [99744] = {
                [1] = { -- WARRIOR
                        99603, -- Battleplate of the Prehistoric Marauder
                        99562, -- Chestguard of the Prehistoric Marauder
                },
                [3] = { -- HUNTER
                        99577, -- Tunic of the Unblinking Vigil
                },
                [7] = { -- SHAMAN
                        99615, -- Cuirass of Celestial Harmony
                        99579, -- Hauberk of Celestial Harmony
                        99636, -- Tunic of Celestial Harmony
                },
                [10] = { -- MONK
                        99643, -- Chestguard of Seven Sacred Seals
                        99555, -- Tunic of Seven Sacred Seals
                        99641, -- Vest of Seven Sacred Seals
                },
        },
        [99743] = {
                [2] = { -- PALADIN
                        99566, -- Battleplate of Winged Triumph
                        99626, -- Breastplate of Winged Triumph
                        99598, -- Chestguard of Winged Triumph
                },
                [5] = { -- PRIEST
                        99627, -- Raiment of the Ternion Glory
                        99584, -- Robes of the Ternion Glory
                },
                [9] = { -- WARLOCK
                        99570, -- Robes of the Horned Nightmare
                },
        },
        [99742] = {
                [4] = { -- ROGUE
                        99629, -- Tunic of the Barbed Assassin
                },
                [6] = { -- DEATHKNIGHT
                        99608, -- Breastplate of Cyclopean Dread
                        99640, -- Chestguard of Cyclopean Dread
                },
                [8] = { -- MAGE
                        99658, -- Chronomancer Robes
                },
                [11] = { -- DRUID
                        99632, -- Raiment of the Shattered Vale
                        99582, -- Robes of the Shattered Vale
                        99622, -- Tunic of the Shattered Vale
                        99620, -- Vestment of the Shattered Vale
                },
        },
        [99751] = {
                [4] = { -- ROGUE
                        99634, -- Legguards of the Barbed Assassin
                },
                [6] = { -- DEATHKNIGHT
                        99572, -- Greaves of Cyclopean Dread
                        99564, -- Legguards of Cyclopean Dread
                },
                [8] = { -- MAGE
                        99657, -- Chronomancer Leggings
                },
                [11] = { -- DRUID
                        99610, -- Breeches of the Shattered Vale
                        99619, -- Leggings of the Shattered Vale
                        99600, -- Legguards of the Shattered Vale
                        99581, -- Legwraps of the Shattered Vale
                },
        },
        [99745] = {
                [4] = { -- ROGUE
                        99630, -- Gloves of the Barbed Assassin
                },
                [6] = { -- DEATHKNIGHT
                        99609, -- Gauntlets of Cyclopean Dread
                        99604, -- Handguards of Cyclopean Dread
                },
                [8] = { -- MAGE
                        99575, -- Chronomancer Gloves
                },
                [11] = { -- DRUID
                        99617, -- Gloves of the Shattered Vale
                        99633, -- Grips of the Shattered Vale
                        99623, -- Handguards of the Shattered Vale
                        99637, -- Handwraps of the Shattered Vale
                },
        },
        [99748] = {
                [4] = { -- ROGUE
                        99631, -- Helmet of the Barbed Assassin
                },
                [6] = { -- DEATHKNIGHT
                        99605, -- Faceguard of Cyclopean Dread
                        99571, -- Helmet of Cyclopean Dread
                },
                [8] = { -- MAGE
                        99576, -- Chronomancer Hood
                },
                [11] = { -- DRUID
                        99618, -- Cover of the Shattered Vale
                        99624, -- Headguard of the Shattered Vale
                        99599, -- Headpiece of the Shattered Vale
                        99638, -- Helm of the Shattered Vale
                },
        },
        [99754] = {
                [4] = { -- ROGUE
                        99635, -- Spaulders of the Barbed Assassin
                },
                [6] = { -- DEATHKNIGHT
                        99639, -- Pauldrons of Cyclopean Dread
                        99652, -- Shoulderguards of Cyclopean Dread
                },
                [8] = { -- MAGE
                        99659, -- Chronomancer Mantle
                },
                [11] = { -- DRUID
                        99583, -- Mantle of the Shattered Vale
                        99664, -- Shoulderguards of the Shattered Vale
                        99621, -- Shoulderwraps of the Shattered Vale
                        99589, -- Spaulders of the Shattered Vale
                },
        },
        [99749] = {
                [2] = { -- PALADIN
                        99596, -- Faceguard of Winged Triumph
                        99665, -- Headguard of Winged Triumph
                        99651, -- Helmet of Winged Triumph
                },
                [5] = { -- PRIEST
                        99591, -- Cowl of the Ternion Glory
                        99587, -- Hood of the Ternion Glory
                },
                [9] = { -- WARLOCK
                        99568, -- Hood of the Horned Nightmare
                },
        },
        [99750] = {
                [1] = { -- WARRIOR
                        99557, -- Faceguard of the Prehistoric Marauder
                        99602, -- Helmet of the Prehistoric Marauder
                },
                [3] = { -- HUNTER
                        99660, -- Headguard of the Unblinking Vigil
                },
                [7] = { -- SHAMAN
                        99612, -- Faceguard of Celestial Harmony
                        99645, -- Headpiece of Celestial Harmony
                        99649, -- Helmet of Celestial Harmony
                },
                [10] = { -- MONK
                        99607, -- Crown of Seven Sacred Seals
                        99653, -- Headpiece of Seven Sacred Seals
                        99553, -- Helm of Seven Sacred Seals
                },
        },
        [99747] = {
                [1] = { -- WARRIOR
                        99559, -- Gauntlets of the Prehistoric Marauder
                        99563, -- Handguards of the Prehistoric Marauder
                },
                [3] = { -- HUNTER
                        99578, -- Gloves of the Unblinking Vigil
                },
                [7] = { -- SHAMAN
                        99580, -- Gloves of Celestial Harmony
                        99616, -- Grips of Celestial Harmony
                        99611, -- Handwraps of Celestial Harmony
                },
                [10] = { -- MONK
                        99644, -- Gauntlets of Seven Sacred Seals
                        99556, -- Grips of Seven Sacred Seals
                        99552, -- Handwraps of Seven Sacred Seals
                },
        },
        [99746] = {
                [2] = { -- PALADIN
                        99625, -- Gauntlets of Winged Triumph
                        99648, -- Gloves of Winged Triumph
                        99595, -- Handguards of Winged Triumph
                },
                [5] = { -- PRIEST
                        99586, -- Gloves of the Ternion Glory
                        99590, -- Handwraps of the Ternion Glory
                },
                [9] = { -- WARLOCK
                        99567, -- Gloves of the Horned Nightmare
                },
        },
        [99752] = {
                [2] = { -- PALADIN
                        99666, -- Greaves of Winged Triumph
                        99593, -- Legguards of Winged Triumph
                        99661, -- Legplates of Winged Triumph
                },
                [5] = { -- PRIEST
                        99588, -- Leggings of the Ternion Glory
                        99592, -- Legwraps of the Ternion Glory
                },
                [9] = { -- WARLOCK
                        99569, -- Leggings of the Horned Nightmare
                },
        },
        [99753] = {
                [1] = { -- WARRIOR
                        99558, -- Legguards of the Prehistoric Marauder
                        99560, -- Legplates of the Prehistoric Marauder
                },
                [3] = { -- HUNTER
                        99573, -- Legguards of the Unblinking Vigil
                },
                [7] = { -- SHAMAN
                        99646, -- Leggings of Celestial Harmony
                        99650, -- Legguards of Celestial Harmony
                        99613, -- Legwraps of Celestial Harmony
                },
                [10] = { -- MONK
                        99654, -- Leggings of Seven Sacred Seals
                        99606, -- Legguards of Seven Sacred Seals
                        99554, -- Legwraps of Seven Sacred Seals
                },
        },
        [99756] = {
                [1] = { -- WARRIOR
                        99561, -- Pauldrons of the Prehistoric Marauder
                        99597, -- Shoulderguards of the Prehistoric Marauder
                },
                [3] = { -- HUNTER
                        99574, -- Spaulders of the Unblinking Vigil
                },
                [7] = { -- SHAMAN
                        99614, -- Mantle of Celestial Harmony
                        99647, -- Shoulderwraps of Celestial Harmony
                        99663, -- Spaulders of Celestial Harmony
                },
                [10] = { -- MONK
                        99642, -- Mantle of Seven Sacred Seals
                        99565, -- Shoulderguards of Seven Sacred Seals
                        99655, -- Spaulders of Seven Sacred Seals
                },
        },
        [99755] = {
                [2] = { -- PALADIN
                        99656, -- Mantle of Winged Triumph
                        99662, -- Pauldrons of Winged Triumph
                        99594, -- Shoulderguards of Winged Triumph
                },
                [5] = { -- PRIEST
                        99585, -- Mantle of the Ternion Glory
                        99628, -- Shoulderguards of the Ternion Glory
                },
                [9] = { -- WARLOCK
                        99601, -- Mantle of the Horned Nightmare
                },
        },

-- T16 HC, iLvl 553
        [99691] = {
                [1] = { -- WARRIOR
                        99197, -- Battleplate of the Prehistoric Marauder, Heroic
                        99201, -- Chestguard of the Prehistoric Marauder, Heroic
                },
                [3] = { -- HUNTER
                        99167, -- Tunic of the Unblinking Vigil, Heroic
                },
                [7] = { -- SHAMAN
                        99101, -- Cuirass of Celestial Harmony, Heroic
                        99106, -- Hauberk of Celestial Harmony, Heroic
                        99107, -- Tunic of Celestial Harmony, Heroic
                },
                [10] = { -- MONK
                        99140, -- Chestguard of Seven Sacred Seals, Heroic
                        99154, -- Tunic of Seven Sacred Seals, Heroic
                        99150, -- Vest of Seven Sacred Seals, Heroic
                },
        },
        [99686] = {
                [2] = { -- PALADIN
                        99136, -- Battleplate of Winged Triumph, Heroic
                        99133, -- Breastplate of Winged Triumph, Heroic
                        99126, -- Chestguard of Winged Triumph, Heroic
                },
                [5] = { -- PRIEST
                        99110, -- Raiment of the Ternion Glory, Heroic
                        99119, -- Robes of the Ternion Glory, Heroic
                },
                [9] = { -- WARLOCK
                        99204, -- Robes of the Horned Nightmare, Heroic
                },
        },
        [99696] = {
                [4] = { -- ROGUE
                        99112, -- Tunic of the Barbed Assassin, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        99192, -- Breastplate of Cyclopean Dread, Heroic
                        99188, -- Chestguard of Cyclopean Dread, Heroic
                },
                [8] = { -- MAGE
                        99152, -- Chronomancer Robes, Heroic
                },
                [11] = { -- DRUID
                        99180, -- Raiment of the Shattered Vale, Heroic
                        99172, -- Robes of the Shattered Vale, Heroic
                        99170, -- Tunic of the Shattered Vale, Heroic
                        99177, -- Vestment of the Shattered Vale, Heroic
                },
        },
        [99684] = {
                [4] = { -- ROGUE
                        99115, -- Legguards of the Barbed Assassin, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        99186, -- Greaves of Cyclopean Dread, Heroic
                        99191, -- Legguards of Cyclopean Dread, Heroic
                },
                [8] = { -- MAGE
                        99162, -- Chronomancer Leggings, Heroic
                },
                [11] = { -- DRUID
                        99165, -- Breeches of the Shattered Vale, Heroic
                        99176, -- Leggings of the Shattered Vale, Heroic
                        99183, -- Legguards of the Shattered Vale, Heroic
                        99171, -- Legwraps of the Shattered Vale, Heroic
                },
        },
        [99682] = {
                [4] = { -- ROGUE
                        99113, -- Gloves of the Barbed Assassin, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        99193, -- Gauntlets of Cyclopean Dread, Heroic
                        99189, -- Handguards of Cyclopean Dread, Heroic
                },
                [8] = { -- MAGE
                        99160, -- Chronomancer Gloves, Heroic
                },
                [11] = { -- DRUID
                        99174, -- Gloves of the Shattered Vale, Heroic
                        99181, -- Grips of the Shattered Vale, Heroic
                        99163, -- Handguards of the Shattered Vale, Heroic
                        99185, -- Handwraps of the Shattered Vale, Heroic
                },
        },
        [99683] = {
                [4] = { -- ROGUE
                        99114, -- Helmet of the Barbed Assassin, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        99190, -- Faceguard of Cyclopean Dread, Heroic
                        99194, -- Helmet of Cyclopean Dread, Heroic
                },
                [8] = { -- MAGE
                        99161, -- Chronomancer Hood, Heroic
                },
                [11] = { -- DRUID
                        99175, -- Cover of the Shattered Vale, Heroic
                        99164, -- Headguard of the Shattered Vale, Heroic
                        99182, -- Headpiece of the Shattered Vale, Heroic
                        99178, -- Helm of the Shattered Vale, Heroic
                },
        },
        [99685] = {
                [4] = { -- ROGUE
                        99116, -- Spaulders of the Barbed Assassin, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        99187, -- Pauldrons of Cyclopean Dread, Heroic
                        99179, -- Shoulderguards of Cyclopean Dread, Heroic
                },
                [8] = { -- MAGE
                        99153, -- Chronomancer Mantle, Heroic
                },
                [11] = { -- DRUID
                        99173, -- Mantle of the Shattered Vale, Heroic
                        99166, -- Shoulderguards of the Shattered Vale, Heroic
                        99169, -- Shoulderwraps of the Shattered Vale, Heroic
                        99184, -- Spaulders of the Shattered Vale, Heroic
                },
        },
        [99689] = {
                [2] = { -- PALADIN
                        99128, -- Faceguard of Winged Triumph, Heroic
                        99135, -- Headguard of Winged Triumph, Heroic
                        99138, -- Helmet of Winged Triumph, Heroic
                },
                [5] = { -- PRIEST
                        99117, -- Cowl of the Ternion Glory, Heroic
                        99122, -- Hood of the Ternion Glory, Heroic
                },
                [9] = { -- WARLOCK
                        99097, -- Hood of the Horned Nightmare, Heroic
                },
        },
        [99694] = {
                [1] = { -- WARRIOR
                        99203, -- Faceguard of the Prehistoric Marauder, Heroic
                        99206, -- Helmet of the Prehistoric Marauder, Heroic
                },
                [3] = { -- HUNTER
                        99157, -- Headguard of the Unblinking Vigil, Heroic
                },
                [7] = { -- SHAMAN
                        99109, -- Faceguard of Celestial Harmony, Heroic
                        99093, -- Headpiece of Celestial Harmony, Heroic
                        99103, -- Helmet of Celestial Harmony, Heroic
                },
                [10] = { -- MONK
                        99142, -- Crown of Seven Sacred Seals, Heroic
                        99156, -- Headpiece of Seven Sacred Seals, Heroic
                        99148, -- Helm of Seven Sacred Seals, Heroic
                },
        },
        [99692] = {
                [1] = { -- WARRIOR
                        99198, -- Gauntlets of the Prehistoric Marauder, Heroic
                        99202, -- Handguards of the Prehistoric Marauder, Heroic
                },
                [3] = { -- HUNTER
                        99168, -- Gloves of the Unblinking Vigil, Heroic
                },
                [7] = { -- SHAMAN
                        99092, -- Gloves of Celestial Harmony, Heroic
                        99102, -- Grips of Celestial Harmony, Heroic
                        99108, -- Handwraps of Celestial Harmony, Heroic
                },
                [10] = { -- MONK
                        99141, -- Gauntlets of Seven Sacred Seals, Heroic
                        99155, -- Grips of Seven Sacred Seals, Heroic
                        99147, -- Handwraps of Seven Sacred Seals, Heroic
                },
        },
        [99687] = {
                [2] = { -- PALADIN
                        99137, -- Gauntlets of Winged Triumph, Heroic
                        99134, -- Gloves of Winged Triumph, Heroic
                        99127, -- Handguards of Winged Triumph, Heroic
                },
                [5] = { -- PRIEST
                        99121, -- Gloves of the Ternion Glory, Heroic
                        99131, -- Handwraps of the Ternion Glory, Heroic
                },
                [9] = { -- WARLOCK
                        99096, -- Gloves of the Horned Nightmare, Heroic
                },
        },
        [99688] = {
                [2] = { -- PALADIN
                        99124, -- Greaves of Winged Triumph, Heroic
                        99129, -- Legguards of Winged Triumph, Heroic
                        99139, -- Legplates of Winged Triumph, Heroic
                },
                [5] = { -- PRIEST
                        99123, -- Leggings of the Ternion Glory, Heroic
                        99118, -- Legwraps of the Ternion Glory, Heroic
                },
                [9] = { -- WARLOCK
                        99098, -- Leggings of the Horned Nightmare, Heroic
                },
        },
        [99693] = {
                [1] = { -- WARRIOR
                        99195, -- Legguards of the Prehistoric Marauder, Heroic
                        99199, -- Legplates of the Prehistoric Marauder, Heroic
                },
                [3] = { -- HUNTER
                        99158, -- Legguards of the Unblinking Vigil, Heroic
                },
                [7] = { -- SHAMAN
                        99094, -- Leggings of Celestial Harmony, Heroic
                        99104, -- Legguards of Celestial Harmony, Heroic
                        99099, -- Legwraps of Celestial Harmony, Heroic
                },
                [10] = { -- MONK
                        99145, -- Leggings of Seven Sacred Seals, Heroic
                        99143, -- Legguards of Seven Sacred Seals, Heroic
                        99149, -- Legwraps of Seven Sacred Seals, Heroic
                },
        },
        [99695] = {
                [1] = { -- WARRIOR
                        99200, -- Pauldrons of the Prehistoric Marauder, Heroic
                        99196, -- Shoulderguards of the Prehistoric Marauder, Heroic
                },
                [3] = { -- HUNTER
                        99159, -- Spaulders of the Unblinking Vigil, Heroic
                },
                [7] = { -- SHAMAN
                        99100, -- Mantle of Celestial Harmony, Heroic
                        99095, -- Shoulderwraps of Celestial Harmony, Heroic
                        99105, -- Spaulders of Celestial Harmony, Heroic
                },
                [10] = { -- MONK
                        99151, -- Mantle of Seven Sacred Seals, Heroic
                        99144, -- Shoulderguards of Seven Sacred Seals, Heroic
                        99146, -- Spaulders of Seven Sacred Seals, Heroic
                },
        },
        [99690] = {
                [2] = { -- PALADIN
                        99125, -- Mantle of Winged Triumph, Heroic
                        99132, -- Pauldrons of Winged Triumph, Heroic
                        99130, -- Shoulderguards of Winged Triumph, Heroic
                },
                [5] = { -- PRIEST
                        99120, -- Mantle of the Ternion Glory, Heroic
                        99111, -- Shoulderguards of the Ternion Glory, Heroic
                },
                [9] = { -- WARLOCK
                        99205, -- Mantle of the Horned Nightmare, Heroic
                },
        },

-- T16 Mythic, iLvl 566
        [99716] = {
                [1] = { -- WARRIOR
                        99411, -- Battleplate of the Prehistoric Marauder, Mythic
                        99415, -- Chestguard of the Prehistoric Marauder, Mythic
                },
                [3] = { -- HUNTER
                        99405, -- Tunic of the Unblinking Vigil, Mythic
                },
                [7] = { -- SHAMAN
                        99347, -- Cuirass of Celestial Harmony, Mythic
                        99344, -- Hauberk of Celestial Harmony, Mythic
                        99351, -- Tunic of Celestial Harmony, Mythic
                },
                [10] = { -- MONK
                        99382, -- Chestguard of Seven Sacred Seals, Mythic
                        99396, -- Tunic of Seven Sacred Seals, Mythic
                        99391, -- Vest of Seven Sacred Seals, Mythic
                },
        },
        [99715] = {
                [2] = { -- PALADIN
                        99387, -- Battleplate of Winged Triumph, Mythic
                        99374, -- Breastplate of Winged Triumph, Mythic
                        99368, -- Chestguard of Winged Triumph, Mythic
                },
                [5] = { -- PRIEST
                        99362, -- Raiment of the Ternion Glory, Mythic
                        99357, -- Robes of the Ternion Glory, Mythic
                },
                [9] = { -- WARLOCK
                        99416, -- Robes of the Horned Nightmare, Mythic
                },
        },
        [99714] = {
                [4] = { -- ROGUE
                        99356, -- Tunic of the Barbed Assassin, Mythic
                },
                [6] = { -- DEATHKNIGHT
                        99335, -- Breastplate of Cyclopean Dread, Mythic
                        99330, -- Chestguard of Cyclopean Dread, Mythic
                },
                [8] = { -- MAGE
                        99400, -- Chronomancer Robes, Mythic
                },
                [11] = { -- DRUID
                        99326, -- Raiment of the Shattered Vale, Mythic
                        99430, -- Robes of the Shattered Vale, Mythic
                        99419, -- Tunic of the Shattered Vale, Mythic
                        99427, -- Vestment of the Shattered Vale, Mythic
                },
        },
        [99726] = {
                [4] = { -- ROGUE
                        99349, -- Legguards of the Barbed Assassin, Mythic
                },
                [6] = { -- DEATHKNIGHT
                        99338, -- Greaves of Cyclopean Dread, Mythic
                        99324, -- Legguards of Cyclopean Dread, Mythic
                },
                [8] = { -- MAGE
                        99399, -- Chronomancer Leggings, Mythic
                },
                [11] = { -- DRUID
                        99422, -- Breeches of the Shattered Vale, Mythic
                        99434, -- Leggings of the Shattered Vale, Mythic
                        99329, -- Legguards of the Shattered Vale, Mythic
                        99429, -- Legwraps of the Shattered Vale, Mythic
                },
        },
        [99720] = {
                [4] = { -- ROGUE
                        99355, -- Gloves of the Barbed Assassin, Mythic
                },
                [6] = { -- DEATHKNIGHT
                        99336, -- Gauntlets of Cyclopean Dread, Mythic
                        99331, -- Handguards of Cyclopean Dread, Mythic
                },
                [8] = { -- MAGE
                        99397, -- Chronomancer Gloves, Mythic
                },
                [11] = { -- DRUID
                        99432, -- Gloves of the Shattered Vale, Mythic
                        99327, -- Grips of the Shattered Vale, Mythic
                        99420, -- Handguards of the Shattered Vale, Mythic
                        99435, -- Handwraps of the Shattered Vale, Mythic
                },
        },
        [99723] = {
                [4] = { -- ROGUE
                        99348, -- Helmet of the Barbed Assassin, Mythic
                },
                [6] = { -- DEATHKNIGHT
                        99323, -- Faceguard of Cyclopean Dread, Mythic
                        99337, -- Helmet of Cyclopean Dread, Mythic
                },
                [8] = { -- MAGE
                        99398, -- Chronomancer Hood, Mythic
                },
                [11] = { -- DRUID
                        99433, -- Cover of the Shattered Vale, Mythic
                        99421, -- Headguard of the Shattered Vale, Mythic
                        99328, -- Headpiece of the Shattered Vale, Mythic
                        99436, -- Helm of the Shattered Vale, Mythic
                },
        },
        [99717] = {
                [4] = { -- ROGUE
                        99350, -- Spaulders of the Barbed Assassin, Mythic
                },
                [6] = { -- DEATHKNIGHT
                        99339, -- Pauldrons of Cyclopean Dread, Mythic
                        99325, -- Shoulderguards of Cyclopean Dread, Mythic
                },
                [8] = { -- MAGE
                        99401, -- Chronomancer Mantle, Mythic
                },
                [11] = { -- DRUID
                        99431, -- Mantle of the Shattered Vale, Mythic
                        99423, -- Shoulderguards of the Shattered Vale, Mythic
                        99428, -- Shoulderwraps of the Shattered Vale, Mythic
                        99322, -- Spaulders of the Shattered Vale, Mythic
                },
        },
        [99724] = {
                [2] = { -- PALADIN
                        99370, -- Faceguard of Winged Triumph, Mythic
                        99376, -- Headguard of Winged Triumph, Mythic
                        99379, -- Helmet of Winged Triumph, Mythic
                },
                [5] = { -- PRIEST
                        99366, -- Cowl of the Ternion Glory, Mythic
                        99360, -- Hood of the Ternion Glory, Mythic
                },
                [9] = { -- WARLOCK
                        99425, -- Hood of the Horned Nightmare, Mythic
                },
        },
        [99725] = {
                [1] = { -- WARRIOR
                        99409, -- Faceguard of the Prehistoric Marauder, Mythic
                        99418, -- Helmet of the Prehistoric Marauder, Mythic
                },
                [3] = { -- HUNTER
                        99402, -- Headguard of the Unblinking Vigil, Mythic
                },
                [7] = { -- SHAMAN
                        99353, -- Faceguard of Celestial Harmony, Mythic
                        99332, -- Headpiece of Celestial Harmony, Mythic
                        99341, -- Helmet of Celestial Harmony, Mythic
                },
                [10] = { -- MONK
                        99384, -- Crown of Seven Sacred Seals, Mythic
                        99393, -- Headpiece of Seven Sacred Seals, Mythic
                        99389, -- Helm of Seven Sacred Seals, Mythic
                },
        },
        [99722] = {
                [1] = { -- WARRIOR
                        99412, -- Gauntlets of the Prehistoric Marauder, Mythic
                        99408, -- Handguards of the Prehistoric Marauder, Mythic
                },
                [3] = { -- HUNTER
                        99406, -- Gloves of the Unblinking Vigil, Mythic
                },
                [7] = { -- SHAMAN
                        99345, -- Gloves of Celestial Harmony, Mythic
                        99340, -- Grips of Celestial Harmony, Mythic
                        99352, -- Handwraps of Celestial Harmony, Mythic
                },
                [10] = { -- MONK
                        99383, -- Gauntlets of Seven Sacred Seals, Mythic
                        99392, -- Grips of Seven Sacred Seals, Mythic
                        99388, -- Handwraps of Seven Sacred Seals, Mythic
                },
        },
        [99721] = {
                [2] = { -- PALADIN
                        99380, -- Gauntlets of Winged Triumph, Mythic
                        99375, -- Gloves of Winged Triumph, Mythic
                        99369, -- Handguards of Winged Triumph, Mythic
                },
                [5] = { -- PRIEST
                        99359, -- Gloves of the Ternion Glory, Mythic
                        99365, -- Handwraps of the Ternion Glory, Mythic
                },
                [9] = { -- WARLOCK
                        99424, -- Gloves of the Horned Nightmare, Mythic
                },
        },
        [99712] = {
                [2] = { -- PALADIN
                        99377, -- Greaves of Winged Triumph, Mythic
                        99371, -- Legguards of Winged Triumph, Mythic
                        99372, -- Legplates of Winged Triumph, Mythic
                },
                [5] = { -- PRIEST
                        99361, -- Leggings of the Ternion Glory, Mythic
                        99367, -- Legwraps of the Ternion Glory, Mythic
                },
                [9] = { -- WARLOCK
                        99426, -- Leggings of the Horned Nightmare, Mythic
                },
        },
        [99713] = {
                [1] = { -- WARRIOR
                        99410, -- Legguards of the Prehistoric Marauder, Mythic
                        99413, -- Legplates of the Prehistoric Marauder, Mythic
                },
                [3] = { -- HUNTER
                        99403, -- Legguards of the Unblinking Vigil, Mythic
                },
                [7] = { -- SHAMAN
                        99333, -- Leggings of Celestial Harmony, Mythic
                        99342, -- Legguards of Celestial Harmony, Mythic
                        99354, -- Legwraps of Celestial Harmony, Mythic
                },
                [10] = { -- MONK
                        99394, -- Leggings of Seven Sacred Seals, Mythic
                        99385, -- Legguards of Seven Sacred Seals, Mythic
                        99390, -- Legwraps of Seven Sacred Seals, Mythic
                },
        },
        [99719] = {
                [1] = { -- WARRIOR
                        99414, -- Pauldrons of the Prehistoric Marauder, Mythic
                        99407, -- Shoulderguards of the Prehistoric Marauder, Mythic
                },
                [3] = { -- HUNTER
                        99404, -- Spaulders of the Unblinking Vigil, Mythic
                },
                [7] = { -- SHAMAN
                        99346, -- Mantle of Celestial Harmony, Mythic
                        99334, -- Shoulderwraps of Celestial Harmony, Mythic
                        99343, -- Spaulders of Celestial Harmony, Mythic
                },
                [10] = { -- MONK
                        99381, -- Mantle of Seven Sacred Seals, Mythic
                        99386, -- Shoulderguards of Seven Sacred Seals, Mythic
                        99395, -- Spaulders of Seven Sacred Seals, Mythic
                },
        },
        [99718] = {
                [2] = { -- PALADIN
                        99378, -- Mantle of Winged Triumph, Mythic
                        99373, -- Pauldrons of Winged Triumph, Mythic
                        99364, -- Shoulderguards of Winged Triumph, Mythic
                },
                [5] = { -- PRIEST
                        99358, -- Mantle of the Ternion Glory, Mythic
                        99363, -- Shoulderguards of the Ternion Glory, Mythic
                },
                [9] = { -- WARLOCK
                        99417, -- Mantle of the Horned Nightmare, Mythic
                },
        },

}

for k,v in pairs(TokensMoP) do

         -- unlike BC, here we can say: if a token yields 2 or 3 items per class, they have the same appearance
         for i,c in pairs(v) do
                 if type(c)=="table" and #c>1 and #c<4 then
                         c["same"]=1
                         v[i]={c}
                 end
         end


         TokenSplainerTokens[k] = v

end