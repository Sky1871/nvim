# nvim-config

A modern, fast, and modular Neovim configuration written in Lua and managed by **lazy.nvim**. Pre-configured for full-stack development, LSP diagnostics, Git workflows, tmux integration, test runners, and 42 School C toolchains.

---

## Features

* **UI & Theme:** Styled with `catppuccin-mocha` and features an `alpha-nvim` startup dashboard with custom ASCII header art.
* **Status Line:** A highly customized, responsive `lualine.nvim` status bar displaying dynamic Vim mode colors, active LSP clients, file progress, and Git branch/diff status.
* **LSP & Tooling:** Automated LSP management via `mason.nvim` with native `vim.lsp.config` definitions for TypeScript, Solargraph, HTML, and Lua.
* **Formatting & Diagnostics:** Code formatting and linting via `none-ls.nvim` using StyLua, Prettier, and RuboCop.
* **Autocomplete & Snippets:** Modular completion engine via `nvim-cmp` and `LuaSnip` with VSCode-style friendly snippets.
* **Fuzzy Finding:** File, live-grep, and history searching via `telescope.nvim` integrated with `telescope-ui-select`.
* **File Management:** Dual file workflows with sidebar navigation via `neo-tree.nvim` and buffer-based directory editing via `oil.nvim`.
* **42 Toolchain:** Seamless integration with `dogshitnorm.nvim` for header generation, Norminette checks, and automated Makefile management.
* **Tmux & Testing:** Seamless split navigation with `nvim-tmux-navigation` and test execution piped into tmux panes using `vim-test` and `vimux`.

---

## Plugins

### Package Manager

* `folke/lazy.nvim`: Modern plugin manager with automatic bootstrap.

### UI & Appearance

* `catppuccin/nvim`: Mocha flavor colorscheme.
* `nvim-lualine/lualine.nvim`: Blazing fast and highly customizable status line.
* `goolord/alpha-nvim`: Fast and customizable dashboard.
* `nvim-tree/nvim-web-devicons`: File icons used across Neo-tree and Lualine.
* `MunifTanjim/nui.nvim`: UI component library.

### LSP, Linting & Formatting

* `neovim/nvim-lspconfig`: Native LSP configuration.
* `williamboman/mason.nvim`: Portable package manager for LSP servers, linters, and formatters.
* `williamboman/mason-lspconfig.nvim`: Mason bridge for `nvim-lspconfig`.
* `nvimtools/none-ls.nvim`: Injected diagnostics and formatters (StyLua, Prettier, RuboCop, ERB Lint).

### Completion & Snippets

* `hrsh7th/nvim-cmp`: Autocompletion engine.
* `hrsh7th/cmp-nvim-lsp`: LSP source for `nvim-cmp`.
* `L3MON4D3/LuaSnip`: Snippet engine.
* `saadparwaiz1/cmp_luasnip`: LuaSnip source for `nvim-cmp`.
* `rafamadriz/friendly-snippets`: Set of pre-configured community snippets.

### Navigation & Search

* `nvim-telescope/telescope.nvim`: Fuzzy finder.
* `nvim-telescope/telescope-ui-select.nvim`: Telescope extension for `vim.ui.select`.
* `nvim-neo-tree/neo-tree.nvim`: Sidebar file tree and buffer manager.
* `stevearc/oil.nvim`: Buffer-like file explorer.
* `alexghergh/nvim-tmux-navigation`: Seamless navigation between Neovim splits and tmux panes.
* `nvim-lua/plenary.nvim`: Lua functions module used across plugins.

### Syntax & Git

* `romus204/tree-sitter-manager.nvim`: Treesitter parser management.
* `tpope/vim-fugitive`: Git wrapper.
* `lewis6991/gitsigns.nvim`: Git status decorations and hunk actions.

### Testing & Utilities

* `vim-test/vim-test`: Multi-language test runner.
* `preservim/vimux`: Interaction between Vim and tmux.
* `vinnymeller/swagger-preview.nvim`: Real-time preview for OpenAPI/Swagger specs.
* `0xveya/dogshitnorm.nvim`: 42 School Norminette linter and Makefile generator.

---

## Configuration Options

| Option | Value | Description |
| --- | --- | --- |
| `mapleader` | `<Space>` | Sets the global leader key. |
| `maplocalleader` | `\` | Sets the local leader key. |
| `number` / `relativenumber` | `true` | Shows hybrid relative line numbers. |
| `winborder` | `"rounded"` | Applies rounded borders to floating windows. |
| `clipboard` | `"unnamedplus"` / `"osc52"` | Synchronizes with system clipboard and OSC 52. |
| `mouse` | `"a"` | Enables mouse support across all modes. |
| `showmode` | `false` | Hides redundant mode text (handled beautifully by Lualine). |
| `breakindent` | `true` | Preserves visual indentation on wrapped lines. |
| `undofile` | `true` | Saves persistent undo history across sessions. |
| `ignorecase` / `smartcase` | `true` | Case-insensitive search unless capital letters are used. |
| `signcolumn` | `"yes"` | Keeps the sign column fixed to prevent layout shift. |
| `updatetime` | `250` | Faster update interval in milliseconds. |
| `timeoutlen` | `300` | Shorter delay for mapped sequence triggers. |
| `splitright` / `splitbelow` | `true` | Controls default directions for new split windows. |
| `list` / `listchars` | `true` | Visualizes tab characters (`» `) and trailing whitespace (`·`). |
| `inccommand` | `"split"` | Displays incremental search & replace previews in a split window. |
| `cursorline` | `true` | Highlights the active cursor line. |
| `scrolloff` | `10` | Maintains 10 lines of vertical context above and below the cursor. |

---

## Key Mappings

### General & Diagnostics

| Mode | Keybinding | Action |
| --- | --- | --- |
| Normal | `<leader>e` | Show diagnostic error messages in floating window |
| Normal | `<leader>q` | Open diagnostics in the quickfix list |

### LSP & Formatting

| Mode | Keybinding | Action |
| --- | --- | --- |
| Normal | `K` | Hover documentation |
| Normal | `<leader>gd` | Go to definition |
| Normal | `<leader>gr` | Show LSP references |
| Normal | `<leader>ca` | Open LSP code actions |
| Normal | `<leader>gf` | Format buffer via LSP / none-ls |

### Fuzzy Search (Telescope)

| Mode | Keybinding | Action |
| --- | --- | --- |
| Normal | `<C-p>` | Find files |
| Normal | `<C-S-p>` | Live grep across project |
| Normal | `<leader><leader>` | Open recently accessed files |

### File Management

| Mode | Keybinding | Action |
| --- | --- | --- |
| Normal | `<C-n>` | Toggle Neo-tree filesystem explorer |
| Normal | `<leader>bf` | Open Neo-tree buffer list in floating window |
| Normal | `-` | Toggle Oil floating file editor |

### Git (Gitsigns)

| Mode | Keybinding | Action |
| --- | --- | --- |
| Normal | `<leader>gp` | Preview Git hunk |
| Normal | `<leader>gt` | Toggle Git line blame |

### Tmux Navigation

| Mode | Keybinding | Action |
| --- | --- | --- |
| Normal | `<C-h>` | Navigate to left pane / split |
| Normal | `<C-j>` | Navigate to lower pane / split |
| Normal | `<C-k>` | Navigate to upper pane / split |
| Normal | `<C-l>` | Navigate to right pane / split |

### Testing (vim-test / vimux)

| Mode | Keybinding | Action |
| --- | --- | --- |
| Normal | `<leader>t` | Run nearest test |
| Normal | `<leader>T` | Run current test file |
| Normal | `<leader>a` | Run test suite |
| Normal | `<leader>l` | Rerun last test |
| Normal | `<leader>g` | Visit last test file |

### 42 School Tools (`dogshitnorm.nvim`)

| Mode | Keybinding | Action |
| --- | --- | --- |
| Normal | `<leader>cn` | Run Norminette linter |
| Normal | `<leader>42` | Insert / update 42 header |
| Normal | `<leader>4h` | Toggle header style |
| Normal | `<leader>ch` | Insert header guards |
| Normal | `<leader>Fc` | Toggle function line counter |
| Normal | `<leader>cm` | Generate Makefile |
| Normal | `<leader>cu` | Synchronize Makefile sources (`:Makesync`) |

---

## Prerequisites & Installation

### Requirements

* **Neovim** `0.9.0` or newer.
* **Git**
* A **Nerd Font** patched font (e.g., *FiraCode Nerd Font*) for UI glyphs and devicons.
* **External Tools:**
* `swagger-ui-watcher` (via `npm install -g swagger-ui-watcher`)
* `uv` toolchain (for 42 Norminette checks)



### Setup

Clone the repository into your local Neovim configuration directory:

```bash
git clone <your-repo-url> ~/.config/nvim

```

Launch Neovim:

```bash
nvim

```

`lazy.nvim` will automatically clone itself and install all configured plugins. Language servers and formatters will then be provisioned automatically via Mason.
