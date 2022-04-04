local status_ok, modes = pcall(require, "modes")
if not status_ok then
  return
end

modes.setup({
  colors = {
    copy = "#83CC78",
    delete = "#c75c6a",
    insert = "#78ccc5",
    visual = "#f5c359",
  },

  -- Cursorline highlight opacity
  line_opacity = 0.1,

  -- Highlight cursor
  set_cursor = true,

  -- Highlight in active window only
  focus_only = false
})
