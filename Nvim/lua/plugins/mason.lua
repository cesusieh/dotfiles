return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
         end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { 'neovim/nvim-lspconfig' },
        config = function()
            require("mason-lspconfig").setup({

                ensure_installed = {
                    'gopls',        -- Golang
                    'pyright',      -- Python
                    'lua_ls',       -- Lua
                },

                automatic_installation = true,

                handlers = {
                    function(server_name)
                        require('lspconfig')[server_name].setup({
                        })
                    end
                }
            })
        end
    },

    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "williamboman/mason.nvim" },
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,  -- Lua
                    null_ls.builtins.formatting.black,   -- Python
                    null_ls.builtins.formatting.gofmt,   -- Go

                    null_ls.builtins.diagnostics.flake8, -- Python
                    null_ls.builtins.diagnostics.golangci_lint, -- Go
                },
            })
        end
    },
}
