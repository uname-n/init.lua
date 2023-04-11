local M = {}
M.pomo = {
  work_duration = 25,
  break_duration = 5,
  timer_id = nil,
  break_win_id = nil,
  break_buf_id = nil
}

function M.pomo.start(work_duration, break_duration)
  if M.pomo.timer_id and not vim.api.nvim_win_is_valid(M.pomo.break_win_id) then
    M.pomo.timer_id = nil
  end

  if M.pomo.timer_id then
    print("Pomo is already running.")
    return
  end

  M.pomo.work_duration = work_duration or M.pomo.work_duration
  M.pomo.break_duration = break_duration or M.pomo.break_duration

  local function timer_callback()
    M.pomo.break_buf_id = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(M.pomo.break_buf_id, 0, -1, false, { 
        "", 
        "   <br>",
    })

    local width = vim.api.nvim_get_option("columns")
    local height = vim.api.nvim_get_option("lines")

    local win_opts = {
      style = "minimal",
      relative = "editor",
      width = width,
      height = height,
      row = 0,
      col = 0
    }

    M.pomo.break_win_id = vim.api.nvim_open_win(M.pomo.break_buf_id, true, win_opts)

    M.pomo.timer_id = vim.defer_fn(function()
        if vim.api.nvim_win_is_valid(M.pomo.break_win_id) then
          vim.api.nvim_win_close(M.pomo.break_win_id, true)
          vim.api.nvim_buf_delete(M.pomo.break_buf_id, { force = true })
        end
      M.pomo.timer_id = nil
    end, M.pomo.break_duration * 60 * 1000)
  end

  print("Pomo Started.")
  M.pomo.timer_id = vim.defer_fn(timer_callback, M.pomo.work_duration * 60 * 1000)
end

vim.api.nvim_command("command! -nargs=* Pomo lua require('uname-n.pomo').pomo.start(<f-args>)")

return M
