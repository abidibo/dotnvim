return {
    "agoodshort/telescope-git-submodules.nvim",
    dependencies = "akinsho/toggleterm.nvim",
    config = function()
        require("telescope").load_extension("git_submodules")
    end,
}
