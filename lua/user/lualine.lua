local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

local hide_in_width = function()
	return vim.fn.winwidth(0) > 80
end

local diagnostics = {
	"diagnostics",
	--sources = { "nvim_diagnostic" },
	sections = { "error", "warn", "hint", "info" },
	symbols = { error = " ", warn = " ", hint = " ", info = " " },
	colored = true,
	update_in_insert = true,
	always_visible = true,
}

local diff = {
	"diff",
	colored = true,
	symbols = { added = " ", modified = "ﰣ ", removed = " " }, -- changes diff symbols
  cond = hide_in_width
}

local mode = {
	"mode",
	fmt = function(str)
    if str == 'NORMAL' then
      return " " .. str
    end
    if str == 'INSERT' then
      return "פֿ " .. str
    end
    if str == 'REPLACE' then
      return " " .. str
    end
    if str == 'V-LINE' then
      return " " .. str
    end
    if str == 'VISUAL' then
      return " " .. str
    end
    if str == 'COMMAND' then
      return " " .. str
    end
	end,
}

local filetype = {
	"filetype",
	icons_enabled = true,
	icon = nil,
}

local branch = {
	"branch",
	icons_enabled = true,
  icon = " "
}

local location = {
	"location",
	padding = 0,
}

-- cool function for progress
local progress = function()
	local current_line = vim.fn.line(".")
	local total_lines = vim.fn.line("$")
	local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
	local line_ratio = current_line / total_lines
	local index = math.ceil(line_ratio * #chars)
	return chars[index]
end

local spaces = function()
	return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

local filename = {
  'filename',
  file_status = false,
  path = 1,
}

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {'dashboard', 'NvimTree', 'Outline', 'alpha'},
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {mode},
    lualine_b = {branch, diff},
    lualine_c = {},
    lualine_x = {filetype},
    lualine_y = {progress},
    lualine_z = {location},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {
    lualine_a = {'buffers'},
    lualine_x = {diagnostics},
    lualine_y = {filename},
    lualine_z = {'fileformat'}
  },
  extensions = {}
}
