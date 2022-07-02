local status_ok, copilot = pcall(require, "copilot")
if not status_ok then
  print("failed to load: copilot")
	return
end

copilot.setup {
  cmp = {
    enabled = true,
    method = "getPanelCompletions",
  },
  panel = {
    enabled = true,
  },
  ft_enabled = { "markdown" },
}

