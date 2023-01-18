local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.configure('pylsp',{
   settings = {
       pylsp = {
           plugins = {
                 pycodestyle = {
			 maxLineLength = 200,
                 },
                 flake8 = {
			 maxLineLength = 200,
                 }
            }
        }
    }
})

lsp.setup()
