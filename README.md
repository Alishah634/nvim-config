# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.


File structure:
~/.config/nvim/
├── init.lua           # just: require("config.lazy")
├── lua/
│   ├── config/        # your overrides: options, keymaps, lsp, theme, etc.
│   │   ├── options.lua
│   │   ├── keymaps.lua
│   │   ├── lsp.lua
│   │   ├── theme.lua
│   │   └── autocmds.lua
│   └── plugins/
│       └── user.lua   # add your own plugin specs here
├── lazy-lock.json     # lockfile for precise plugin versions
└── stylua.toml        # code-formatter config









