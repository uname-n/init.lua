require("uname-n.lazy")
require("uname-n.set")
require("uname-n.remap")

function IsNERDTreeOpen()
    for i = 1, vim.fn.tabpagenr('$') do
        local buflist = vim.fn.tabpagebuflist(i)
        for _, bufnr in ipairs(buflist) do
            local bufname = vim.api.nvim_buf_get_name(bufnr)
            if string.match(bufname, 'NERD_tree_') then
                return true
            end
        end
    end
    return false
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
