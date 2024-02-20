-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- colors, metadata = wezterm.color.load_scheme("wezterm/colors/flexoki.toml ")
-- print(metadata)
-- print(colors)

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.colors = colors
config.color_scheme = "tokyonight_night"
-- Font
config.font = wezterm.font_with_fallback {
  "JetBrainsMono Nerd Font",
  "Apple Color Emoji"
}
-- config.font = font.font
-- config.font_size = font.size
config.font_size = 14

-- Window
config.enable_tab_bar = false

config.window_background_opacity = 0.96

-- Hide the window decoration
config.window_decorations = "RESIZE"


-- and finally, return the configuration to wezterm
return config
