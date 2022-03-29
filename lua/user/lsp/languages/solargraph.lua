return{
  settings = {
    solargraph = {
      diagnostics = true,
      cmd = { 'solargraph', 'stdio' },
      filetypes = { 'ruby' },
      init_options = {
        formatting = true
      },
      transport = "external",
    }
  }
}
