return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- 1. Configure the servers using the new native API
      vim.lsp.config('ts_ls', { capabilities = capabilities })
      vim.lsp.config('solargraph', { capabilities = capabilities })
      vim.lsp.config('html', { capabilities = capabilities })
      vim.lsp.config('lua_ls', { capabilities = capabilities })
      vim.lsp.config('zls', { capabilities = capabilities })
      vim.lsp.config('clangd', { capabilities = capabilities })

      -- 2. Explicitly enable the configured servers
      local servers = { 'ts_ls', 'solargraph', 'html', 'lua_ls' }
      for _, server in ipairs(servers) do
        vim.lsp.enable(server)
      end

      -- 3. Your keymaps remain entirely unchanged
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
