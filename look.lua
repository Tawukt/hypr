local col = require("colors-hyprland")

-- ██╗      ██████╗  ██████╗ ██╗  ██╗
-- ██║     ██╔═══██╗██╔═══██╗██║ ██╔╝
-- ██║     ██║   ██║██║   ██║█████╔╝ 
-- ██║     ██║   ██║██║   ██║██╔═██╗ 
-- ███████╗╚██████╔╝╚██████╔╝██║  ██╗
-- ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝

hl.config({
    general = {
        gaps_in = 3, -- gaps between windows
        gaps_out = 3, -- gaps between windows and monitor

        border_size = 3,

        col = {
            inactive_border = col.color0,
            active_border = { colors = {col.color1, col.color7}, angle = 45 }, --it is called gradient
        },

        layout = dwindle, 

        resize_on_border = false,

        allow_tearing = false, --true c'est pour la synchronisation vertical voir hypWiki
    },

    decoration = {
        rounding = 8,
        rounding_power = 0.0,

        -- transparency (un)focused windows
        active_opacity = 1.00,
        inactive_opacity = 0.90,

        blur = {
            enabled = true,
            size = 4,
            passes = 2,

            ignore_opacity = true,
        },

        shadow = {
            enabled = true,
            range = 3,
            render_power = 2,
            color = "rgb(24283b)",
        }
    },
})
