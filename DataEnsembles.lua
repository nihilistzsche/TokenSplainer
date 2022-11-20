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

local TokensEnsembleTokens = {

        -- Scarlet Crusade Ensembles, via Darkmoon Faire and Tabard
        [138430] = { -- Ensemble: Chain of the Scarlet Crusade
                [MAIL] = {
                        { ["set"] = 1,
                        10328, -- Scarlet Chestpiece
                        10329, -- Scarlet Belt
                        10330, -- Scarlet Leggings
                        10331, -- Scarlet Gauntlets
                        10332, -- Scarlet Boots
                        10333, -- Scarlet Wristguards
                        },
                },
        },

        [138431] = { -- Ensemble: Scale of the Scarlet Crusade
                [PLATE] = {
                        { ["set"] = 1,
                        138423, -- Scarlet Chestpiece
                        138424, -- Scarlet Belt
                        138425, -- Scarlet Leggings
                        138426, -- Scarlet Gauntlets
                        138427, -- Scarlet Boots
                        138428, -- Scarlet Wristguards
                        },
                },
        },

        -- Demon Invasion Ensembles
        [139170] = { -- Ensemble: Fel-Infused Cloth Armor
                [CLOTH] = { -- Fel-Infused ...
                        { ["set"] = 1,
                        138180, -- Cinch
                        138181, -- Bracers
                        138182, -- Grips
                        138183, -- Boots
                        138184, -- Helm
                        138185, -- Leggings
                        138186, -- Spaulders
                        138187, -- Hauberk
                        },
                },
        },
        [139169] = { -- Ensemble: Felshroud Leather Armor
                [LEATHER] = { -- Felshroud ...
                        { ["set"] = 1,
                        138163, -- Bindings
                        138164, -- Boots
                        138165, -- Pants
                        138166, -- Gloves
                        138167, -- Hood
                        138168, -- Shoulders
                        138169, -- Belt
                        138192, -- Vest
                        },
                },
        },
        [139168] = { -- Ensemble: Fel-Chain Mail Armor
                [MAIL] = { -- Fel-Chain ...
                        { ["set"] = 1,
                        138172, -- Cinch
                        138173, -- Bracers
                        138174, -- Grips
                        138175, -- Boots
                        138176, -- Helm
                        138177, -- Leggings
                        138178, -- Spaulders
                        138179, -- Hauberk
                        },
                },
        },
        [139167] = { -- Ensemble: Felforged Plate Armor
                [PLATE] = { -- Felforged ...
                        { ["set"] = 1,
                        138152, -- Chestplate
                        138153, -- Gauntlets
                        138154, -- Waistplate
                        138155, -- Helmet
                        138156, -- Legplates
                        138157, -- Pauldrons
                        138158, -- Warboots
                        138159, -- Vambraces
                        },
                },
        },

}


for k,v in pairs(TokensEnsembleTokens) do

         v["note"] = "unlocks:"
         TokenSplainerTokens[k] = v

end