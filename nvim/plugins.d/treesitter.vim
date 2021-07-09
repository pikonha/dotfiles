lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = {"bash", "javascript", "ruby", "go", "dockerfile", "html", "json", "yaml"},

    highlight = {
      enable = true,
    },
    textobjects = {
      select = {
        enable = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ab"] = "@block.outer",
          ["ib"] = "@block.inner",
          ["as"] = "@statement.outer",
          ["is"] = "@statement.inner",
          ["ac"] = "@conditional.outer",
          ["ic"] = "@conditional.inner",
        }
      }
    }
}
EOF

