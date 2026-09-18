local d = require("default")

-- ██╗  ██╗███████╗██╗   ██╗██████╗ ██╗███╗   ██╗██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
-- ██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
-- █████╔╝ █████╗   ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ██║██║██╔██╗ ██║██║  ███╗███████╗
-- ██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██║██║╚██╗██║██║  ██║██║██║╚██╗██║██║   ██║╚════██║
-- ██║  ██╗███████╗   ██║   ██████╔╝██║██║ ╚████║██████╔╝██║██║ ╚████║╚██████╔╝███████║
-- ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝


-- App

hl.bind(d.mainMod .. " + T", hl.dsp.exec_cmd(d.terminal))
hl.bind(d.mainMod .. " + U", hl.dsp.exec_cmd(d.file .. " ~/Documents/bac"))
hl.bind(d.mainMod .. " + F", hl.dsp.exec_cmd(d.browser .. " --profile-directory=\"Default\""))
hl.bind(d.mainMod .. " + E", hl.dsp.exec_cmd(d.file))
hl.bind(d.mainMod .. " + O", hl.dsp.exec_cmd(d.obsi))
hl.bind(d.mainMod .. " + R", hl.dsp.exec_cmd(d.localsend))
hl.bind("CTRL + SHIFT + ESCAPE", hl.dsp.exec_cmd(d.terminal .. " " .. d.htop))

-- Rofi - d.script

hl.bind(d.mainMod .. " + A", hl.dsp.exec_cmd(
    d.script .. "/rofi_braveProfile.sh"
))
hl.bind("ALT + SPACE", hl.dsp.exec_cmd("pkill rofi || rofi -show drun -theme-str 'listview { columns: 2; }'"))
hl.bind("ALT + BackSpace", hl.dsp.exec_cmd(
  "pkill rofi || " .. d.script .. "/rofi_powermenu.sh \"" ..
  os.getenv("HOME") .. "/Music/effect/Windows xp shutting down.mp3\""
))
hl.bind(d.mainMod .. " + SHIFT + C", hl.dsp.exec_cmd(
  "pkill rofi || " .. d.script .. "/rofi_walthe.sh burj"
))
hl.bind(d.mainMod .. " + SHIFT + O", hl.dsp.exec_cmd(
  "pkill rofi || " .. d.script .. "/rofi_cursus.sh"
))
hl.bind("ALT + F2", hl.dsp.exec_cmd(
  "pkill rofi || " .. d.script .. "/rofi_screenshot.sh"
))
hl.bind("ALT + F1", hl.dsp.exec_cmd(
  d.script .. "/rofi_screenshot.sh ns"
))
hl.bind(d.mainMod .. " + F1", hl.dsp.exec_cmd(
  "wl-paste | feh -"
))
hl.bind("ALT + F3", hl.dsp.exec_cmd(
  d.script .. "/ocrmath.sh \"PythonFile/Programme/OCRMath/main_p2t.py\""
))
hl.bind(d.mainMod .. " + SHIFT + W", hl.dsp.exec_cmd(
  "pkill waybar || waybar"
))
hl.bind("MOD5 + SPACE", hl.dsp.exec_cmd(
  "pkill rofi || " .. d.script .. "/rofi_other.sh"
))


-- Window action

hl.bind("ALT + F4", hl.dsp.exec_cmd(
  d.script .. "/kill_tray.sh"
))
hl.bind(d.mainMod .. " + W", hl.dsp.exec_cmd(
  d.script .. "/kill_tray.sh"
))

hl.bind("ALT + Return", hl.dsp.window.fullscreen())
hl.bind("ALT + Escape", hl.dsp.window.fullscreen())
hl.bind(d.mainMod .. " + D", hl.dsp.window.float({ action = "toggle" }))
hl.bind(d.mainMod .. " + F", hl.dsp.layout("togglesplit"))    -- dwindle only


-- Audio

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind(d.mainMod .. " + PRINT",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })

-- Brightness

hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Media

hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })

--hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl position -5"), { locked = true, long_press = true })
--hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl position +5"), { locked = true, long_press = true })

-- Move focus 

hl.bind(d.mainMod .. " + H", hl.dsp.focus({ direction = "left"}))
hl.bind(d.mainMod .. " + L", hl.dsp.focus({ direction = "right"}))
hl.bind(d.mainMod .. " + K", hl.dsp.focus({ direction = "up"}))
hl.bind(d.mainMod .. " + J", hl.dsp.focus({ direction = "down"}))


-- Move window

hl.bind("CTRL + ALT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind("CTRL + ALT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind("CTRL + ALT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind("CTRL + ALT + J", hl.dsp.window.move({ direction = "down" }))

hl.bind(d.mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true }) -- move with the mouse

-- Switch workspace

hl.bind(d.mainMod .. " + CTRL + L", hl.dsp.focus({ workspace = "r+1"}))
hl.bind(d.mainMod .. " + CTRL + H", hl.dsp.focus({ workspace = "r-1"}))


-- Move focus windows to a workspace

hl.bind(d.mainMod .. " + CTRL + ALT + L", hl.dsp.window.move({ workspace = "r+1" }))
hl.bind(d.mainMod .. " + CTRL + ALT + H", hl.dsp.window.move({ workspace = "r-1" }))


-- Move focus windows to a workspace silently

hl.bind(d.mainMod .. " + ALT + L", hl.dsp.window.move({ workspace = "r+1" .. " silent" }))
hl.bind(d.mainMod .. " + ALT + H", hl.dsp.window.move({ workspace = "r-1" .. " silent" }))


-- Special workspace

hl.bind(d.mainMod .. " + S",         hl.dsp.workspace.toggle_special("m"))
hl.bind(d.mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:m" }))


-- Switch workspaces with d.mainMod + [0-9]
-- Move active window to a workspace with d.mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(d.mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(d.mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end


-- Resize windows

hl.bind(d.mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

local resize_pixel = 20

hl.bind(d.mainMod .. " + SHIFT + H", hl.dsp.window.resize({ x = -resize_pixel, y = 0, relative = true }))
hl.bind(d.mainMod .. " + SHIFT + L", hl.dsp.window.resize({ x = resize_pixel, y = 0, relative = true }))
hl.bind(d.mainMod .. " + SHIFT + K", hl.dsp.window.resize({ x = 0, y = -resize_pixel, relative = true }))
hl.bind(d.mainMod .. " + SHIFT + J", hl.dsp.window.resize({ x = 0, y = resize_pixel, relative = true }))


-- Swap workspace between two monitor

hl.bind(d.mainMod .. " + M", hl.dsp.workspace.swap_monitors({ monitor1 = "DP-1", monitor2 = "DP-2" }))


-- Other

hl.bind(d.mainMod .. " + Space", hl.dsp.exec_cmd(d.script .. "/switch_layout.sh"))


