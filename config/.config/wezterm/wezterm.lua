local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Catppuccin Mocha Theme
config.color_scheme = "Catppuccin Mocha"

-- Font Configuration
config.font = wezterm.font("JetBrains Mono", { weight = "Medium" })
config.font_size = 15.0
config.line_height = 1.2

-- Window Appearance
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.macos_window_background_blur = 10
config.window_padding = {
	left = 20,
	right = 20,
	top = 20,
	bottom = 10,
}

-- Tab Bar
config.enable_tab_bar = false
config.use_fancy_tab_bar = true

-- Cursor
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 500
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

-- Scrollback
config.scrollback_lines = 10000

-- Warp-like Keybindings
config.keys = {
	-- Split panes (like Warp)
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "D",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	{
		key = "k",
		mods = "CMD",
		action = wezterm.action.Multiple({
			wezterm.action.ClearScrollback("ScrollbackAndViewport"),
			wezterm.action.SendKey({ key = "L", mods = "CTRL" }),
		}),
	},

	-- Navigate panes
	{
		key = "[",
		mods = "CMD",
		action = wezterm.action.ActivatePaneDirection("Prev"),
	},
	{
		key = "]",
		mods = "CMD",
		action = wezterm.action.ActivatePaneDirection("Next"),
	},

	-- hjkl navigation
	{
		key = "h",
		mods = "CMD|ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CMD|ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "CMD|ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "CMD|ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},

	-- Close pane
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},

	-- Resize panes with hjkl
	{
		key = "h",
		mods = "CMD|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "l",
		mods = "CMD|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
	},
	{
		key = "k",
		mods = "CMD|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "j",
		mods = "CMD|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
	},
}

-- Mouse bindings
config.mouse_bindings = {
	-- Click to select pane
	{
		event = { Down = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = wezterm.action.SelectTextAtMouseCursor("Cell"),
	},
}

return config
