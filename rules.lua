-- ██████╗ ██╗   ██╗██╗     ███████╗███████╗
-- ██╔══██╗██║   ██║██║     ██╔════╝██╔════╝
-- ██████╔╝██║   ██║██║     █████╗  ███████╗
-- ██╔══██╗██║   ██║██║     ██╔══╝  ╚════██║
-- ██║  ██║╚██████╔╝███████╗███████╗███████║
-- ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝╚══════╝

-- Ignore maximize requests from apps. You'll probably like this.
hl.window_rule({
    name = "supress_event",
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
    name = "xwayland",
    match = {
        focus = true,
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
})

hl.window_rule({
    name = "youtube",
    match = {
        title = "(?i).*youtube.*",
    },
    opacity = "1.0 override 1.0 override 1.0 override",
})

hl.window_rule({
    name = "obsidian-on-ws9",
    match = {
        title = "(?i).*obsidian.*",
    },
    workspace = "9 silent",
})

if os.getenv("HOST") == "burj" then
    hl.workspace_rule({ workspace = 1, monitor = "DP-1", default = true })
    hl.workspace_rule({ workspace = 6, monitor = "DP-3", default = true })
    hl.workspace_rule({ workspace = 10, monitor = "DP-3"})

    for i = 2, 5 do
        hl.workspace_rule({ workspace = i, monitor = "DP-1" })
    end
    for i = 7, 10 do
        hl.workspace_rule({ workspace = i, monitor = "DP-3" })
    end
end

