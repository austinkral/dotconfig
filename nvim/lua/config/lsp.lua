-- If language is supported by LSP, autotrigger 'C-X C-O' while typing
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
	local client = vim.lsp.get_client_by_id(ev.data.client_id)
	if client:supports_method('textDocument/completion') then
	    vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
	end
    end,
})
-- Disable autoselect from dropdown
vim.cmd("set completeopt+=noselect")

vim.lsp.enable({"lua_ls", "tinymist"})
