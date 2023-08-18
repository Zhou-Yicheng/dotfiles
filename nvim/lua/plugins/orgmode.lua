return {
  'nvim-orgmode/orgmode',
  config = function()
    local orgmode = require('orgmode')
    orgmode.setup()
    orgmode.setup_ts_grammar()
  end,
}
