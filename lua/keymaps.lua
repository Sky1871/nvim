local function map(mode, lhs, rhs, desc, opts)
	opts = opts or {}
	if desc then
		opts.desc = desc
	end
	if opts.silent == nil then
		opts.silent = true
	end
	vim.keymap.set(mode, lhs, rhs, opts)
end

local function nmap(lhs, rhs, desc, opts)
	map("n", lhs, rhs, desc, opts)
end

nmap("<leader>e", vim.diagnostic.open_float, "Show diagnostic [E]rror messages")
nmap("<leader>q", vim.diagnostic.setloclist, "Open diagnostic [Q]uickfix list")
