require("uname-n.packer")
require("uname-n.set")
require("uname-n.remap")

require("uname-n.pomo")

function IsNERDTreeOpen()        
  return vim.fn.exists("t:NERDTreeBufName") and (vim.fn.bufwinnr("t:NERDTreeBufName") ~= -1)
end

function SetupEditor()
    if not IsNERDTreeOpen() then
        vim.cmd(':Copilot split')
        vim.cmd(':NERDTree')
    end
end

vim.cmd('command! SetupEditor :lua SetupEditor()')

vim.cmd([[
  augroup AutoSetupEditor
    autocmd!
    autocmd BufWinEnter * lua SetupEditor()
  augroup END
]])
