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

local TokensArmorTokens = {

-- Tormented
        [114108] = { -- Tormented Armament
                [ROLEMELEESTR1] = {
                        115303, -- Tormented Axe
                },
                [ROLEMELEESTR2] = {
                        115304, -- Tormented Greataxe
                },
                [ROLERANGED] = {
                        115305, -- Tormented Longbow
                },
                [ROLEMELEEDAGGER] = {
                        115306, -- Tormented Dagger
                },
                [ROLEMELEEAGI1] = {
                        115307, -- Tormented Warmace
                },
                [ROLECASTMACE] = {
                        115310, -- Tormented Scepter
                },
                [ROLEMELEEAGI2] = {
                        115308, -- Tormented Polearm
                },
                [ROLECASTHEAL] = {
                        115309, -- Tormented Spire
                },
        },
        [114101] = { -- Tormented Girdle
                [CLOTH] = {
                        114338, -- Mantisweave Cord
                },
                [LEATHER] = {
                        114339, -- Shadow-Gorged Belt
                },
                [MAIL] = {
                        114340, -- Belt of Meditative Focus
                },
                [PLATE] = {
                        114341, -- Salt-Scorched Girdle
                },
        },
        [114098] = { -- Tormented Hood
                [CLOTH] = {
                        114326, -- Mantisweave Hood
                },
                [LEATHER] = {
                        114327, -- Shadow-Gorged Hood
                },
                [MAIL] = {
                        114328, -- Helm of Meditative Focus
                },
                [PLATE] = {
                        114329, -- Salt-Scorched Greathelm
                },
        },
        [114096] = { -- Tormented Treads
                [CLOTH] = {
                        114318, -- Mantisweave Sandals
                },
                [LEATHER] = {
                        114319, -- Shadow-Gorged Boots
                },
                [MAIL] = {
                        114320, -- Boots of Meditative Focus
                },
                [PLATE] = {
                        114321, -- Salt-Scorched Greaves
                },
        },

        [114094] = { -- Tormented Bracers
                [CLOTH] = {
                        114310, -- Mantisweave Bracers
                },
                [LEATHER] = {
                        114311, -- Shadow-Gorged Bracers
                },
                [MAIL] = {
                        114312, -- Bracers of Meditative Focus
                },
                [PLATE] = {
                        114313, -- Salt-Scorched Bracers
                },
        },
        [114099] = { -- Tormented Leggings
                [CLOTH] = {
                        114330, -- Mantisweave Trousers
                },
                [LEATHER] = {
                        114331, -- Shadow-Gorged Legguards
                },
                [MAIL] = {
                        114332, -- Legguards of Meditative Focus
                },
                [PLATE] = {
                        114333, -- Salt-Scorched Legplates
                },
        },
        [114097] = { -- Tormented Gauntlets
                [CLOTH] = {
                        114322, -- Mantisweave Gloves
                },
                [LEATHER] = {
                        114323, -- Shadow-Gorged Gauntlets
                },
                [MAIL] = {
                        114324, -- Gauntlets of Meditative Focus
                },
                [PLATE] = {
                        114325, -- Salt-Scorched Gauntlets
                },
        },
        [114100] = { -- Tormented Spaulders
                [CLOTH] = {
                        114334, -- Mantisweave Mantle
                },
                [LEATHER] = {
                        114335, -- Shadow-Gorged Spaulders
                },
                [MAIL] = {
                        114336, -- Spaulders of Meditative Focus
                },
                [PLATE] = {
                        114337, -- Salt-Scorched Shoulderguard
                },
        },

-- Munificent
        [114109] = { -- Munificent Armament
                [ROLEMELEESTR1] = {
                        115311, -- Munificent Axe
                },
                [ROLEMELEESTR2] = {
                        115312, -- Munificent Greataxe
                },
                [ROLERANGED] = {
                        115313, -- Munificent Longbow
                },
                [ROLEMELEEDAGGER] = {
                        115314, -- Munificent Dagger
                },
                [ROLEMELEEAGI1] = {
                        115315, -- Munificent Warmace
                },
                [ROLECASTMACE] = {
                        115318, -- Munificent Scepter
                },
                [ROLEMELEEAGI2] = {
                        115316, -- Munificent Polearm
                },
                [ROLECASTHEAL] = {
                        115317, -- Munificent Spire
                },
        },
        [114057] = { -- Munificent Bracers
                [CLOTH] = {
                        114371, -- Bracers of Hooded Nightmares
                },
                [LEATHER] = {
                        114372, -- Bracers of Falling Leaves
                },
                [MAIL] = {
                        114373, -- Element-Binder Bracers
                },
                [PLATE] = {
                        114374, -- Bracers of Grievous Storms
                },
        },
        [114058] = { -- Munificent Robes
                [LEATHER] = {
                        114375, -- Chestguard of Falling Leaves
                },
                [MAIL] = {
                        114376, -- Element-Binder Chestguard
                },
                [PLATE] = {
                        114377, -- Breastplate of Grievous Storms
                },
                [CLOTH] = {
                        114378, -- Robes of Hooded Nightmares
                },
        },
        [114059] = { -- Munificent Treads
                [CLOTH] = {
                        114379, -- Sandals of Hooded Nightmares
                },
                [LEATHER] = {
                        114380, -- Boots of Falling Leaves
                },
                [MAIL] = {
                        114381, -- Element-Binder Boots
                },
                [PLATE] = {
                        114382, -- Greaves of Grievous Storms
                },
        },
        [114063] = { -- Munificent Spaulders
                [CLOTH] = {
                        114395, -- Mantle of Hooded Nightmares
                },
                [LEATHER] = {
                        114396, -- Spaulders of Falling Leaves
                },
                [MAIL] = {
                        114397, -- Element-Binder Spaulders
                },
                [PLATE] = {
                        114398, -- Shoulderguard of Grievous Storms
                },
        },

-- Turbulent
        [114110] = { -- Turbulent Armament
                [ROLEMELEESTR1] = {
                        115319, -- Turbulent Axe
                        115320, -- Turbulent Greataxe
                },
                [ROLEMELEESTR2] = {
                        115320, -- Turbulent Greataxe
                },
                [ROGUE] = {
                        115322, -- Turbulent Dagger
                },
                [ROLERANGED] = {
                        115321, -- Turbulent Longbow
                },
                [ROLEMELEEAGI2] = {
                        115324, -- Turbulent Polearm
                },
                [ROLETANKAGI2] = {
                        115324, -- Turbulent Polearm
                },
                [ROLEMELEEAGI1] = {
                        115323, -- Turbulent Warmace
                },
                [ROLECASTHEAL] = {
                        115326, -- Turbulent Scepter
                },
                [ROLECASTER] = {
                        115325, -- Turbulent Spire
                },
        },
        [114070] = { -- Turbulent Robes
                [CLOTH] = {
                        114439, -- Fireflash Robes
                },
                [LEATHER] = {
                        114436, -- Spireflame Chestguard
                },
                [MAIL] = {
                        114437, -- Chestguard of Elemental Torment
                },
                [PLATE] = {
                        114438, -- Breastplate of Vaulted Skies
                },
        },
        [114071] = { -- Turbulent Treads
                [CLOTH] = {
                        114440, -- Fireflash Sandals
                },
                [LEATHER] = {
                        114441, -- Spireflame Boots
                },
                [MAIL] = {
                        114442, -- Boots of Elemental Torment
                },
                [PLATE] = {
                        114443, -- Greaves of Vaulted Skies
                },
        },
        [114075] = { -- Turbulent Spaulders
                [CLOTH] = {
                        114456, -- Fireflash Mantle
                },
                [LEATHER] = {
                        114457, -- Spireflame Spaulders
                },
                [MAIL] = {
                        114458, -- Spaulders of Elemental Torment
                },
                [PLATE] = {
                        114459, -- Shoulderguard of Vaulted Skies
                },
        },
        [114069] = { -- Turbulent Bracers
                [CLOTH] = {
                        114432, -- Fireflash Bracers
                },
                [LEATHER] = {
                        114433, -- Spireflame Bracers
                },
                [MAIL] = {
                        114434, -- Bracers of Elemental Torment
                },
                [PLATE] = {
                        114435, -- Bracers of Vaulted Skies
                },
        },

        [114072] = { -- Turbulent Gauntlets
                [CLOTH] = {
                        114444, -- Fireflash Gloves
                },
                [LEATHER] = {
                        114445, -- Spireflame Gauntlets
                },
                [MAIL] = {
                        114446, -- Gauntlets of Elemental Torment
                },
                [PLATE] = {
                        114447, -- Gauntlets of Vaulted Skies
                },
        },
        [114073] = { -- Turbulent Hood
                [CLOTH] = {
                        114448, -- Fireflash Hood
                },
                [LEATHER] = {
                        114449, -- Spireflame Hood
                },
                [MAIL] = {
                        114450, -- Helm of Elemental Torment
                },
                [PLATE] = {
                        114451, -- Greathelm of Vaulted Skies
                },
        },
        [114074] = { -- Turbulent Leggings
                [CLOTH] = {
                        114452, -- Fireflash Trousers
                },
                [LEATHER] = {
                        114453, -- Spireflame Legguards
                },
                [MAIL] = {
                        114454, -- Legguards of Elemental Torment
                },
                [PLATE] = {
                        114455, -- Legplates of Vaulted Skies
                },
        },
        [114076] = { -- Turbulent Girdle
                [CLOTH] = {
                        114460, -- Fireflash Cord
                },
                [LEATHER] = {
                        114461, -- Spireflame Belt
                },
                [MAIL] = {
                        114462, -- Belt of Elemental Torment
                },
                [PLATE] = {
                        114463, -- Girdle of Vaulted Skies
                },
        },
        [114079] = { -- Turbulent Cloak     - assumed roles, no rnd ench data on Wowhead atm
                [ROLEMELEEAGI] = {
                        114482, -- Barkwound Woodcloak
                },
                [ROLECASTER] = {
                        114483, -- Darkshadow Drape
                },
                [ROLEHEALER] = {
                        114484, -- Purifier's Silken Cape
                },
                [ROLEMELEESTR] = {
                        114485, -- Bonesplitter Dreadcloak
                },
                [ROLETANK] = {
                        114486, -- Drape of Softened Blows
                },
        },

-- Baleful
        [124560] = { -- Baleful Cloak
                 -- according to comment on token, Unfailing can also be acquired as Melee now (check)
                [ROLEMELEEAGI] = {
                        124613, -- Marshwater Cape
                        124618, -- Unfailing Cloak
                        124617, -- Unfailing Mantle
                },
                [ROLEMELEESTR] = {
                        124616, -- Marshwater Cloak
                        124618, -- Unfailing Cloak
                        124617, -- Unfailing Mantle
                },
                [ROLECASTER] = {
                        124614, -- Marshwater Mantle
                },
                [ROLEHEALER] = {
                        124615, -- Shadowthrash Cloak
                },
                [ROLETANK] = {
                        124618, -- Unfailing Cloak
                        124617, -- Unfailing Mantle
                },
        },
        [124551] = { -- Baleful Tunic
                [CLOTH] = {
                        124570, -- Felcast Robes
                },
                [LEATHER] = {
                        124567, -- Bladefang Chestguard
                },
                [MAIL] = {
                        124568, -- Axeclaw Chestguard
                },
                [PLATE] = {
                        124569, -- Felbane Breastplate
                },
        },
        [124552] = { -- Baleful Treads
                [CLOTH] = {
                        124571, -- Felcast Sandals
                },
                [LEATHER] = {
                        124572, -- Bladefang Boots
                },
                [MAIL] = {
                        124573, -- Axeclaw Boots
                },
                [PLATE] = {
                        124574, -- Felbane Greaves
                },
        },
        [124553] = { -- Baleful Gauntlets
                [CLOTH] = {
                        124575, -- Felcast Gloves
                },
                [LEATHER] = {
                        124576, -- Bladefang Gauntlets
                },
                [MAIL] = {
                        124577, -- Axeclaw Gauntlets
                },
                [PLATE] = {
                        124578, -- Felbane Gauntlets
                },
        },
        [124554] = { -- Baleful Hood
                [CLOTH] = {
                        124579, -- Felcast Hood
                },
                [LEATHER] = {
                        124580, -- Bladefang Hood
                },
                [MAIL] = {
                        124581, -- Axeclaw Helm
                },
                [PLATE] = {
                        124582, -- Felbane Greathelm
                },
        },
        [124555] = { -- Baleful Leggings
                [CLOTH] = {
                        124583, -- Felcast Trousers
                },
                [LEATHER] = {
                        124584, -- Bladefang Legguards
                },
                [MAIL] = {
                        124585, -- Axeclaw Legguards
                },
                [PLATE] = {
                        124586, -- Felbane Legplates
                },
        },
        [128348] = { -- Baleful Spaulders
                [CLOTH] = {
                        124587, -- Felcast Mantle
                },
                [LEATHER] = {
                        124588, -- Bladefang Spaulders
                },
                [MAIL] = {
                        124589, -- Axeclaw Spaulders
                },
                [PLATE] = {
                        124590, -- Felbane Shoulderguard
                },
        },
        [124557] = { -- Baleful Girdle
                [CLOTH] = {
                        124591, -- Felcast Cord
                },
                [LEATHER] = {
                        124592, -- Bladefang Belt
                },
                [MAIL] = {
                        124593, -- Axeclaw Belt
                },
                [PLATE] = {
                        124594, -- Felbane Girdle
                },
        },
        [124550] = { -- Baleful Bracers
                [CLOTH] = {
                        124563, -- Felcast Bracers
                },
                [LEATHER] = {
                        124564, -- Bladefang Bracers
                },
                [MAIL] = {
                        124565, -- Axeclaw Bracers
                },
                [PLATE] = {
                        124566, -- Felbane Bracers
                },
        },
        [124562] = { -- Baleful Armament
                [ROGUE] = {
                        124627, -- Baleful Dagger
                },
                [ROLEMELEEAGI1] = {
                        124628, -- Baleful Greataxe
                },
                [ROLEMELEESTR1] = {
                        124624, -- Baleful Sword
                },
                [ROLEMELEESTR2] = {
                        124625, -- Baleful Greatsword
                },
                [ROLEMELEEAGI2] = {
                        124629, -- Baleful Polearm
                },
                [ROLERANGED] = {
                        124626, -- Baleful Rifle
                },
                [ROLECASTMACE] = {
                        124631, -- Baleful Scepter
                },
                [ROLECASTHEAL] = {
                        124630, -- Baleful Spire
                },
        },

-- Grandiose
        [114112] = { -- Grandiose Armament
                [ROLEMELEESTR1] = {
                        115327, -- Grandiose Axe
                },
                [ROLEMELEEDAGGER] = {
                        115330, -- Grandiose Dagger
                },
                [ROLEMELEESTR2] = {
                        115328, -- Grandiose Greataxe
                },
                [ROLERANGED] = {
                        115329, -- Grandiose Longbow
                },
                [ROLEMELEEAGI2] = {
                        115332, -- Grandiose Polearm
                },
                [ROLECASTMACE] = {
                        115334, -- Grandiose Scepter
                },
                [ROLEMELEEAGI1] = {
                        115331, -- Grandiose Warmace
                },
                [ROLECASTHEAL] = {
                        115333, -- Grandiose Spire
                },
        },
        [114082] = { -- Grandiose Bracers
                [LEATHER] = {
                        114494, -- Bracers of Determined Resolve
                },
                [CLOTH] = {
                        114493, -- Bracers of Volatile Ice
                },
                [PLATE] = {
                        114496, -- Crazed Bomber's Bracers
                },
                [MAIL] = {
                        114495, -- Undying Bracers
                },
        },
        [119124] = { -- Grandiose Cloak
                [ROLECASTER] = {
                        114544, -- Drape of Surging Stars
                },
                [ROLEHEALER] = {
                        114545, -- Hearthhealer Cloak
                },
                [ROLEMELEEAGI] = {
                        114543, -- Keen-Eye Forestcloak
                },
                [ROLETANK] = {
                        114547, -- Reinforced Moonsong Cloak
                },
                [ROLEMELEESTR] = {
                        114546, -- Warmonger's Bloodcloak
                },
        },
        [119114] = { -- Grandiose Gauntlets
                [PLATE] = {
                        114508, -- Crazed Bomber's Gauntlets
                },
                [LEATHER] = {
                        114506, -- Gauntlets of Determined Resolve
                },
                [CLOTH] = {
                        114505, -- Gloves of Volatile Ice
                },
                [MAIL] = {
                        114507, -- Undying Gauntlets
                },
        },
        [119120] = { -- Grandiose Girdle
                [LEATHER] = {
                        114522, -- Belt of Determined Resolve
                },
                [CLOTH] = {
                        114521, -- Cord of Volatile Ice
                },
                [PLATE] = {
                        114524, -- Crazed Bomber's Girdle
                },
                [MAIL] = {
                        114523, -- Undying Belt
                },
        },
        [119116] = { -- Grandiose Hood
                [PLATE] = {
                        114512, -- Crazed Bomber's Greathelm
                },
                [LEATHER] = {
                        114510, -- Hood of Determined Resolve
                },
                [CLOTH] = {
                        114509, -- Hood of Volatile Ice
                },
                [MAIL] = {
                        114511, -- Undying Helm
                },
        },
        [119118] = { -- Grandiose Leggings
                [PLATE] = {
                        114516, -- Crazed Bomber's Legplates
                },
                [LEATHER] = {
                        114514, -- Legguards of Determined Resolve
                },
                [CLOTH] = {
                        114513, -- Trousers of Volatile Ice
                },
                [MAIL] = {
                        114515, -- Undying Legguards
                },
        },
        [114083] = { -- Grandiose Robes
                [LEATHER] = {
                        114497, -- Chestguard of Determined Resolve
                },
                [PLATE] = {
                        114499, -- Crazed Bomber's Breastplate
                },
                [CLOTH] = {
                        114500, -- Robes of Volatile Ice
                },
                [MAIL] = {
                        114498, -- Undying Chestguard
                },
        },
        [114085] = { -- Grandiose Spaulders
                [PLATE] = {
                        114520, -- Crazed Bomber's Shoulderguard
                },
                [CLOTH] = {
                        114517, -- Mantle of Volatile Ice
                },
                [LEATHER] = {
                        114518, -- Spaulders of Determined Resolve
                },
                [MAIL] = {
                        114519, -- Undying Spaulders
                },
        },
        [114084] = { -- Grandiose Treads
                [LEATHER] = {
                        114502, -- Boots of Determined Resolve
                },
                [PLATE] = {
                        114504, -- Crazed Bomber's Greaves
                },
                [CLOTH] = {
                        114501, -- Sandals of Volatile Ice
                },
                [MAIL] = {
                        114503, -- Undying Boots
                },
        },

-- Formidable
        [114111] = { -- Formidable Armament
                [ROLEMELEESTR1] = {
                        115335, -- Formidable Axe
                },
                [ROLEMELEESTR2] = {
                        115336, -- Formidable Greataxe
                },
                [ROLERANGED] = {
                        115337, -- Formidable Longbow
                },
                [ROLEMELEEDAGGER] = {
                        115338, -- Formidable Dagger
                },
                [ROLEMELEEAGI1] = {
                        115339, -- Formidable Warmace
                },
                [ROLECASTMACE] = {
                        115342, -- Formidable Scepter
                },
                [ROLEMELEEAGI2] = {
                        115340, -- Formidable Polearm
                },
                [ROLECASTHEAL] = {
                        115341, -- Formidable Spire
                },
        },
        [114088] = { -- Formidable Bracers
                [CLOTH] = {
                        114554, -- Aerial Acolyte's Bracers
                },
                [LEATHER] = {
                        114555, -- Yeti-Hide Bracers
                },
                [MAIL] = {
                        114556, -- Sickened Scale Bracers
                },
                [PLATE] = {
                        114557, -- Crimson Carapace Bracers
                },
        },
        [119125] = { -- Formidable Cloak
                [ROLEMELEEAGI] = {
                        114604, -- Cloak of Blind Focus
                },
                [ROLECASTER] = {
                        114605, -- Doomwake Drape
                },
                [ROLEHEALER] = {
                        114606, -- Fathom-Ripped Cape
                },
                [ROLEMELEESTR] = {
                        114607, -- Bloodstained Miser's Cloak
                },
                [ROLETANK] = {
                        114608, -- Ultimate Greatcloak
                },
        },
        [119115] = { -- Formidable Gauntlets
                [CLOTH] = {
                        114566, -- Aerial Acolyte's Gloves
                },
                [LEATHER] = {
                        114567, -- Yeti-Hide Gauntlets
                },
                [MAIL] = {
                        114568, -- Sickened Scale Gauntlets
                },
                [PLATE] = {
                        114569, -- Crimson Carapace Gauntlets
                },
        },
        [119121] = { -- Formidable Girdle
                [CLOTH] = {
                        114582, -- Aerial Acolyte's Cord
                },
                [LEATHER] = {
                        114583, -- Yeti-Hide Belt
                },
                [MAIL] = {
                        114584, -- Sickened Scale Belt
                },
                [PLATE] = {
                        114585, -- Crimson Carapace Girdle
                },
        },
        [119117] = { -- Formidable Hood
                [CLOTH] = {
                        114570, -- Aerial Acolyte's Hood
                },
                [LEATHER] = {
                        114571, -- Yeti-Hide Hood
                },
                [MAIL] = {
                        114572, -- Sickened Scale Helm
                },
                [PLATE] = {
                        114573, -- Crimson Carapace Greathelm
                },
        },
        [119119] = { -- Formidable Leggings
                [CLOTH] = {
                        114574, -- Aerial Acolyte's Trousers
                },
                [LEATHER] = {
                        114575, -- Yeti-Hide Legguards
                },
                [MAIL] = {
                        114576, -- Sickened Scale Legguards
                },
                [PLATE] = {
                        114577, -- Crimson Carapace Legplates
                },
        },
        [114089] = { -- Formidable Robes
                [CLOTH] = {
                        114561, -- Aerial Acolyte's Robes
                },
                [LEATHER] = {
                        114558, -- Yeti-Hide Chestguard
                },
                [MAIL] = {
                        114559, -- Sickened Scale Chestguard
                },
                [PLATE] = {
                        114560, -- Crimson Carapace Breastplate
                },
        },
        [114091] = { -- Formidable Spaulders
                [CLOTH] = {
                        114578, -- Aerial Acolyte's Mantle
                },
                [LEATHER] = {
                        114579, -- Yeti-Hide Spaulders
                },
                [MAIL] = {
                        114580, -- Sickened Scale Spaulders
                },
                [PLATE] = {
                        114581, -- Crimson Carapace Shoulderguard
                },
        },
        [114090] = { -- Formidable Treads
                [CLOTH] = {
                        114562, -- Aerial Acolyte's Sandals
                },
                [LEATHER] = {
                        114563, -- Yeti-Hide Boots
                },
                [MAIL] = {
                        114564, -- Sickened Scale Boots
                },
                [PLATE] = {
                        114565, -- Crimson Carapace Greaves
                },
        },



}

-- the BoA variants
-- Turbulent
TokensArmorTokens[122633] = TokensArmorTokens[114110] -- Shared Turbulent Armament
TokensArmorTokens[122621] = TokensArmorTokens[114069] -- Shared Turbulent Bracers
TokensArmorTokens[122631] = TokensArmorTokens[114079] -- Shared Turbulent Cloak
TokensArmorTokens[122624] = TokensArmorTokens[114072] -- Shared Turbulent Gauntlets
TokensArmorTokens[122628] = TokensArmorTokens[114076] -- Shared Turbulent Girdle
TokensArmorTokens[122625] = TokensArmorTokens[114073] -- Shared Turbulent Hood
TokensArmorTokens[122626] = TokensArmorTokens[114074] -- Shared Turbulent Leggings
TokensArmorTokens[122622] = TokensArmorTokens[114075] -- Shared Turbulent Spaulders
TokensArmorTokens[122623] = TokensArmorTokens[114071] -- Shared Turbulent Treads
-- Baleful
TokensArmorTokens[127800] = TokensArmorTokens[124560] -- Baleful Cloak (BoA)
TokensArmorTokens[127777] = { [CLOTH] =  TokensArmorTokens[124550][CLOTH] } -- Baleful Cloth Bracers
TokensArmorTokens[127780] = { [CLOTH] =  TokensArmorTokens[124553][CLOTH] } -- Baleful Cloth Gauntlets
TokensArmorTokens[127784] = { [CLOTH] =  TokensArmorTokens[124557][CLOTH] } -- Baleful Cloth Girdle
TokensArmorTokens[127781] = { [CLOTH] =  TokensArmorTokens[124554][CLOTH] } -- Baleful Cloth Hood
TokensArmorTokens[127782] = { [CLOTH] =  TokensArmorTokens[124555][CLOTH] } -- Baleful Cloth Leggings
TokensArmorTokens[127778] = { [CLOTH] =  TokensArmorTokens[124551][CLOTH] } -- Baleful Cloth Robe
TokensArmorTokens[127783] = { [CLOTH] =  TokensArmorTokens[128348][CLOTH] } -- Baleful Cloth Spaulders
TokensArmorTokens[127779] = { [CLOTH] =  TokensArmorTokens[124552][CLOTH] } -- Baleful Cloth Treads
TokensArmorTokens[127790] = { [LEATHER] =  TokensArmorTokens[124550][LEATHER] } -- Baleful Leather Bracers
TokensArmorTokens[127793] = { [LEATHER] =  TokensArmorTokens[124553][LEATHER] } -- Baleful Leather Gauntlets
TokensArmorTokens[127797] = { [LEATHER] =  TokensArmorTokens[124557][LEATHER] } -- Baleful Leather Girdle
TokensArmorTokens[127794] = { [LEATHER] =  TokensArmorTokens[124554][LEATHER] } -- Baleful Leather Hood
TokensArmorTokens[127795] = { [LEATHER] =  TokensArmorTokens[124555][LEATHER] } -- Baleful Leather Leggings
TokensArmorTokens[127796] = { [LEATHER] =  TokensArmorTokens[128348][LEATHER] } -- Baleful Leather Spaulders
TokensArmorTokens[127792] = { [LEATHER] =  TokensArmorTokens[124552][LEATHER] } -- Baleful Leather Treads
TokensArmorTokens[127791] = { [LEATHER] =  TokensArmorTokens[124551][LEATHER] } -- Baleful Leather Tunic
TokensArmorTokens[127803] = { [MAIL] =  TokensArmorTokens[124550][MAIL] } -- Baleful Mail Bracers
TokensArmorTokens[127806] = { [MAIL] =  TokensArmorTokens[124553][MAIL] } -- Baleful Mail Gauntlets
TokensArmorTokens[127810] = { [MAIL] =  TokensArmorTokens[124557][MAIL] } -- Baleful Mail Girdle
TokensArmorTokens[127807] = { [MAIL] =  TokensArmorTokens[124554][MAIL] } -- Baleful Mail Hood
TokensArmorTokens[127808] = { [MAIL] =  TokensArmorTokens[124555][MAIL] } -- Baleful Mail Leggings
TokensArmorTokens[127804] = { [MAIL] =  TokensArmorTokens[124551][MAIL] } -- Baleful Mail Robe
TokensArmorTokens[127809] = { [MAIL] =  TokensArmorTokens[128348][MAIL] } -- Baleful Mail Spaulders
TokensArmorTokens[127805] = { [MAIL] =  TokensArmorTokens[124552][MAIL] } -- Baleful Mail Treads
TokensArmorTokens[127816] = { [PLATE] =  TokensArmorTokens[124550][PLATE] } -- Baleful Plate Bracers
TokensArmorTokens[127817] = { [PLATE] =  TokensArmorTokens[124551][PLATE] } -- Baleful Plate Chest
TokensArmorTokens[127819] = { [PLATE] =  TokensArmorTokens[124553][PLATE] } -- Baleful Plate Gauntlets
TokensArmorTokens[127823] = { [PLATE] =  TokensArmorTokens[124557][PLATE] } -- Baleful Plate Girdle
TokensArmorTokens[127820] = { [PLATE] =  TokensArmorTokens[124554][PLATE] } -- Baleful Plate Hood
TokensArmorTokens[127821] = { [PLATE] =  TokensArmorTokens[124555][PLATE] } -- Baleful Plate Leggings
TokensArmorTokens[127822] = { [PLATE] =  TokensArmorTokens[128348][PLATE] } -- Baleful Plate Spaulders
TokensArmorTokens[127818] = { [PLATE] =  TokensArmorTokens[124552][PLATE] } -- Baleful Plate Treads
TokensArmorTokens[124556] = TokensArmorTokens[128348] -- huh? double Baleful Spaulders item - in case it drops...


for k,v in pairs(TokensArmorTokens) do
         v["rnd"] = 1 -- all have random stats
         v["note"] = "turns into:"
         TokenSplainerTokens[k] = v
end