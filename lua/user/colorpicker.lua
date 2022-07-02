local status_ok, colorpicker = pcall(require, "color-picker")
if not status_ok then
  print("failed to load: color-picker")
	return
end

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)

require("color-picker").setup({ -- for changing icons & mappings
	-- ["icons"] = { "ﱢ", "" },
	-- ["icons"] = { "ﮊ", "" },
	-- ["icons"] = { "", "ﰕ" },
	-- ["icons"] = { "", "" },
	-- ["icons"] = { "", "" },
	["icons"] = { "ﱢ", "" },
	["keymap"] = { -- mapping example:
		["Left"] = "<Plug>Slider5Decrease",
		["Right"] = "<Plug>Slider5Increase",
	},
})

-- #000000
vim.cmd([[hi FloatBorder guibg=NONE]])
