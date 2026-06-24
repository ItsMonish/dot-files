-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
---
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Nvidia Stuff
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- XDG Backend Stuff
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- QT Stuff
hl.env("QT_QPA_PLATFORMTHEME","qt6ct")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR",1)
hl.env("QT_QPA_PLATFORM","wayland;xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
