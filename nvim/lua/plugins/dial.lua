return {
  'monaqa/dial.nvim',
  keys = {
    { '<C-a>', '<CMD>DialIncrement<CR>' },
    { '<C-x>', '<CMD>DialDecrement<CR>' },
  },
  config = function()
    local augend = require('dial.augend')
    local default = {
      augend.integer.alias.decimal_int,
      augend.integer.alias.hex,
      augend.date.alias['%Y/%m/%d'],
      augend.date.alias['%Y-%m-%d'],
      augend.date.alias['%m/%d'],
      augend.date.alias['%H:%M'],
      augend.date.alias['%Y年%-m月%-d日'],
      augend.constant.alias.bool,
      augend.constant.new({
        elements = { '&&', '||' },
        word = false,
        cyclic = true,
      }),
    }
    require('dial.config').augends:register_group({
      default = default
    })
  end,
}
