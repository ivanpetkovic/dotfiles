-- overriding default plugin configs!

local M = {}

M.treesitter = {
   ensure_installed = {
      "vim",
      "html",
      "css",
      "javascript",
      "json",
      "toml",
      "markdown",
      "c",
      "bash",
      "lua",
      "norg",
      "rust",
      "typescript",
   },
}


M.nvimtree = {
   git = {
      enable = true,
   },
   view = {
      width = 35,
      side = "left"
   },
   respect_buf_cwd = true,
   update_cwd = true,
   update_focused_file = {
     enable = true,
     update_cwd = true
   },
   renderer = {
      highlight_git = true,
      icons = {
         show = {
            git = true,
         },
      },
   },
}

M.blankline = {
   filetype_exclude = {
      "help",
      "terminal",
      "alpha",
      "packer",
      "lspinfo",
      "TelescopePrompt",
      "TelescopeResults",
      "nvchad_cheatsheet",
      "lsp-installer",
      "norg",
      "",
   },
}

return M
