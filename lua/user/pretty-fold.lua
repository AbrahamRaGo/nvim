local status_ok, pretty_fold = pcall(require, 'pretty-fold')
if not status_ok then
  return
end

local preview_status_ok, pretty_fold_preview = pcall(require, 'pretty-fold.preview')
if not preview_status_ok then
  return
end

pretty_fold.setup {
    keep_indentation = true,
    remove_fold_markers = true,
    process_comment_signs = 'delete',
    add_close_pattern = true,
    fill_char = '━',
    sections = {
      left = {
        '┫', 'content', '┣'
      },
      right = {
        '┫ ', 'number_of_folded_lines', ': ', 'percentage', '┣━━'
      }
    },
    matchup_patterns = {
      { '^%s*do$', 'end' },  -- do ... end blocks
      { '^%s*do%s', 'end' }, -- do ... end blocks with comment
      { '^%s*if', 'end' },   -- if ... end
      { '^%s*for', 'end' },  -- for
      { 'function%s*%(', 'end' }, -- 'function(' or 'function ('
      {  '{', '}' },
      { '%(', ')' }, -- % to escape lua pattern char
      { '%[', ']' }, -- % to escape lua pattern char
   },
}

pretty_fold_preview.setup {
  key = 'h', -- choose 'h' or 'l' key
}
