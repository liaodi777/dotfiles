-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'iceberg-dark'
config.window_background_opacity = 0.8

config.default_cursor_style = 'SteadyBar'

-- フォントの設定
config.font = wezterm.font("HackGen Console NF", {weight="Regular", stretch="Normal", style="Normal"})

-- フォントサイズの設定
config.font_size = 16

-- and finally, return the configuration to wezterm
return config
