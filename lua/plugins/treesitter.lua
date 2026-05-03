return { 
{
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = true,
  config = function()
        local ts = require('nvim-treesitter')
        -- Установка ключевых парсеров
        ts.install({
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        "bash",
        "cmake",
        "comment",
        "cpp",
        "css",
        "csv",
        "diff",
        "go",
        "groovy",
        "helm",
        "html",
        "http",
        "ini",
        "javascript",
        "json",
        "php",
        "python",
        "rst",
        "ruby",
        "rust",
        "sway",
        "xml",
        "qmljs",
        "zig",
        }, 
        { max_jobs = 8, })
  end
}
}
