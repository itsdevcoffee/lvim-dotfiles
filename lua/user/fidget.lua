local status_ok, fidget = pcall(require, "fidget")
if not status_ok then
  return
end
fidget.setup({
  text = {
    spinner = 'earth',
    commenced = 'Doing Shit',
    completed = 'Finished Shit'
  },
  window = {
    blend = 1,
    -- relative = 'editor'
    relative = 'win'
  },
  align = {
    bottom = false
  }
})
