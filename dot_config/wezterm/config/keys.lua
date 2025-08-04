-- path:.config/wezterm/config/keys.lua
local wezterm = require("wezterm")
local act = wezterm.action

local function is_found(str, pattern)
	return string.find(str, pattern) ~= nil
end

local platform = {
	is_win = is_found(wezterm.target_triple, 'windows'),
	is_linux = is_found(wezterm.target_triple, 'linux'),
	is_mac = is_found(wezterm.target_triple, 'apple'),
}

local mod = {}

if platform.is_mac then
	mod.SUPER = "SUPER"
	mod.SUPER_REV = "SUPER|CTRL"
elseif platform.is_win or platform.is_linux then
	mod.SUPER = "ALT" -- to not conflict with Windows key shortcuts
	mod.SUPER_REV = "ALT|CTRL"
end

local keys = {} -- 未配置

return {
	disable_default_key_bindings = false,
	leader = { key = "Space", mods = mod.SUPER_REV },
	keys = keys,
}