# lush

__A neovim colorscheme based on dark and lush tones__

## Installation

Using lazy.nvim:

```lua
{
	"mstcl/lush",
	lazy = false,
	priority = 1000,
	config = function()
		vim.api.nvim_command("colorscheme lush")
	end,
},
```

## Notice

This colorscheme is no longer maintained as I have moved to using [dmg](https://github.com/mstcl/dmg)
