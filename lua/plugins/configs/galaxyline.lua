local present, galaxyline = pcall(require, "galaxyline")
if not present then
	return
end

local present, condition = pcall(require, "galaxyline.condition")
if not condition then
	return
end

local present, gps = pcall(require, "nvim-gps")
if not present then
	return
end

local fn = vim.fn
local diag = vim.diagnostic
local highlight = vim.highlight

galaxyline.short_line_list = { "NvimTree", "term", "dashboard" }

local mode_symbol_to_mode = {
	n = "Normal",
	i = "Insert",
	c = "Command",
	v = "Visual",
	V = "Visual Line",
	[""] = "Visual Block",
	R = "Replace",
}

local function get_diag_count(severity_level)
	local count = 0
	local diag = vim.diagnostic.get(0, { severity = severity_level })
	for _ in pairs(diag) do
		count = count + 1
	end
	if count == nil then
		return 0
	else
		return count
	end
end

galaxyline.section.left = {
	{
		ViMode = {
			provider = function()
				local mode = mode_symbol_to_mode[fn.mode()]
				highlight.link("GalaxylineMode", "Galaxyline" .. mode:gsub(" ", "") .. "Mode", true)
				highlight.link("GalaxylineModeSeparator", "Galaxyline" .. mode:gsub(" ", "") .. "ModeSeparator", true)
				return "  " .. mode .. " "
			end,
			highlight = "GalaxylineMode",
			separator = "",
			separator_highlight = "GalaxylineModeSeparator",
		},
	},
	{
		GitIcon = {
			provider = function()
				return "  "
			end,
			condition = condition.check_git_workspace,
			highlight = "DiffChange",
		},
	},
	{
		GitBranch = {
			provider = "GitBranch",
			condition = condition.check_git_workspace,
		},
	},
	{
		Space = {
			provider = function()
				return " "
			end,
			condition = condition.check_git_workspace,
		},
	},
	{
		DiffAdd = {
			provider = "DiffAdd",
			condition = condition.check_git_workspace,
			icon = " +",
			highlight = "DiffAdd",
		},
	},
	{
		DiffModified = {
			provider = "DiffModified",
			condition = condition.check_git_workspace,
			icon = " ~",
			highlight = "DiffChange",
		},
	},
	{
		DiffRemove = {
			provider = "DiffRemove",
			condition = condition.check_git_workspace,
			icon = " -",
			highlight = "DiffDelete",
			separator = "",
		},
	},
	{
		Space = {
			provider = function()
				return " "
			end,
		},
	},
	{
		FileIcon = {
			provider = "FileIcon",
			condition = condition.buffer_not_empty,
			highlight = {
				require("galaxyline.providers.fileinfo").get_file_icon_color,
			},
		},
	},
	{
		FileName = {
			provider = "FileName",
			condition = condition.buffer_not_empty,
			separator = "",
		},
	},
	{
		Space = {
			provider = function()
				return " "
			end,
			condition = condition.check_git_workspace,
		},
	},
	-- {
	-- 	nvimGPS = {
	-- 		provider = function()
	-- 			return gps.get_location()
	-- 		end,
	-- 		condition = function()
	-- 			return gps.is_available()
	-- 		end,
	-- 	},
	-- },
}

galaxyline.section.right = {
	{
		GetLspClient = {
			provider = "GetLspClient",
			separator = " ",
		},
	},
	{
		Space = {
			provider = function()
				return " "
			end,
		},
	},
	{
		DiagnosticHint = {
			provider = function()
				return get_diag_count(diag.severity.HINT)
			end,
			highlight = "DiagnosticHint",
			icon = "  ",
		},
	},
	{
		DiagnosticWarn = {
			provider = function()
				return get_diag_count(diag.severity.WARN)
			end,
			highlight = "DiagnosticWarn",
			icon = "   ",
		},
	},
	{
		DiagnosticError = {
			provider = function()
				return get_diag_count(diag.severity.ERROR)
			end,
			highlight = "DiagnosticError",
			icon = "   ",
		},
	},
	{
		LineInfo = {
			provider = "LineColumn",
			separator = "  ",
		},
	},
	{
		PerCent = {
			provider = "LinePercent",
			highlight = "GalaxylineNormalMode",
			separator = "",
			separator_highlight = "GalaxylineNormalModeSeparator",
		},
	},
}
