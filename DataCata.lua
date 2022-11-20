if not TokenSplainerTokens then return end

local CLOTH = "Cloth"
local LEATHER = "Leather"
local MAIL = "Mail"
local PLATE = "Plate"
local COSMETIC = "Cosmetic"
--complex
local PLATENODK = "PlateNoDK"
local LEATHERNOMONK = "LeatherNoMonk"
local LEATHERNODH = "LeatherNoDH"
--weapons
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

--roles
local ROLECASTER = "Caster"
local ROLEHEALER = "Healer"
local ROLEMELEE = "Melee"
local ROLERANGED = "Ranged"
local ROLETANK = "Tank"
local ROLEMELEEAGI = "Melee (Agi)"
local ROLEMELEESTR = "Melee (Str)"
local ROLETANKAGI = "Tank (Agi)"
local ROLETANKSTR = "Tank (Str)"
local ROLECASTHEAL = "Caster/Healer"

local TokensCata = {

-- T11 HC, iLvl 372
        [67425] = {
                [4] = { -- ROGUE
                        65239, -- Wind Dancer's Tunic
                },
                [6] = { -- DEATHKNIGHT
                        65179, -- Magma Plated Battleplate
                        65184, -- Magma Plated Chestguard
                },
                [8] = { -- MAGE
                        65212, -- Firelord's Robes
                },
                [11] = { -- DRUID
                        65192, -- Stormrider's Raiment
                        65197, -- Stormrider's Robes
                        65202, -- Stormrider's Vestment
                },
        },
        [67431] = {
                [4] = { -- ROGUE
                        65240, -- Wind Dancer's Gloves
                },
                [6] = { -- DEATHKNIGHT
                        65180, -- Magma Plated Gauntlets
                        65185, -- Magma Plated Handguards
                },
                [8] = { -- MAGE
                        65209, -- Firelord's Gloves
                },
                [11] = { -- DRUID
                        65189, -- Stormrider's Grips
                        65194, -- Stormrider's Handwraps
                        65199, -- Stormrider's Gloves
                },
        },
        [65002] = {
                [4] = { -- ROGUE
                        65241, -- Wind Dancer's Helmet
                },
                [6] = { -- DEATHKNIGHT
                        65181, -- Magma Plated Helmet
                        65186, -- Magma Plated Faceguard
                },
                [8] = { -- MAGE
                        65210, -- Firelord's Hood
                },
                [11] = { -- DRUID
                        65190, -- Stormrider's Headpiece
                        65195, -- Stormrider's Helm
                        65200, -- Stormrider's Cover
                },
        },
        [67426] = {
                [4] = { -- ROGUE
                        65242, -- Wind Dancer's Legguards
                },
                [6] = { -- DEATHKNIGHT
                        65182, -- Magma Plated Legplates
                        65187, -- Magma Plated Legguards
                },
                [8] = { -- MAGE
                        65211, -- Firelord's Leggings
                },
                [11] = { -- DRUID
                        65191, -- Stormrider's Legguards
                        65196, -- Stormrider's Legwraps
                        65201, -- Stormrider's Leggings
                },
        },
        [65089] = {
                [4] = { -- ROGUE
                        65243, -- Wind Dancer's Spaulders
                },
                [6] = { -- DEATHKNIGHT
                        65183, -- Magma Plated Pauldrons
                        65188, -- Magma Plated Shoulderguards
                },
                [8] = { -- MAGE
                        65213, -- Firelord's Mantle
                },
                [11] = { -- DRUID
                        65193, -- Stormrider's Spaulders
                        65198, -- Stormrider's Mantle
                        65203, -- Stormrider's Shoulderwraps
                },
        },
        [67424] = {
                [1] = { -- WARRIOR
                        65264, -- Earthen Battleplate
                        65269, -- Earthen Chestguard
                },
                [3] = { -- HUNTER
                        65204, -- Lightning-Charged Tunic
                },
                [7] = { -- SHAMAN
                        65244, -- Tunic of the Raging Elements
                        65249, -- Cuirass of the Raging Elements
                        65254, -- Hauberk of the Raging Elements
                },
        },
        [67430] = {
                [1] = { -- WARRIOR
                        65265, -- Earthen Gauntlets
                        65270, -- Earthen Handguards
                },
                [3] = { -- HUNTER
                        65205, -- Lightning-Charged Gloves
                },
                [7] = { -- SHAMAN
                        65245, -- Handwraps of the Raging Elements
                        65250, -- Grips of the Raging Elements
                        65255, -- Gloves of the Raging Elements
                },
        },
        [65000] = {
                [1] = { -- WARRIOR
                        65266, -- Earthen Helmet
                        65271, -- Earthen Faceguard
                },
                [3] = { -- HUNTER
                        65206, -- Lightning-Charged Headguard
                },
                [7] = { -- SHAMAN
                        65246, -- Faceguard of the Raging Elements
                        65251, -- Helmet of the Raging Elements
                        65256, -- Headpiece of the Raging Elements
                },
        },
        [67427] = {
                [1] = { -- WARRIOR
                        65267, -- Earthen Legplates
                        65272, -- Earthen Legguards
                },
                [3] = { -- HUNTER
                        65207, -- Lightning-Charged Legguards
                },
                [7] = { -- SHAMAN
                        65247, -- Legwraps of the Raging Elements
                        65252, -- Legguards of the Raging Elements
                        65257, -- Kilt of the Raging Elements
                },
        },
        [65087] = {
                [1] = { -- WARRIOR
                        65268, -- Earthen Pauldrons
                        65273, -- Earthen Shoulderguards
                },
                [3] = { -- HUNTER
                        65208, -- Lightning-Charged Spaulders
                },
                [7] = { -- SHAMAN
                        65248, -- Mantle of the Raging Elements
                        65253, -- Spaulders of the Raging Elements
                        65258, -- Shoulderwraps of the Raging Elements
                },
        },
        [67423] = {
                [2] = { -- PALADIN
                        65214, -- Reinforced Sapphirium Battleplate
                        65219, -- Reinforced Sapphirium Breastplate
                        65224, -- Reinforced Sapphirium Chestguard
                },
                [5] = { -- PRIEST
                        65232, -- Mercurial Robes
                        65237, -- Mercurial Vestment
                },
                [9] = { -- WARLOCK
                        65262, -- Shadowflame Robes
                },
        },
        [67429] = {
                [2] = { -- PALADIN
                        65215, -- Reinforced Sapphirium Gauntlets
                        65220, -- Reinforced Sapphirium Gloves
                        65225, -- Reinforced Sapphirium Handguards
                },
                [5] = { -- PRIEST
                        65229, -- Mercurial Handwraps
                        65234, -- Mercurial Gloves
                },
                [9] = { -- WARLOCK
                        65259, -- Shadowflame Handwraps
                },
        },
        [65001] = {
                [2] = { -- PALADIN
                        65216, -- Reinforced Sapphirium Helmet
                        65221, -- Reinforced Sapphirium Headguard
                        65226, -- Reinforced Sapphirium Faceguard
                },
                [5] = { -- PRIEST
                        65230, -- Mercurial Cowl
                        65235, -- Mercurial Hood
                },
                [9] = { -- WARLOCK
                        65260, -- Shadowflame Hood
                },
        },
        [67428] = {
                [2] = { -- PALADIN
                        65217, -- Reinforced Sapphirium Legplates
                        65222, -- Reinforced Sapphirium Greaves
                        65227, -- Reinforced Sapphirium Legguards
                },
                [5] = { -- PRIEST
                        65231, -- Mercurial Legwraps
                        65236, -- Mercurial Leggings
                },
                [9] = { -- WARLOCK
                        65261, -- Shadowflame Leggings
                },
        },
        [65088] = {
                [2] = { -- PALADIN
                        65218, -- Reinforced Sapphirium Pauldrons
                        65223, -- Reinforced Sapphirium Mantle
                        65228, -- Reinforced Sapphirium Shoulderguards
                },
                [5] = { -- PRIEST
                        65233, -- Mercurial Mantle
                        65238, -- Mercurial Shoulderwraps
                },
                [9] = { -- WARLOCK
                        65263, -- Shadowflame Mantle
                },
        },

-- T12 HC, iLvl 391
        [71669] = {
                [4] = { -- ROGUE
                        71538, -- Dark Phoenix Gloves, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        71477, -- Elementium Deathplate Gauntlets, Heroic
                        71482, -- Elementium Deathplate Handguards, Heroic
                },
                [8] = { -- MAGE
                        71507, -- Firehawk Gloves, Heroic
                },
                [11] = { -- DRUID
                        71487, -- Obsidian Arborweave Grips, Heroic
                        71491, -- Obsidian Arborweave Handwraps, Heroic
                        71496, -- Obsidian Arborweave Gloves, Heroic
                },
        },
        [71670] = {
                [4] = { -- ROGUE
                        71539, -- Dark Phoenix Helmet, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        71478, -- Elementium Deathplate Helmet, Heroic
                        71483, -- Elementium Deathplate Faceguard, Heroic
                },
                [8] = { -- MAGE
                        71508, -- Firehawk Hood, Heroic
                },
                [11] = { -- DRUID
                        71488, -- Obsidian Arborweave Headpiece, Heroic
                        71492, -- Obsidian Arborweave Helm, Heroic
                        71497, -- Obsidian Arborweave Cover, Heroic
                },
        },
        [71671] = {
                [4] = { -- ROGUE
                        71540, -- Dark Phoenix Legguards, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        71479, -- Elementium Deathplate Greaves, Heroic
                        71484, -- Elementium Deathplate Legguards, Heroic
                },
                [8] = { -- MAGE
                        71509, -- Firehawk Leggings, Heroic
                },
                [11] = { -- DRUID
                        71489, -- Obsidian Arborweave Legguards, Heroic
                        71493, -- Obsidian Arborweave Legwraps, Heroic
                        71498, -- Obsidian Arborweave Leggings, Heroic
                },
        },
        [71672] = {
                [4] = { -- ROGUE
                        71537, -- Dark Phoenix Tunic, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        71476, -- Elementium Deathplate Breastplate, Heroic
                        71481, -- Elementium Deathplate Chestguard, Heroic
                },
                [8] = { -- MAGE
                        71510, -- Firehawk Robes, Heroic
                },
                [11] = { -- DRUID
                        71486, -- Obsidian Arborweave Raiment, Heroic
                        71494, -- Obsidian Arborweave Tunic, Heroic
                        71499, -- Obsidian Arborweave Vestment, Heroic
                },
        },
        [71673] = {
                [4] = { -- ROGUE
                        71541, -- Dark Phoenix Spaulders, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        71480, -- Elementium Deathplate Pauldrons, Heroic
                        71485, -- Elementium Deathplate Shoulderguards, Heroic
                },
                [8] = { -- MAGE
                        71511, -- Firehawk Mantle, Heroic
                },
                [11] = { -- DRUID
                        71490, -- Obsidian Arborweave Spaulders, Heroic
                        71495, -- Obsidian Arborweave Mantle, Heroic
                        71500, -- Obsidian Arborweave Shoulderwraps, Heroic
                },
        },
        [71676] = {
                [2] = { -- PALADIN
                        71513, -- Immolation Gauntlets, Heroic
                        71518, -- Immolation Gloves, Heroic
                        71523, -- Immolation Handguards, Heroic
                },
                [5] = { -- PRIEST
                        71527, -- Handwraps of the Cleansing Flame, Heroic
                        71532, -- Gloves of the Cleansing Flame, Heroic
                },
                [9] = { -- WARLOCK
                        71594, -- Balespider's Handwraps, Heroic
                },
        },
        [71677] = {
                [2] = { -- PALADIN
                        71514, -- Immolation Helmet, Heroic
                        71519, -- Immolation Headguard, Heroic
                        71524, -- Immolation Faceguard, Heroic
                },
                [5] = { -- PRIEST
                        71528, -- Cowl of the Cleansing Flame, Heroic
                        71533, -- Hood of the Cleansing Flame, Heroic
                },
                [9] = { -- WARLOCK
                        71595, -- Balespider's Hood, Heroic
                },
        },
        [71678] = {
                [2] = { -- PALADIN
                        71515, -- Immolation Legplates, Heroic
                        71520, -- Immolation Greaves, Heroic
                        71525, -- Immolation Legguards, Heroic
                },
                [5] = { -- PRIEST
                        71529, -- Legwraps of the Cleansing Flame, Heroic
                        71534, -- Leggings of the Cleansing Flame, Heroic
                },
                [9] = { -- WARLOCK
                        71596, -- Balespider's Leggings, Heroic
                },
        },
        [71679] = {
                [2] = { -- PALADIN
                        71512, -- Immolation Battleplate, Heroic
                        71517, -- Immolation Breastplate, Heroic
                        71522, -- Immolation Chestguard, Heroic
                },
                [5] = { -- PRIEST
                        71530, -- Robes of the Cleansing Flame, Heroic
                        71535, -- Vestment of the Cleansing Flame, Heroic
                },
                [9] = { -- WARLOCK
                        71597, -- Balespider's Robes, Heroic
                },
        },
        [71680] = {
                [2] = { -- PALADIN
                        71516, -- Immolation Pauldrons, Heroic
                        71521, -- Immolation Mantle, Heroic
                        71526, -- Immolation Shoulderguards, Heroic
                },
                [5] = { -- PRIEST
                        71531, -- Mantle of the Cleansing Flame, Heroic
                        71536, -- Shoulderwraps of the Cleansing Flame, Heroic
                },
                [9] = { -- WARLOCK
                        71598, -- Balespider's Mantle, Heroic
                },
        },
        [71686] = {
                [1] = { -- WARRIOR
                        71600, -- Battleplate of the Molten Giant, Heroic
                        71604, -- Chestguard of the Molten Giant, Heroic
                },
                [3] = { -- HUNTER
                        71501, -- Flamewaker's Tunic, Heroic
                },
                [7] = { -- SHAMAN
                        71542, -- Erupting Volcanic Tunic, Heroic
                        71547, -- Erupting Volcanic Cuirass, Heroic
                        71552, -- Erupting Volcanic Hauberk, Heroic
                },
        },
        [71683] = {
                [1] = { -- WARRIOR
                        71601, -- Gauntlets of the Molten Giant, Heroic
                        71605, -- Handguards of the Molten Giant, Heroic
                },
                [3] = { -- HUNTER
                        71502, -- Flamewaker's Gloves, Heroic
                },
                [7] = { -- SHAMAN
                        71543, -- Erupting Volcanic Handwraps, Heroic
                        71548, -- Erupting Volcanic Grips, Heroic
                        71553, -- Erupting Volcanic Gloves, Heroic
                },
        },
        [71684] = {
                [1] = { -- WARRIOR
                        71599, -- Helmet of the Molten Giant, Heroic
                        71606, -- Faceguard of the Molten Giant, Heroic
                },
                [3] = { -- HUNTER
                        71503, -- Flamewaker's Headguard, Heroic
                },
                [7] = { -- SHAMAN
                        71544, -- Erupting Volcanic Faceguard, Heroic
                        71549, -- Erupting Volcanic Helmet, Heroic
                        71554, -- Erupting Volcanic Headpiece, Heroic
                },
        },
        [71685] = {
                [1] = { -- WARRIOR
                        71602, -- Legplates of the Molten Giant, Heroic
                        71607, -- Legguards of the Molten Giant, Heroic
                },
                [3] = { -- HUNTER
                        71504, -- Flamewaker's Legguards, Heroic
                },
                [7] = { -- SHAMAN
                        71545, -- Erupting Volcanic Legwraps, Heroic
                        71550, -- Erupting Volcanic Legguards, Heroic
                        71555, -- Erupting Volcanic Kilt, Heroic
                },
        },
        [71687] = {
                [1] = { -- WARRIOR
                        71603, -- Pauldrons of the Molten Giant, Heroic
                        71608, -- Shoulderguards of the Molten Giant, Heroic
                },
                [3] = { -- HUNTER
                        71505, -- Flamewaker's Spaulders, Heroic
                },
                [7] = { -- SHAMAN
                        71546, -- Erupting Volcanic Mantle, Heroic
                        71551, -- Erupting Volcanic Spaulders, Heroic
                        71556, -- Erupting Volcanic Shoulderwraps, Heroic
                },
        },

        -- HC Upgrades for trash drops with Crystallized Firestone #71617
        [71640] = {
                [LEATHER] = {
                        71641, -- Riplimb's Lost Collar
                },
        },
        [71365] = {
                [MAIL] = {
                        71561, -- Hide-Bound Chains
                },
        },
        [71366] = {
                [RANGED] = {
                        71558, -- Lava Bolt Crossbow
                },
        },
        [71359] = {
                [DAGGER] = {
                        71560, -- Chelley's Sterilized Scalpel
                },
        },
        [71362] = {
                [AXE1] = {
                        71562, -- Obsidium Cleaver
                },
        },
        [71361] = {
                [POLEARM] = {
                        71557, -- Ranseur of Hatred
                },
        },
        [71360] = {
                [STAFF] = {
                        71559, -- Spire of Scarlet Pain
                },
        },
        [71151] = {
                [WAND] = {
                        71575, -- Trail of Embers
                },
        },
        [71150] = {
                [WAND] = {
                        71579, -- Scorchvine Wand
                },
        },


-- T13 LFR, iLvl 384
        [78865] = {
                [4] = { -- ROGUE
                        78774, -- Blackfang Battleweave Gloves, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        78765, -- Necrotic Boneplate Gauntlets, Raid Finder
                        78773, -- Necrotic Boneplate Handguards, Raid Finder
                },
                [8] = { -- MAGE
                        78766, -- Time Lord's Gloves, Raid Finder
                },
                [11] = { -- DRUID
                        78771, -- Deep Earth Gloves, Raid Finder
                        78775, -- Deep Earth Handwraps, Raid Finder
                        78779, -- Deep Earth Grips, Raid Finder
                },
        },
        [78866] = {
                [2] = { -- PALADIN
                        78768, -- Gloves of Radiant Glory, Raid Finder
                        78770, -- Gauntlets of Radiant Glory, Raid Finder
                        78772, -- Handguards of Radiant Glory, Raid Finder
                },
                [5] = { -- PRIEST
                        78777, -- Gloves of Dying Light, Raid Finder
                        78778, -- Handwraps of Dying Light, Raid Finder
                },
                [9] = { -- WARLOCK
                        78776, -- Gloves of the Faceless Shroud, Raid Finder
                },
        },
        [78869] = {
                [2] = { -- PALADIN
                        78787, -- Headguard of Radiant Glory, Raid Finder
                        78788, -- Helmet of Radiant Glory, Raid Finder
                        78790, -- Faceguard of Radiant Glory, Raid Finder
                },
                [5] = { -- PRIEST
                        78795, -- Cowl of Dying Light, Raid Finder
                        78798, -- Hood of Dying Light, Raid Finder
                },
                [9] = { -- WARLOCK
                        78797, -- Hood of the Faceless Shroud, Raid Finder
                },
        },
        [78868] = {
                [4] = { -- ROGUE
                        78794, -- Blackfang Battleweave Helmet, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        78782, -- Necrotic Boneplate Helmet, Raid Finder
                        78792, -- Necrotic Boneplate Faceguard, Raid Finder
                },
                [8] = { -- MAGE
                        78796, -- Time Lord's Hood, Raid Finder
                },
                [11] = { -- DRUID
                        78785, -- Deep Earth Helm, Raid Finder
                        78789, -- Deep Earth Headpiece, Raid Finder
                        78791, -- Deep Earth Cover, Raid Finder
                },
        },
        [78872] = {
                [2] = { -- PALADIN
                        78807, -- Legplates of Radiant Glory, Raid Finder
                        78810, -- Legguards of Radiant Glory, Raid Finder
                        78812, -- Greaves of Radiant Glory, Raid Finder
                },
                [5] = { -- PRIEST
                        78814, -- Legwraps of Dying Light, Raid Finder
                        78817, -- Leggings of Dying Light, Raid Finder
                },
                [9] = { -- WARLOCK
                        78816, -- Leggings of the Faceless Shroud, Raid Finder
                },
        },
        [78871] = {
                [4] = { -- ROGUE
                        78803, -- Blackfang Battleweave Legguards, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        78802, -- Necrotic Boneplate Greaves, Raid Finder
                        78811, -- Necrotic Boneplate Legguards, Raid Finder
                },
                [8] = { -- MAGE
                        78815, -- Time Lord's Leggings, Raid Finder
                },
                [11] = { -- DRUID
                        78805, -- Deep Earth Legwraps, Raid Finder
                        78808, -- Deep Earth Legguards, Raid Finder
                        78809, -- Deep Earth Leggings, Raid Finder
                },
        },
        [78863] = {
                [2] = { -- PALADIN
                        78821, -- Breastplate of Radiant Glory, Raid Finder
                        78822, -- Battleplate of Radiant Glory, Raid Finder
                        78827, -- Chestguard of Radiant Glory, Raid Finder
                },
                [5] = { -- PRIEST
                        78823, -- Robes of Dying Light, Raid Finder
                        78826, -- Robes of Dying Light, Raid Finder
                },
                [9] = { -- WARLOCK
                        78825, -- Robes of the Faceless Shroud, Raid Finder
                },
        },
        [78862] = {
                [4] = { -- ROGUE
                        78759, -- Blackfang Battleweave Tunic, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        78754, -- Necrotic Boneplate Breastplate, Raid Finder
                        78758, -- Necrotic Boneplate Chestguard, Raid Finder
                },
                [8] = { -- MAGE
                        78824, -- Time Lord's Robes, Raid Finder
                },
                [11] = { -- DRUID
                        78755, -- Deep Earth Robes, Raid Finder
                        78757, -- Deep Earth Vestment, Raid Finder
                        78760, -- Deep Earth Raiment, Raid Finder
                },
        },
        [78875] = {
                [2] = { -- PALADIN
                        78837, -- Pauldrons of Radiant Glory, Raid Finder
                        78840, -- Shoulderguards of Radiant Glory, Raid Finder
                        78841, -- Mantle of Radiant Glory, Raid Finder
                },
                [5] = { -- PRIEST
                        78842, -- Mantle of Dying Light, Raid Finder
                        78845, -- Mantle of Dying Light, Raid Finder
                },
                [9] = { -- WARLOCK
                        78844, -- Mantle of the Faceless Shroud, Raid Finder
                },
        },
        [78874] = {
                [4] = { -- ROGUE
                        78833, -- Blackfang Battleweave Spaulders, Raid Finder
                },
                [6] = { -- DEATHKNIGHT
                        78831, -- Necrotic Boneplate Pauldrons, Raid Finder
                        78846, -- Necrotic Boneplate Shoulderguards, Raid Finder
                },
                [8] = { -- MAGE
                        78843, -- Time Lord's Mantle, Raid Finder
                },
                [11] = { -- DRUID
                        78835, -- Deep Earth Mantle, Raid Finder
                        78838, -- Deep Earth Spaulders, Raid Finder
                        78839, -- Deep Earth Shoulderwraps, Raid Finder
                },
        },
        [78864] = {
                [1] = { -- WARRIOR
                        78752, -- Colossal Dragonplate Battleplate, Raid Finder
                        78753, -- Colossal Dragonplate Chestguard, Raid Finder
                },
                [3] = { -- HUNTER
                        78756, -- Wyrmstalker's Tunic, Raid Finder
                },
                [7] = { -- SHAMAN
                        78818, -- Spiritwalker's Hauberk, Raid Finder
                        78819, -- Spiritwalker's Cuirass, Raid Finder
                        78820, -- Spiritwalker's Tunic, Raid Finder
                },
        },
        [78867] = {
                [1] = { -- WARRIOR
                        78763, -- Colossal Dragonplate Gauntlets, Raid Finder
                        78764, -- Colossal Dragonplate Handguards, Raid Finder
                },
                [3] = { -- HUNTER
                        78769, -- Wyrmstalker's Gloves, Raid Finder
                },
                [7] = { -- SHAMAN
                        78761, -- Spiritwalker's Gloves, Raid Finder
                        78762, -- Spiritwalker's Grips, Raid Finder
                        78767, -- Spiritwalker's Handwraps, Raid Finder
                },
        },
        [78870] = {
                [1] = { -- WARRIOR
                        78783, -- Colossal Dragonplate Helmet, Raid Finder
                        78784, -- Colossal Dragonplate Faceguard, Raid Finder
                },
                [3] = { -- HUNTER
                        78793, -- Wyrmstalker's Headguard, Raid Finder
                },
                [7] = { -- SHAMAN
                        78780, -- Spiritwalker's Headpiece, Raid Finder
                        78781, -- Spiritwalker's Helmet, Raid Finder
                        78786, -- Spiritwalker's Faceguard, Raid Finder
                },
        },
        [78873] = {
                [1] = { -- WARRIOR
                        78800, -- Colossal Dragonplate Legguards, Raid Finder
                        78801, -- Colossal Dragonplate Legplates, Raid Finder
                },
                [3] = { -- HUNTER
                        78804, -- Wyrmstalker's Legguards, Raid Finder
                },
                [7] = { -- SHAMAN
                        78799, -- Spiritwalker's Legguards, Raid Finder
                        78806, -- Spiritwalker's Kilt, Raid Finder
                        78813, -- Spiritwalker's Legwraps, Raid Finder
                },
        },
        [78876] = {
                [1] = { -- WARRIOR
                        78829, -- Colossal Dragonplate Shoulderguards, Raid Finder
                        78830, -- Colossal Dragonplate Pauldrons, Raid Finder
                },
                [3] = { -- HUNTER
                        78832, -- Wyrmstalker's Spaulders, Raid Finder
                },
                [7] = { -- SHAMAN
                        78828, -- Spiritwalker's Spaulders, Raid Finder
                        78834, -- Spiritwalker's Mantle, Raid Finder
                        78836, -- Spiritwalker's Shoulderwraps, Raid Finder
                },
        },

-- T13 Normal, iLvl 397
        [78173] = {
                [4] = { -- ROGUE
                        77024, -- Blackfang Battleweave Gloves
                },
                [6] = { -- DEATHKNIGHT
                        76975, -- Necrotic Boneplate Gauntlets
                        77009, -- Necrotic Boneplate Handguards
                },
                [8] = { -- MAGE
                        76212, -- Time Lord's Gloves
                },
                [11] = { -- DRUID
                        76749, -- Deep Earth Handwraps
                        77014, -- Deep Earth Grips
                        77018, -- Deep Earth Gloves
                },
        },
        [78172] = {
                [4] = { -- ROGUE
                        77025, -- Blackfang Battleweave Helmet
                },
                [6] = { -- DEATHKNIGHT
                        76976, -- Necrotic Boneplate Helmet
                        77010, -- Necrotic Boneplate Faceguard
                },
                [8] = { -- MAGE
                        76213, -- Time Lord's Hood
                },
                [11] = { -- DRUID
                        76750, -- Deep Earth Helm
                        77015, -- Deep Earth Headpiece
                        77019, -- Deep Earth Cover
                },
        },
        [78171] = {
                [4] = { -- ROGUE
                        77026, -- Blackfang Battleweave Legguards
                },
                [6] = { -- DEATHKNIGHT
                        76977, -- Necrotic Boneplate Greaves
                        77011, -- Necrotic Boneplate Legguards
                },
                [8] = { -- MAGE
                        76214, -- Time Lord's Leggings
                },
                [11] = { -- DRUID
                        76751, -- Deep Earth Legwraps
                        77016, -- Deep Earth Legguards
                        77020, -- Deep Earth Leggings
                },
        },
        [78174] = {
                [4] = { -- ROGUE
                        77023, -- Blackfang Battleweave Tunic
                },
                [6] = { -- DEATHKNIGHT
                        76974, -- Necrotic Boneplate Breastplate
                        77008, -- Necrotic Boneplate Chestguard
                },
                [8] = { -- MAGE
                        76215, -- Time Lord's Robes
                },
                [11] = { -- DRUID
                        76752, -- Deep Earth Robes
                        77013, -- Deep Earth Raiment
                        77021, -- Deep Earth Vestment
                },
        },
        [78170] = {
                [4] = { -- ROGUE
                        77027, -- Blackfang Battleweave Spaulders
                },
                [6] = { -- DEATHKNIGHT
                        76978, -- Necrotic Boneplate Pauldrons
                        77012, -- Necrotic Boneplate Shoulderguards
                },
                [8] = { -- MAGE
                        76216, -- Time Lord's Mantle
                },
                [11] = { -- DRUID
                        76753, -- Deep Earth Mantle
                        77017, -- Deep Earth Spaulders
                        77022, -- Deep Earth Shoulderwraps
                },
        },
        [78180] = {
                [2] = { -- PALADIN
                        76769, -- Mantle of Radiant Glory
                        76878, -- Pauldrons of Radiant Glory
                        77007, -- Shoulderguards of Radiant Glory
                },
                [5] = { -- PRIEST
                        76344, -- Mantle of Dying Light
                        76361, -- Mantle of Dying Light
                },
                [9] = { -- WARLOCK
                        76339, -- Mantle of the Faceless Shroud
                },
        },
        [78184] = {
                [2] = { -- PALADIN
                        76765, -- Breastplate of Radiant Glory
                        76874, -- Battleplate of Radiant Glory
                        77003, -- Chestguard of Radiant Glory
                },
                [5] = { -- PRIEST
                        76345, -- Robes of Dying Light
                        76360, -- Robes of Dying Light
                },
                [9] = { -- WARLOCK
                        76340, -- Robes of the Faceless Shroud
                },
        },
        [78181] = {
                [2] = { -- PALADIN
                        76768, -- Greaves of Radiant Glory
                        76877, -- Legplates of Radiant Glory
                        77006, -- Legguards of Radiant Glory
                },
                [5] = { -- PRIEST
                        76346, -- Leggings of Dying Light
                        76359, -- Legwraps of Dying Light
                },
                [9] = { -- WARLOCK
                        76341, -- Leggings of the Faceless Shroud
                },
        },
        [78182] = {
                [2] = { -- PALADIN
                        76767, -- Headguard of Radiant Glory
                        76876, -- Helmet of Radiant Glory
                        77005, -- Faceguard of Radiant Glory
                },
                [5] = { -- PRIEST
                        76347, -- Hood of Dying Light
                        76358, -- Cowl of Dying Light
                },
                [9] = { -- WARLOCK
                        76342, -- Hood of the Faceless Shroud
                },
        },
        [78183] = {
                [2] = { -- PALADIN
                        76766, -- Gloves of Radiant Glory
                        76875, -- Gauntlets of Radiant Glory
                        77004, -- Handguards of Radiant Glory
                },
                [5] = { -- PRIEST
                        76348, -- Gloves of Dying Light
                        76357, -- Handwraps of Dying Light
                },
                [9] = { -- WARLOCK
                        76343, -- Gloves of the Faceless Shroud
                },
        },
        [78179] = {
                [1] = { -- WARRIOR
                        76984, -- Colossal Dragonplate Battleplate
                        76988, -- Colossal Dragonplate Chestguard
                },
                [3] = { -- HUNTER
                        77028, -- Wyrmstalker's Tunic
                },
                [7] = { -- SHAMAN
                        76756, -- Spiritwalker's Tunic
                        77039, -- Spiritwalker's Hauberk
                        77040, -- Spiritwalker's Cuirass
                },
        },
        [78178] = {
                [1] = { -- WARRIOR
                        76985, -- Colossal Dragonplate Gauntlets
                        76989, -- Colossal Dragonplate Handguards
                },
                [3] = { -- HUNTER
                        77029, -- Wyrmstalker's Gloves
                },
                [7] = { -- SHAMAN
                        76757, -- Spiritwalker's Handwraps
                        77038, -- Spiritwalker's Gloves
                        77041, -- Spiritwalker's Grips
                },
        },
        [78177] = {
                [1] = { -- WARRIOR
                        76983, -- Colossal Dragonplate Helmet
                        76990, -- Colossal Dragonplate Faceguard
                },
                [3] = { -- HUNTER
                        77030, -- Wyrmstalker's Headguard
                },
                [7] = { -- SHAMAN
                        76758, -- Spiritwalker's Faceguard
                        77037, -- Spiritwalker's Headpiece
                        77042, -- Spiritwalker's Helmet
                },
        },
        [78176] = {
                [1] = { -- WARRIOR
                        76986, -- Colossal Dragonplate Legplates
                        76991, -- Colossal Dragonplate Legguards
                },
                [3] = { -- HUNTER
                        77031, -- Wyrmstalker's Legguards
                },
                [7] = { -- SHAMAN
                        76759, -- Spiritwalker's Legwraps
                        77036, -- Spiritwalker's Kilt
                        77043, -- Spiritwalker's Legguards
                },
        },
        [78175] = {
                [1] = { -- WARRIOR
                        76987, -- Colossal Dragonplate Pauldrons
                        76992, -- Colossal Dragonplate Shoulderguards
                },
                [3] = { -- HUNTER
                        77032, -- Wyrmstalker's Spaulders
                },
                [7] = { -- SHAMAN
                        76760, -- Spiritwalker's Mantle
                        77035, -- Spiritwalker's Shoulderwraps
                        77044, -- Spiritwalker's Spaulders
                },
        },


-- T13 HC, iLvl 410
        [78855] = {
                [4] = { -- ROGUE
                        78679, -- Blackfang Battleweave Gloves, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        78670, -- Necrotic Boneplate Gauntlets, Heroic
                        78678, -- Necrotic Boneplate Handguards, Heroic
                },
                [8] = { -- MAGE
                        78671, -- Time Lord's Gloves, Heroic
                },
                [11] = { -- DRUID
                        78676, -- Deep Earth Gloves, Heroic
                        78680, -- Deep Earth Handwraps, Heroic
                        78684, -- Deep Earth Grips, Heroic
                },
        },
        [78853] = {
                [2] = { -- PALADIN
                        78673, -- Gloves of Radiant Glory, Heroic
                        78675, -- Gauntlets of Radiant Glory, Heroic
                        78677, -- Handguards of Radiant Glory, Heroic
                },
                [5] = { -- PRIEST
                        78682, -- Gloves of Dying Light, Heroic
                        78683, -- Handwraps of Dying Light, Heroic
                },
                [9] = { -- WARLOCK
                        78681, -- Gloves of the Faceless Shroud, Heroic
                },
        },
        [78850] = {
                [2] = { -- PALADIN
                        78692, -- Headguard of Radiant Glory, Heroic
                        78693, -- Helmet of Radiant Glory, Heroic
                        78695, -- Faceguard of Radiant Glory, Heroic
                },
                [5] = { -- PRIEST
                        78700, -- Cowl of Dying Light, Heroic
                        78703, -- Hood of Dying Light, Heroic
                },
                [9] = { -- WARLOCK
                        78702, -- Hood of the Faceless Shroud, Heroic
                },
        },
        [78852] = {
                [4] = { -- ROGUE
                        78699, -- Blackfang Battleweave Helmet, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        78687, -- Necrotic Boneplate Helmet, Heroic
                        78697, -- Necrotic Boneplate Faceguard, Heroic
                },
                [8] = { -- MAGE
                        78701, -- Time Lord's Hood, Heroic
                },
                [11] = { -- DRUID
                        78690, -- Deep Earth Helm, Heroic
                        78694, -- Deep Earth Headpiece, Heroic
                        78696, -- Deep Earth Cover, Heroic
                },
        },
        [78856] = {
                [2] = { -- PALADIN
                        78712, -- Legplates of Radiant Glory, Heroic
                        78715, -- Legguards of Radiant Glory, Heroic
                        78717, -- Greaves of Radiant Glory, Heroic
                },
                [5] = { -- PRIEST
                        78719, -- Legwraps of Dying Light, Heroic
                        78722, -- Leggings of Dying Light, Heroic
                },
                [9] = { -- WARLOCK
                        78721, -- Leggings of the Faceless Shroud, Heroic
                },
        },
        [78858] = {
                [4] = { -- ROGUE
                        78708, -- Blackfang Battleweave Legguards, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        78707, -- Necrotic Boneplate Greaves, Heroic
                        78716, -- Necrotic Boneplate Legguards, Heroic
                },
                [8] = { -- MAGE
                        78720, -- Time Lord's Leggings, Heroic
                },
                [11] = { -- DRUID
                        78710, -- Deep Earth Legwraps, Heroic
                        78713, -- Deep Earth Legguards, Heroic
                        78714, -- Deep Earth Leggings, Heroic
                },
        },
        [78847] = {
                [2] = { -- PALADIN
                        78726, -- Breastplate of Radiant Glory, Heroic
                        78727, -- Battleplate of Radiant Glory, Heroic
                        78732, -- Chestguard of Radiant Glory, Heroic
                },
                [5] = { -- PRIEST
                        78728, -- Robes of Dying Light, Heroic
                        78731, -- Robes of Dying Light, Heroic
                },
                [9] = { -- WARLOCK
                        78730, -- Robes of the Faceless Shroud, Heroic
                },
        },
        [78849] = {
                [4] = { -- ROGUE
                        78664, -- Blackfang Battleweave Tunic, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        78659, -- Necrotic Boneplate Breastplate, Heroic
                        78663, -- Necrotic Boneplate Chestguard, Heroic
                },
                [8] = { -- MAGE
                        78729, -- Time Lord's Robes, Heroic
                },
                [11] = { -- DRUID
                        78660, -- Deep Earth Robes, Heroic
                        78662, -- Deep Earth Vestment, Heroic
                        78665, -- Deep Earth Raiment, Heroic
                },
        },
        [78859] = {
                [2] = { -- PALADIN
                        78742, -- Pauldrons of Radiant Glory, Heroic
                        78745, -- Shoulderguards of Radiant Glory, Heroic
                        78746, -- Mantle of Radiant Glory, Heroic
                },
                [5] = { -- PRIEST
                        78747, -- Mantle of Dying Light, Heroic
                        78750, -- Mantle of Dying Light, Heroic
                },
                [9] = { -- WARLOCK
                        78749, -- Mantle of the Faceless Shroud, Heroic
                },
        },
        [78861] = {
                [4] = { -- ROGUE
                        78738, -- Blackfang Battleweave Spaulders, Heroic
                },
                [6] = { -- DEATHKNIGHT
                        78736, -- Necrotic Boneplate Pauldrons, Heroic
                        78751, -- Necrotic Boneplate Shoulderguards, Heroic
                },
                [8] = { -- MAGE
                        78748, -- Time Lord's Mantle, Heroic
                },
                [11] = { -- DRUID
                        78740, -- Deep Earth Mantle, Heroic
                        78743, -- Deep Earth Spaulders, Heroic
                        78744, -- Deep Earth Shoulderwraps, Heroic
                },
        },
        [78848] = {
                [1] = { -- WARRIOR
                        78657, -- Colossal Dragonplate Battleplate, Heroic
                        78658, -- Colossal Dragonplate Chestguard, Heroic
                },
                [3] = { -- HUNTER
                        78661, -- Wyrmstalker's Tunic, Heroic
                },
                [7] = { -- SHAMAN
                        78723, -- Spiritwalker's Hauberk, Heroic
                        78724, -- Spiritwalker's Cuirass, Heroic
                        78725, -- Spiritwalker's Tunic, Heroic
                },
        },
        [78854] = {
                [1] = { -- WARRIOR
                        78668, -- Colossal Dragonplate Gauntlets, Heroic
                        78669, -- Colossal Dragonplate Handguards, Heroic
                },
                [3] = { -- HUNTER
                        78674, -- Wyrmstalker's Gloves, Heroic
                },
                [7] = { -- SHAMAN
                        78666, -- Spiritwalker's Gloves, Heroic
                        78667, -- Spiritwalker's Grips, Heroic
                        78672, -- Spiritwalker's Handwraps, Heroic
                },
        },
        [78851] = {
                [1] = { -- WARRIOR
                        78688, -- Colossal Dragonplate Helmet, Heroic
                        78689, -- Colossal Dragonplate Faceguard, Heroic
                },
                [3] = { -- HUNTER
                        78698, -- Wyrmstalker's Headguard, Heroic
                },
                [7] = { -- SHAMAN
                        78685, -- Spiritwalker's Headpiece, Heroic
                        78686, -- Spiritwalker's Helmet, Heroic
                        78691, -- Spiritwalker's Faceguard, Heroic
                },
        },
        [78857] = {
                [1] = { -- WARRIOR
                        78705, -- Colossal Dragonplate Legguards, Heroic
                        78706, -- Colossal Dragonplate Legplates, Heroic
                },
                [3] = { -- HUNTER
                        78709, -- Wyrmstalker's Legguards, Heroic
                },
                [7] = { -- SHAMAN
                        78704, -- Spiritwalker's Legguards, Heroic
                        78711, -- Spiritwalker's Kilt, Heroic
                        78718, -- Spiritwalker's Legwraps, Heroic
                },
        },
        [78860] = {
                [1] = { -- WARRIOR
                        78734, -- Colossal Dragonplate Shoulderguards, Heroic
                        78735, -- Colossal Dragonplate Pauldrons, Heroic
                },
                [3] = { -- HUNTER
                        78737, -- Wyrmstalker's Spaulders, Heroic
                },
                [7] = { -- SHAMAN
                        78733, -- Spiritwalker's Spaulders, Heroic
                        78739, -- Spiritwalker's Mantle, Heroic
                        78741, -- Spiritwalker's Shoulderwraps, Heroic
                },
        },
}

-- unused T12 tokens, Helm of the Fiery X, Mantle of the Fiery X
local unused = { 71668, 71675, 71682, 71674, 71681, 71688 }
for _,u in pairs(unused) do
         TokensCata[u] = -1
end

for k,v in pairs(TokensCata) do

         -- unlike BC, here we can say: if a token yields 2 or 3 items per class, they have the same appearance
         if type(v)=="table" then
          for i,c in pairs(v) do
                 if type(c)=="table" and #c>1 and #c<4 then
                         c["same"]=1
                         v[i]={c}
                 end
          end
         end


         TokenSplainerTokens[k] = v

end