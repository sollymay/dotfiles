-- Pull in the wezterm API
local wezterm = require("wezterm")
local mux = wezterm.mux

wezterm.on("gui-startup", function()
	local tab, pane, window = mux.spawn_window({})
	window:gui_window():maximize()
end)

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.enable_wayland = false
config.front_end = "OpenGL"
-- For example, changing the color scheme:
config.color_scheme = "Dracula (Official)"
config.font = wezterm.font("VictorMono Nerd Font Mono", { weight = "Medium" })
config.font_size = 14
config.freetype_load_flags = "NO_HINTING"
config.line_height = 1.5
config.enable_tab_bar = false
config.enable_scroll_bar = false

config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 0,
}

-- and finally, return the configuration to wezterm
return config
