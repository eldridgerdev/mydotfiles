-- NOTE: This won't do anything from WSL $HOME
--  To Use: copy/paste to windows home location
-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()
local currentTheme = "dark"
local darkBackground = {
	brightness = 0.05,
	hue = 0.1,
	saturation = 0.3,
}
local lightBackground = {
	brightness = 4,
	hue = 5,
	saturation = 0.5,
}
local darkColor = "Gruvbox dark, soft (base16)"
local lightColor = "Gruvbox light, soft (base16)"
local darkImage = "C:\\Users\\eldri\\backgrounds\\op2.png"
local lightImage = nil

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = darkColor
--- config.font = wezterm.font 'Fira Code Nerd Font'
config.default_domain = "WSL:Ubuntu"

-- config.window_background_image = "C:\\Users\\eldri\\xwtbackground.jpeg"
config.window_background_image = darkImage
config.window_background_image_hsb = darkBackground

wezterm.on("toggle-theme", function(window, pane)
	local overrides = window:get_config_overrides() or {}
	if currentTheme == "dark" then
		overrides.color_scheme = "Gruvbox light, soft (base16)"
		overrides.background_image = lightImage
		overrides.background_image_hsb = lightBackground
		currentTheme = "light"
	else
		overrids.color_scheme = "Gruvbox dark, soft (base16)"
		overrides.background_image = darkImage
		overrides.background_image_hsb = darkBackground
		currentTheme = "dark"
	end
	window:set_config_overrides(overrides)
end)
-- Background

-- and finally, return the configuration to wezterm
return config
