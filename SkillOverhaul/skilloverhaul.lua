if not _G.SkillOverhaul then
	_G.SkillOverhaul = {}
    SkillOverhaul.Announce = true --You were going to edit this out anyway, may as well give you the option.
	SkillOverhaul.ModPath = ModPath
    SkillOverhaul.MenuData = {}
	SkillOverhaul.Hooks = {
        ["lib/managers/menumanager"] = "menu/menu.lua",
		["lib/tweak_data/skilltreetweakdata"] = "lua/skilltreetweakdata.lua",
		["lib/tweak_data/upgradestweakdata"] = "lua/upgradestweakdata.lua",
		["lib/tweak_data/equipmentstweakdata"] = "lua/equipmentstweakdata.lua",
		["lib/tweak_data/interactiontweakdata"] = "lua/interactiontweakdata.lua",
        ["lib/units/beings/player/states/playerstandard"] = "lua/units/playerstandard.lua",
		["lib/units/beings/player/states/playerbleedout"] = "lua/playerbleedout.lua",
        ["lib/units/beings/player/playerdamage"] = "lua/units/playerdamage.lua",
		["lib/units/enemies/cop/copdamage"] = "lua/copdamage.lua",
		["lib/units/enemies/cop/copbrain"] = "lua/copbrain.lua",
		["lib/units/weapons/raycastweaponbase"] = "lua/raycastweaponbase.lua",
		["lib/managers/localizationmanager"] = "loc/loc.lua",
        ["lib/units/interactions/interactionext"] = "lua/interactionext.lua",
        ["lib/network/handlers/unitnetworkhandler"] = "lua/announcewarning.lua"
	}
end

if RequiredScript then
	local script = RequiredScript:lower()
	if SkillOverhaul.Hooks[script] then
		dofile(SkillOverhaul.ModPath .. SkillOverhaul.Hooks[script])
	end
end