-- Hyprexpo plugin rules and binds
hl.config({
    plugin = {
        hyprexpo = {
            columns = 3,
            gaps_in = 5,
            gaps_out = 0,
            bg_col = "rgb(111111)",
            workspace_method = "center current",
            gesture_distance = 300,
            cancel_key = "escape",
            show_cursor = 1,
        },
    },
})

hl.define_submap("hyprexpo", function()
    hl.bind("h",          function() hl.plugin.hyprexpo.kb_focus("left") end)
    hl.bind("l",          function() hl.plugin.hyprexpo.kb_focus("right") end)
    hl.bind("k",          function() hl.plugin.hyprexpo.kb_focus("up") end)
    hl.bind("j",          function() hl.plugin.hyprexpo.kb_focus("down") end)
    hl.bind("return",     function() hl.plugin.hyprexpo.kb_confirm() end)
    hl.bind("escape",     function() hl.plugin.hyprexpo.expo("cancel") end)
    hl.bind("SUPER + O",  function() hl.plugin.hyprexpo.expo("cancel") end)
end)
