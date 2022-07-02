local status_ok, glow = pcall(require, "glow")
if not status_ok then
  print("failed to load: glow")
  return
end

vim.g.glow_binary_path = vim.env.HOME .. "/bin"
-- vim.g.glow_style = "/home/xfo/.config/lvim/glow_glamour_black.json"
vim.g.glow_style = "dark"
vim.g.glow_use_pager = true
