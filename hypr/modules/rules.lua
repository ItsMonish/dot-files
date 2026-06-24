--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- local suppressMaximizeRule = hl.window_rule({
--     -- Ignore maximize requests from all apps. You'll probably like this.
--     name  = "suppress-maximize-events",
--     match = { class = ".*" },
--
--     suppress_event = "maximize",
-- })
-- suppressMaximizeRule:set_enabled(false)

-- Fix some dragging issues with XWayland
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name = "terminal-blur",
    match = {
        class = "com.mitchellh.ghostty",
    },
    opacity = "0.9 override"
})

hl.window_rule({
    name = "pavucontrol-float",
    match = {
        class = "org.pulseaudio.pavucontrol"
    },
    float = true
})

hl.window_rule({
    name = "flameshot-rule",
    match = {
        class = "^(flameshot)$"
    },
    animation = "fade",
    rounding = 0,
    border_size = 0,
    fullscreen_state = "0 0",
    float = true,
    pin = true,
    move = {0, 0},
    size = {"monitor_w*2", "monitor_h"}
})

hl.window_rule({ name = "thunar-rename", match = { title = "(Rename.*)$" }, float = true })
hl.window_rule({ name = "thunar-fileop-prog", match = { title = "^(File Operation Progress)$" }, float = true})
hl.window_rule({ name = "thunar-prop", match = { title = "^(Properties)$" }, float = true })
hl.window_rule({ name = "thunar-replace", match = { title = "^(Confirm Replace)$" }, float = true })

hl.layer_rule({ match = { namespace = "swaync-control-center" }, blur  = true, ignore_alpha = 0, animation = "slide right"})
hl.layer_rule({ match = { namespace = "swaync-notification-window" }, blur  = true, ignore_alpha = 0, animation = "slide right"})

hl.layer_rule({ match = { namespace = "rofi" }, dim_around = true, animation = "slide up"})
