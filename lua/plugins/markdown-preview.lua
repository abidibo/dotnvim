return {
    "iamcco/markdown-preview.nvim",
    build = ":call mkdp#util#install()",
    lazy = true,
    ft = { "md", "markdown" },
}
