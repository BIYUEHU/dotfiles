local Config = require('config')
-- local wezterm = require("wezterm")
-- local config = wezterm.config_builder()

-- config.animation_fps = 60
-- config.max_fps = 120
-- config.front_end = "WebGpu"
-- config.font = wezterm.font("Fira Code", { weight = "Thin", italic = false })
-- config.font_size = 13
-- config.webgpu_power_preference = "HighPerformance"
-- config.webgpu_preferred_adapter = wezterm.gui.enumerate_gpus()[1]
-- config.color_scheme = "flexoki"
-- config.hide_tab_bar_if_only_one_tab = false
-- config.enable_scroll_bar = false
-- -- config.enable_tab_bar = false
-- config.use_fancy_tab_bar = true
-- config.tab_max_width = 25
-- config.show_tab_index_in_tab_bar = false
-- config.switch_to_last_active_tab_when_closing_tab = true
-- config.background = {
-- 	{
-- 		source = { Color = "#282c34" },
-- 		height = "100%",
-- 		width = "100%",
-- 		opacity = 0.95,
-- 	},
-- }
-- config.initial_cols = 140
-- config.initial_rows = 40
-- config.line_height = 1.06
-- config.window_padding = { left = 10, right = 10, top = 10, bottom = 7 }
-- -- config.window_close_confirmation = "NeverPrompt"
-- config.inactive_pane_hsb = { saturation = 0.9, brightness = 0.65 }
-- config.window_decorations = "NONE"
-- config.default_cursor_style = "BlinkingBar"

-- return config

return Config:init()
    :append(require('config.ui'))
   --[[  :append(require('config.keys')) ]].options