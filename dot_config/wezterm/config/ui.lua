-- path:.config/wezterm/config/ui.lua
local wezterm = require("wezterm")
local colors = {
	foreground = "#CECDC3",
	background = "#212020",
	cursor_bg = "#CECDC3",
	cursor_border = "#CECDC3",
	cursor_fg = "#212020",
	selection_bg = "#282726",
	selection_fg = "#CECDC3",
	ansi = {
			"#212020",
			"#AF3029",
			"#66800B",
			"#AD8301",
			"#205EA6",
			"#5E409D",
			"#24837B",
			"#CECDC3",
	},
	brights = {
			"#575653",
			"#D14D41",
			"#879A39",
			"#D0A215",
			"#4385BE",
			"#8B7EC8",
			"#3AA99F",
			"#FFFCF0",
	}
}
local fonts = { "FiraCode Nerd Font", "Fira Code", "Source Code Pro", "JetBrains Mono NL" }

return {
  default_prog = { 'powershell.exe', '-NoLogo' },
	animation_fps = 60,
	max_fps = 120,
	-- front_end = "WebGpu",
	font = wezterm.font(fonts[4], { weight = "Thin", italic = false }), -- 字体
	font_size = 13,
	webgpu_power_preference = "HighPerformance",
	webgpu_preferred_adapter = wezterm.gui.enumerate_gpus()[1],
	colors = colors, -- 主题配色
	hide_tab_bar_if_only_one_tab = false,
	-- scrollbar
	enable_scroll_bar = false, -- 是否显示滚动条
	-- tab bar
	enable_tab_bar = false, -- 是否显示标签
	use_fancy_tab_bar = true,
	tab_max_width = 25,
	show_tab_index_in_tab_bar = false, -- 是否显示tab标签数
	switch_to_last_active_tab_when_closing_tab = true,
	window_background_opacity = 0.6,
	-- win32_system_backdrop = "Acrylic",

	-- window
	initial_cols = 140, -- 默认打开宽高
	initial_rows = 40,
	line_height = 1.06, -- 默认上下间距
	window_padding = { -- 四周padding，为0消除边框间距
		left = 10,
		right = 10,
		top = 10,
		bottom = 7,
	},
	window_close_confirmation = "NeverPrompt",
	inactive_pane_hsb = {
		saturation = 0.9,
		brightness = 0.65,
	},
	exit_behavior = "Hold",
	-- window_decorations = "NONE",
	default_cursor_style = "BlinkingBar", -- 改变光标形状
}