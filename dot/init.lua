-- ==========================================
-- Welcome to Dot Configuration !
-- ==========================================

local plugin_manager = require("dot.core.plugin_manager")

-- 1. Custom Keymaps
dot.keymap.set("n", "<C-s>", function()
	dot.sys.save()
	dot.log.success("File saved !")
end)

dot.keymap.set("n", "dd", function()
	local cursor = dot.ui.cursor.get()
	local row = cursor[1]
	dot.buf.active():set_lines(row, row, {})
end)

dot.keymap.set("n", "gg", function()
	dot.ui.cursor.set(1, 1)
end)

dot.keymap.set("n", "G", function()
	local last_row = #dot.buf.active():lines()
	dot.ui.cursor.set(last_row, 1)
end)

-- 2. Built-in Plugins
plugin_manager.setup({
	command_palette = true,
	cmd_completion = false,
	cmd_history = false,
	dashboard = true,
	lang = true,
	lsp = true,
	messages = true,
	core_cmd = true,
	treesitter = true,
})

dot.log.info("Dot is ready.")
