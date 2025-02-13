
-- Dev Mode: This mode it use when developing
vim.api.nvim_create_user_command("Dev", function()
   vim.wo.relativenumber = true
   vim.opt.scrolloff = 99

   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
   vim.api.nvim_set_hl(0, 'LineNr', { bg = "none" })
   vim.api.nvim_set_hl(0, 'LineNr', { fg = "gray" })
end, {})

-- Presentation Mode: This mode makes it easier to present code with other people. 
vim.api.nvim_create_user_command("Prs", function()
   vim.wo.relativenumber = false
   vim.opt.scrolloff = 0

   vim.api.nvim_set_hl(0, "Normal", { bg = "black" })
   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
   vim.api.nvim_set_hl(0, 'LineNr', { bg = "none" })
   vim.api.nvim_set_hl(0, 'LineNr', { fg = "gray" })
end, {})
