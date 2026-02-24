# Neovim Configuration

My Neovim configuration.


## Requirements

- Neovim >= 0.9
- Git
- A Nerd Font (I currently use Gohu Font)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope live grep)
- tmux (optional for vim-tmux-navigator)

## Structure

```
~/.config/nvim/
├── init.lua
└── lua/
    └── config/
        ├── plugins.lua   -- Plugin definitions (built on top of lazy.nvim)
        └── keymaps.lua   -- Keybindings
```

## Plugins

| Plugin | Purpose |
|--------|---------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP/DAP/linter installer |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Bridges mason and lspconfig |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting & indentation |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git decorations |
| [catppuccin](https://github.com/catppuccin/nvim) | Colorscheme (I use Mocha :D) |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) | Seamless tmux/nvim pane navigation |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keymap popup helper |

## Keymaps

**Leader key: `Space`**

### LSP
| Keymap | Action |
|--------|--------|
| `K` | Hover documentation |
| `gd` | Go to definition |
| `gr` | Go to references |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code actions |
| `<leader>f` | Format file |

### Diagnostics
| Keymap | Action |
|--------|--------|
| `<leader>e` | Show error popup |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>q` | Diagnostics list |

### Telescope
| Keymap | Action |
|--------|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | List buffers |
| `<leader>fh` | Help tags |

### Git (Gitsigns)
| Keymap | Action |
|--------|--------|
| `]c` | Next hunk |
| `[c` | Previous hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |

## Installation

```bash
git clone <your-repo-url> ~/.config/nvim
nvim
```

lazy.nvim will automatically install itself and all plugins on first launch.

## Treesitter Languages

Pre-installed parsers: `c`, `cpp`, `python`, `lua`, `javascript`, `typescript`

To install more parsers:
```
:TSInstall <language>
```
