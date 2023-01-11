local neogit = require("neogit")

neogit.setup {
  commit_popup = {
    kind = "split",
  },
  -- Change the default way of opening popups
  popup = {
    kind = "split",
  }
}
