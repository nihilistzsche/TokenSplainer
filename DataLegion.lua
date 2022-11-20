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

local TokensLegion = {

}

for k,v in pairs(TokensLegion) do TokenSplainerTokens[k] = v end
