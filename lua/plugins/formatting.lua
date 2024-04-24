return {
  "stevearc/conform.nvim",
  opts = {
    format = {
      filter = function(client)
        return client.name ~= "tsserver"
      end,
    },
  },
}
