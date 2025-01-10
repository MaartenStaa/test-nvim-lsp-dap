local function on_attach(client, bufnr)
  local opts = { buffer = bufnr, noremap = true, silent = true }

  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set({'n', 'v'}, '<Leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set({'n', 'v'}, '<Leader>a', vim.lsp.buf.code_action, opts)
  vim.keymap.set('n', '<Leader>e', vim.diagnostic.open_float, opts)
  vim.keymap.set('n', '[c', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', ']c', vim.diagnostic.goto_next, opts)
end

return {
  "neovim/nvim-lspconfig",
  config = function()
    require'lspconfig'.lua_ls.setup({
      on_attach = on_attach,
    })
  end
}
