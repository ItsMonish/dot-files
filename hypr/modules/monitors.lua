------------------
---- MONITORS ----
------------------

-- Default monitor
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@144",
    position = "0x0",
    scale    = "1",
})

-- When a secondary monitor for mirroring
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "1",
    mirror   = "eDP-1"
})
