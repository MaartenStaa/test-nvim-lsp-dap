return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  config = function()
    require("fzf-lua").setup({ keymap = { builtin = { true, ["<Esc>"] = "hide" } } })

    vim.keymap.set({ 'n', 'v' }, '<c-p>', ':FzfLua files<cr>')
  end
}
