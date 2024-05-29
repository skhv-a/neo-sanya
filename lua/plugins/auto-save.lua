return {
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle", -- optional for lazy loading on command
    event = { "InsertLeave", "TextChanged" }, -- optional for lazy loading on trigger events
    opts = {
      condition = function(buf)
        if vim.bo[buf].filetype == "harpoon" then
          return false
        end
      end,
    },
  },
}
