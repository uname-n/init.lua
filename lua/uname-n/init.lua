require("uname-n.packer")
require("uname-n.set")
require("uname-n.remap")

 function SetupEditor()
    vim.cmd(':Copilot split')
    vim.cmd(':NERDTreeFocus')
 end

 vim.cmd('command! SetupEditor :lua SetupEditor()')

 vim.cmd([[
   augroup AutoSetupEditor
     autocmd!
     autocmd BufWinEnter * lua SetupEditor()
   augroup END
]])
