return  {
    "f-person/git-blame.nvim",
    keys = { { "<leader>gb", "<cmd>GitBlameToggle<cr>", desc = "Git Blame" } },
    config = function()
      require("gitblame").setup { enabled = false }

      -- ({
      --   enable = true,
      --   prefix = " ",
      --   formatter = function (name, blame_info)
      --     if blame_info.author == name then
      --       blame_info.author = "You"
      --     end
      --     local text = string.format(" %s, %s - %s", blame_info.author, blame_info.summary, blame_info.date)
      --     return { text, "GitBlame" }
      --   end,
      --   use_internal_diff = true,
      -- })
    end,
  }
