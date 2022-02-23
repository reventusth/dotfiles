local present, impatient = pcall(require, "impatient")

if present then
	impatient.enable_profile()
end

local core_modules = {
	"core.misc",
	"core.mappings",
    "core.options",
}

for _, module in ipairs(core_modules) do
	local ok, err = pcall(require, module)
	if not ok then
		error("Error loading " .. module .. "\n\n" .. err)
	end
end

require("core.mappings").misc()
require("plugins.init")
require("colours.init").init("dracula")
