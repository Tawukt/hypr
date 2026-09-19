
local d = require("default")

-- ██╗      █████╗ ██╗   ██╗███╗   ██╗ ██████╗██╗  ██╗
-- ██║     ██╔══██╗██║   ██║████╗  ██║██╔════╝██║  ██║
-- ██║     ███████║██║   ██║██╔██╗ ██║██║     ███████║
-- ██║     ██╔══██║██║   ██║██║╚██╗██║██║     ██╔══██║
-- ███████╗██║  ██║╚██████╔╝██║ ╚████║╚██████╗██║  ██║
-- ╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝╚═╝  ╚═╝



hl.on("hyprland.start", function()
    hl.exec_cmd("paplay \"$HOME/Music/effect/Windows xp startup.mp3\"")
    hl.exec_cmd("waybar 1>/tmp/waybar.log")
    hl.exec_cmd("wal -R")
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd(d.awww_launch)
    hl.exec_cmd("steam -silent")
    hl.exec_cmd("xrdb ~/.config/X11/XresourcesE")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("kdeconnectd")
    hl.exec_cmd("kdeconnect-indicator")
    hl.exec_cmd("xremap \"$HOME/.config/xremap/config.yml\"")
    hl.exec_cmd(d.obsi, { workspace = "9 silent" })
    hl.exec_cmd("keepassxc", { workspace = "special:m silent" })
end)


-- ███████╗███╗   ██╗██╗   ██╗
-- ██╔════╝████╗  ██║██║   ██║
-- █████╗  ██╔██╗ ██║██║   ██║
-- ██╔══╝  ██║╚██╗██║╚██╗ ██╔╝
-- ███████╗██║ ╚████║ ╚████╔╝ 
-- ╚══════╝╚═╝  ╚═══╝  ╚═══╝  


hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")


--  ██████╗ ████████╗██╗  ██╗███████╗██████╗ 
-- ██╔═══██╗╚══██╔══╝██║  ██║██╔════╝██╔══██╗
-- ██║   ██║   ██║   ███████║█████╗  ██████╔╝
-- ██║   ██║   ██║   ██╔══██║██╔══╝  ██╔══██╗
-- ╚██████╔╝   ██║   ██║  ██║███████╗██║  ██║
--  ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝

hl.config({
    misc = {
        force_default_wallpaper = true, -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo = true, -- If true disables the random hyprland logo / anime girl background.
        disable_splash_rendering = true,
        vrr = 0, --variable refresh rate
        middle_click_paste = false,
    },

    debug = {
        vfr = false,  -- Variable frame rate
    },

    ecosystem = {
        --enforce_permissions = true 
        no_update_news = false,
        no_donation_nag = true,
    },


    cursor = {
        inactive_timeout = 1, --in second float
        warp_on_change_workspace = true, --Move the cursor to the last focused window after changing the workspace
        default_monitor = "DP-1", 
    },
})


require("colors-hyprland")
require("monitors")
require("nvidia")
require("keybindings")
require("look")
require("animations")
require("input")
require("rules")

