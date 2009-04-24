assert(RaidCooldowns, "RaidCooldowns not found!")

--[[
	["Localized Spell Name"] = {
		id = 12345, -- Spell ID
		cd = 123,   -- Spell's cooldown, in seconds
		ora = x,    -- Spell's oRA sync id; if set, RaidCooldowns will not display 
	}               -- this cooldown unless it was synced from another RCD user.
	
	FIXME: Most of this data is probably flat-out wrong.
]]

local hero = (UnitFactionGroup("player") == "Alliance") and 32182 or 2825
local cooldowns = {
	["DEATHKNIGHT"] = {
	},
	["DRUID"] = {
		[GetSpellInfo(5209)]  = { id = 5209,  cd = 180 },           -- Challenging Roar
		[GetSpellInfo(29166)] = { id = 29166, cd = 360 },           -- Innervate
		[GetSpellInfo(17116)] = { id = 17116, cd = 180 },           -- Nature's Swiftness
		[GetSpellInfo(48477)] = { id = 48477, cd = 1200, ora = 1 }, -- Rebirth
	},
	["HUNTER"] = {
		[GetSpellInfo(5384)]  = { id = 5384,  cd = 30 },            -- Feign Death
		[GetSpellInfo(34477)] = { id = 34477, cd = 30 },            -- Misdirection
	},
	["MAGE"] = {
		-- [GetSpellInfo(2139)]  = { id = 2139,  cd = 24 },            -- Counterspell
		-- [GetSpellInfo(45438)] = { id = 45438, cd = 300 },           -- Ice Block
	},
	["PALADIN"] = {
		-- [GetSpellInfo(642)]   = { id = 642,   cd = 300 },           -- Divine Shield (Rank 2)
		-- [GetSpellInfo(10278)] = { id = 10278, cd = 300,  ora = 9 }, -- Blessing of Protection (Rank 3) [requires talent info]
		-- [GetSpellInfo(19752)] = { id = 19752, cd = 3600, ora = 4 }, -- Divine Intervention
	},
	["PRIEST"] = {
		[GetSpellInfo(6346)]  = { id = 6346,  cd = 180 },           -- Fear Ward
		[GetSpellInfo(47788)] = { id = 47788, cd = 180 },           -- Guardian Spirit
		[GetSpellInfo(33206)] = { id = 33206, cd = 180 },           -- Pain Suppression
	},
	["ROGUE"] = {
		[GetSpellInfo(31224)] = { id = 31224, cd = 90 },            -- Cloak of Shadows
		[GetSpellInfo(1725)]  = { id = 1725,  cd = 30 },            -- Distract
		[GetSpellInfo(1766)]  = { id = 1766,  cd = 10 },            -- Kick
	},
	["SHAMAN"] = {
		-- [GetSpellInfo(hero)]  = { id = hero,  cd = 600 },           -- Bloodlust/Heroism
		-- [GetSpellInfo(16188)] = { id = 16188, cd = 180 },           -- Nature's Swiftness
		-- [GetSpellInfo(20608)] = { id = 20608, cd = 3600, ora = 2 }, -- Reincarnation
		-- [GetSpellInfo(2894)]  = { id = 2894,  cd = 1200 },          -- Fire Elemental Totem
		-- [GetSpellInfo(2062)]  = { id = 2062,  cd = 1200 },          -- Earth Elemental Totem
		-- [GetSpellInfo(16190)] = { id = 16190, cd = 300 },           -- Mana Tide Totem
	},
	["WARLOCK"] = {
		[GetSpellInfo(47883)] = { id = 47883, cd = 1800, ora = 3 }, -- Soulstone Resurrection
		[GetSpellInfo(29858)] = { id = 29858, cd = 300 },           -- Soulshatter
	},
	["WARRIOR"] = {
		-- [GetSpellInfo(871)]   = { id = 871,   cd = 1800 },          -- Shield Wall
		-- [GetSpellInfo(12975)] = { id = 12975, cd = 480 },           -- Last Stand
		-- [GetSpellInfo(6554)]  = { id = 6554,  cd = 10 },            -- Pummel
		-- [GetSpellInfo(1161)]  = { id = 1161,  cd = 600 },           -- Challenging Shout
	},
}

RaidCooldowns.cooldowns = cooldowns