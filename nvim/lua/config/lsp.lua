--[[ Deprecated by using mini.completion - achieves autocompletion in absence of mini.completion
--If language is supported by LSP, autotrigger 'C-X C-O' while typing
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
]]
vim.lsp.enable({"lua_ls", "tinymist"})

vim.lsp.enable("emmet_language_server")
vim.lsp.config("emmet_language_server", {
  filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
  -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
  -- **Note:** only the options listed in the table are supported.
  init_options = {
    ---@type table<string, string>
    includeLanguages = {},
    --- @type string[]
    excludeLanguages = {},
    --- @type string[]
    extensionsPath = {},
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
    preferences = {},
    --- @type boolean Defaults to `true`
    showAbbreviationSuggestions = true,
    --- @type "always" | "never" Defaults to `"always"`
    showExpandedAbbreviation = "always",
    --- @type boolean Defaults to `false`
    showSuggestionsAsSnippets = false,
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
    syntaxProfiles = {},
    --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
    variables = {},
  },
})

require("mini.completion").setup()
