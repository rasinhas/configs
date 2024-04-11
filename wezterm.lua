local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action
local config = {}

-- font config
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 12

-- window and color config
config.window_background_opacity = .85
config.color_scheme = "Homebrew (Gogh)" 
config.colors = {
-- Abernathy theme colors--  
  ansi = { "#000000","#cd0000","#00cd00","#cdcd00","#1093f5","#cd00cd","#00cdcd","#faebd7" },
  brights = { "#000000","#cd0000","#00cd00","#cdcd00","#1093f5","#cd00cd","#00cdcd","#faebd7" }
}
config.enable_scroll_bar = true

-- keybindings
config.keys = {
  { key = 'LeftArrow', mods = 'CTRL|SHIFT', action = act.MoveTabRelative(-1) },
  { key = 'RightArrow', mods = 'CTRL|SHIFT', action = act.MoveTabRelative(1) },
  { key = 'LeftArrow', mods = 'CTRL', action = act.ActivateTabRelative(-1) },
  { key = 'RightArrow', mods = 'CTRL', action = act.ActivateTabRelative(1) },
  { key = 't', mods = 'CTRL', action = act.SpawnTab 'CurrentPaneDomain' },
  { key = 'k', mods = 'CTRL', action = act.Multiple { act.SendString 'clear', act.SendKey { key = 'Enter' } } },
  { key = 'LeftArrow', mods = 'ALT', action = act.ActivatePaneDirection("Left") },
  { key = 'RightArrow', mods = 'ALT', action = act.ActivatePaneDirection("Right") },
  { key = 'UpArrow', mods = 'ALT', action = act.ActivatePaneDirection("Up") },
  { key = 'DownArrow', mods = 'ALT', action = act.ActivatePaneDirection("Down") },
  { key = 'v', mods = 'ALT', action = act.SplitVertical {domain="CurrentPaneDomain"} },
  { key = 'h', mods = 'ALT', action = act.SplitHorizontal {domain="CurrentPaneDomain"} },
}
 
return config
