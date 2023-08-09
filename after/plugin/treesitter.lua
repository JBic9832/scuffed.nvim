require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "javascript", "typescript", "c", "lua", "vim", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.ejs = {
    install_info = {
        url = "https://github.com/tree-sitter/tree-sitter-embedded-template",
        files = { "src/parser.c" },
        requires_generate_from_grammar = true,
    },
    filetype = "ejs",
}
