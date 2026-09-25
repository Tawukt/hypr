-- ███╗   ███╗ ██████╗ ███╗   ██╗██╗████████╗ ██████╗ ██████╗ 
-- ████╗ ████║██╔═══██╗████╗  ██║██║╚══██╔══╝██╔═══██╗██╔══██╗
-- ██╔████╔██║██║   ██║██╔██╗ ██║██║   ██║   ██║   ██║██████╔╝
-- ██║╚██╔╝██║██║   ██║██║╚██╗██║██║   ██║   ██║   ██║██╔══██╗
-- ██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██║   ██║   ╚██████╔╝██║  ██║
-- ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝

hl.monitor({ output = "", mode = "preferred", position = "auto", scale = auto })
hl.monitor({ output = "DP-1", mode = "1920x1080@144", position = "0x0", scale = 1 })
hl.monitor({ output = "DP-3", mode = "1920x1080@144", position = "0x-1080", scale = 1 })
hl.monitor({ output = "LVDS-1", mode = "highres", position = "auto", scale = 1.2 })

-- unscale XWayland
hostname = io.popen("hostname")
if hostname == "swangim" then
    hl.config({
        xwayland = {
            force_zero_scaling = true
        }
    })

    -- toolkit-specific scale
    hl.env("GDK_SCALE", "2")
    hl.env("XCURSOR_SIZE", "32")
end

