return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({
      auto_session_suppress_dirs = { "~/", "~/Downloads", "~/Projects", "/" },
      auto_save_enabled = true,
      auto_session_enable_last_session = true,
      session_lens = {
        buffer_to_ignore = {},
        load_on_start = true,
        theme_conf = { border = true },
        previewer = false,
      },
      vim.keymap.set(
        "n",
        "<leader>s",
        require("auto-session.session-lens").search_session,
        { noremap = true, desc = "Search session" }
      ),
    })
  end,
}
