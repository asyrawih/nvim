local cmd = vim.g.nvim_command

-- cmd("autocmd CursorHold,CursorHoldI *.rs :lua require'lsp_extensions'.inlay_hints{ only_current_line = true }")
vim.api.nvim_create_autocmd("Filetype", {
    pattern = "rust",
    callback = function()
        vim.schedule(function()
            require('lsp_extensions').inlay_hints() 
        end)
    end
})
