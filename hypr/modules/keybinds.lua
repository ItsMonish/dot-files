---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER"
local programs = require("modules.programs")

hl.bind(mainMod .. " + T",  hl.dsp.exec_cmd(programs.terminal))
hl.bind("CTRL + ALT + H",   hl.dsp.exec_cmd(programs.fileManager))
hl.bind(mainMod .. " + R",  hl.dsp.exec_cmd(programs.menu))
hl.bind("CTRL + ALT + L",   hl.dsp.exec_cmd(programs.lock))
hl.bind(mainMod .. " + B",  hl.dsp.exec_cmd(programs.browser))
hl.bind("Print",            hl.dsp.exec_cmd("flameshot gui"))
hl.bind("SHIFT + Print",    hl.dsp.exec_cmd("flameshot screen"))
hl.bind(mainMod .. " + V",  hl.dsp.exec_cmd("cliphist list | rofi -theme $HOME/.config/rofi/launchers/type-4/style-3.rasi -dmenu -display-columns 2 | cliphist decode | wl-copy"))

local hytopToggleFlag = true
hl.bind(mainMod .. " + N", function ()
    if hytopToggleFlag then
        hl.plugin.hytop.show()
        hytopToggleFlag = false
    else
        hl.plugin.hytop.hide()
        hytopToggleFlag = true
    end
end)


hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t"))

hl.bind(mainMod .. " + O",  function ()
    hl.plugin.hyprexpo.expo("toggle")
end)

hl.bind(mainMod .. " + G", hl.dsp.group.toggle())
hl.bind("ALT + TAB",       hl.dsp.group.next())

hl.bind(mainMod .. " + C", hl.dsp.window.close())

-- hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))


hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))

for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + mouse:272",  hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("amixer set Master 5%+"),         { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("amixer set Master 5%-"),         { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("pactl set-sink-mute 0 toggle"),  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl set 5%+"),         { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl set 5%-"),         { locked = true, repeating = true })

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })


