vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local line_count = vim.api.nvim_buf_line_count(0)

        if mark[1] > 0 and mark[1] <= line_count then
            vim.api.nvim_win_set_cursor(0, mark)
        end
    end,
})

vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, {
    callback = function()
        vim.cmd("checktime")
    end,
})

vim.diagnostic.config ({
  update_in_insert = false,
  severity_sort = true,
  float = {
      border = 'rounded',
      source = 'if_many' 
  },
  underline = { 
      severity = { 
          min = vim.diagnostic.severity.WARN 
      } 
  },

  virtual_text = true,

  jump = {
    on_jump = function(_, bufnr)
      vim.diagnostic.open_float {
       bufnr = bufnr,
        scope = 'cursor',
        focus = false,
      }
    end,
  },
})

vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
        pcall(vim.treesitter.start, args.buf)
    end,
})
