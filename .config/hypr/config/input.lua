hl.config({
	input = {
		kb_layout = "pt",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 0,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
		force_no_accel = true, -- If true, overrides per-device accel settings and forces no acceleration on all devices.
		touchpad = {
			natural_scroll = false,
		},
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})
