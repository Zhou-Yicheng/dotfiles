return {
  'monaqa/dial.nvim',
  keys = {
    {'<C-a>', function() require('dial.map').inc_normal() end},
    {'<C-x>', function() require('dial.map').dec_normal() end},
    {'g<C-a>', function() require('dial.map').inc_gnormal() end},
    {'g<C-x>', function() require('dial.map').dec_gnormal() end},
  },
  config = function()
    local augend = require('dial.augend')
    require('dial.config').augends:register_group{
      default = {
        augend.integer.alias.decimal,
        augend.integer.alias.hex,
        augend.date.alias['%Y/%m/%d'],
        augend.date.alias['%Y-%m-%d'],
        augend.date.alias['%m/%d'],
        augend.date.alias['%H:%M'],
        augend.date.alias['%Y年%-m月%-d日'],
        augend.constant.alias.bool,
        augend.constant.alias.alpha,
        augend.constant.alias.Alpha,
        augend.constant.new({
          elements = { '&&', '||' },
          word = false,
          cyclic = true,
        }),
      },
    }
  end
}
