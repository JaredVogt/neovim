-----------------------------------------------------------
-- Initiate nvim and call startup files 
-----------------------------------------------------------

print('init file refreshed - yes, your keyboard shortcuts are actually working')

-- user = debug.getinfo(1,'S').source:match(".*/(.*)%.init.*")  -- gets user from user.init.lua
-- print(user)
user = 'default' 
user = 'jaredv'  -- temp set until this is derived from the filename 
print('User is ' .. user)

-- set userName to choose appropriate config file directory structure
local a = vim.api -- for conciseness
a.nvim_set_var(  
  "userName",
  user 
)

require(user .. ".plugins-setup")
require(user .. ".core.options")
-- require(user .. ".core.keymapsWithDesc")  -- experimental 
require(user .. ".core.keymaps")
require(user .. ".core.colorscheme")
require(user .. ".setup.firenvim")  -- TODO this has to be configured - empty file at this point
