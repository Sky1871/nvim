vim.opt.number = true
vim.wo.relativenumber = true
vim.opt.winborder = "rounded"
vim.g.clipboard = "osc52"
vim.opt.sessionoptions =
	{ "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds", "localoptions" }

vim.filetype.add({
	extension = {
		sh = "bash",
	},
})
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.clipboard = "unnamedplus"
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣"}
vim.opt.inccommand = "split"
vim.opt.cursorline = true
vim.opt.scrolloff = 10

vim.lsp.inlay_hint.enable(true)

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = "*",
  callback = function()
    local current_file_path = vim.fn.expand('%:p')
    local excluded_dir = vim.fn.expand("~/nerdstuff/42")

    if not string.find(current_file_path, excluded_dir, 1, true) then
      vim.opt_local.expandtab = true
      vim.opt_local.tabstop = 2
      vim.opt_local.shiftwidth = 2
    else
      vim.opt_local.expandtab = false
      vim.opt_local.tabstop = 2
      vim.opt_local.shiftwidth = 2
    end
  end
})
