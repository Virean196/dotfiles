-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
	hl.dispatch(hl.dsp.exec_cmd("systemctl --user start hyprpolkitagent"))
	hl.exec_cmd("hyprpaper & hyprsunset")
	hl.exec_cmd("bash -c 'while ! wpctl status &>/dev/null; do sleep 0.2; done; waybar'")
	-- hl.exec_cmd("waybar -l debug &> /tmp/waybar.log")
	hl.dispatch(hl.dsp.exec_cmd("wl-paste --watch cliphist store"))
	hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
end)
