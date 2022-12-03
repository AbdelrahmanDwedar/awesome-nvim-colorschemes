<h1 align=center>Awesome Nvim Colorschemes</h1>
<p align=center>
	<a href="https://github.com/neovim/neovim"><img src="https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white"></a>
	<br>
	<!-- <a href="#"><img src=""></a> -->
	<strong>The best collection of NeoVim specific color schemes!</strong>
	Inspered by <a href="https://github.com/rafi/awesome-vim-colorschemes">rafi/awesome-vim-colorschemes</a>
</p>

---

## Installation

**Using [Packer](https://github.com/wbthomason/packer.nvim)**  

```lua
use "AbdelrahmanDwedar/awesome-nvim-colorschemes"
```

**Using [Vim-Plug](https://github.com/junegunn/vim-plug)**

```lua
Plug 'AbdelrahmanDwedar/awesome-nvim-colorschemes'
```

---

## Usage

This plugin has the scripts of all colorschemes listed in [#colorschemes](#Colorschemes).

You can simply go to each colorschemes and check their configuring style and everything else you need.


### Samples

#### [Tokyonight.nvim]()

**lua**:

```lua
require('tokyonight').setup({
	style = "night",
	transparent = true,
	terminal_colors = true,
	styles = {
		sidebars = "transparent", -- style for sidebars, see below
		floats = "transparent",
	}
})
```

**vim script**:

```vim 
lua << EOF
require('tokyonight').setup({
	style = "night",
	transparent = true,
	terminal_colors = true,
	styles = {
		sidebars = "transparent", -- style for sidebars, see below
		floats = "transparent",
	}
})
EOF
```

#### catppuccin

**lua**:

```lua 
require("catppuccin").setup {
	flavour = "macchiato" -- mocha, macchiato, frappe, latte
	transparent_background = true,
	integrations = {
			telescope = true
	}
}
```

**vim script**:

```vim
lua << EOF
require("catppuccin").setup {
	flavour = "macchiato" -- mocha, macchiato, frappe, latte
	transparent_background = true,
	integrations = {
			telescope = true
	}
}
EOF
```

---

## Colorschemes

<!-- - [barstrata.nvim](https://github.com/w3barsi/barstrata.nvim) -->
- [catppuccin](https://github.com/catppuccin/nvim)
- [darkplus.nvim](https://github.com/LunarVim/darkplus.nvim)
- [dracula.nvim](https://github.com/Mofiqul/dracula.nvim)
- [github-nvim-theme](https://github.com/projekt0n/github-nvim-theme)
- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [neovim-ayu](https://github.com/Shatur/neovim-ayu)
- [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
- [nord.nvim](https://github.com/shaunsingh/nord.nvim)
- [nvim-solarized-lua](https://github.com/ishan9299/nvim-solarized-lua)
- [onedark.nvim](https://github.com/navarasu/onedark.nvim)
- [onenord.nvim](https://github.com/rmehri01/onenord.nvim)
<!-- - [rose-pine](https://github.com/rose-pine/neovim) -->
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)

---

## Alternatives

[ThemerCorp/themer.lua](https://github.com/ThemerCorp/themer.lua)

<h6 align=center>Made by <a href="https://github.com/AbdelrahmanDwedar">AbdelrahmanDwedar</a> | GPL License</h6>
