local status_ok, hop = pcall(require, "hop")
if not status_ok then
  print("failed to load: hop")
  return
end

hop.setup { keys = '/dzrchutenosa' }
vim.api.nvim_set_keymap('', 's', "<cmd>lua require'hop'.hint_lines({ multi_windows = true })<cr>", {})
vim.api.nvim_set_keymap('', 't', "<cmd>lua require'hop'.hint_words({ multi_windows = false })<cr>", {})
vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_patterns({ multi_windows = true })<cr>", {})
