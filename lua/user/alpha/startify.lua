local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local startify = require("alpha.themes.startify")

startify.section.header.val = {
[[::::    ::: :::::::::: ::::::::  :::     ::: ::::::::::: ::::    ::::  ]],
[[:+:+:   :+: :+:       :+:    :+: :+:     :+:     :+:     +:+:+: :+:+:+ ]],
[[:+:+:+  +:+ +:+       +:+    +:+ +:+     +:+     +:+     +:+ +:+:+ +:+ ]],
[[+#+ +:+ +#+ +#++:++#  +#+    +:+ +#+     +:+     +#+     +#+  +:+  +#+ ]],
[[+#+  +#+#+# +#+       +#+    +#+  +#+   +#+      +#+     +#+       +#+ ]],
[[#+#   #+#+# #+#       #+#    #+#   #+#+#+#       #+#     #+#       #+# ]],
[[###    #### ########## ########      ###     ########### ###       ### ]],
}

startify.section.top_buttons.val = {
    { type = "text", val = "Quick actions", opts = { hl = "SpecialComment", position = "left" } },
    { type = "padding", val = 1 },
    startify.button("f", "  Find file", ":Telescope find_files <CR>"),
    startify.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
    startify.button("p", "  Find project", ":Telescope projects <CR>"),
    startify.button("b", "  Git Branches", ":Telescope git_branches <CR>"),
    startify.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
}

startify.section.bottom_buttons.val = {
	startify.button("q", "  Quit Neovim", ":qa<CR>"),
}

startify.section.footer.val = {
  { type = "padding", val = 1 },
  { type = "text", val = " AbrahamRaGo", opts = { hl = "SpecialComment", position = "left" } },
}


startify.opts.opts.position = "center"
alpha.setup(startify.opts)
