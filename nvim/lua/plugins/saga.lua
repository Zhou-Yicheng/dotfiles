return {
  'nvimdev/lspsaga.nvim',
  event = 'LspAttach',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  keys = {
    -- Callhierarchy
    { '<leader>ci', '<CMD>Lspsaga incoming_calls<CR>' },
    { '<leader>co', '<CMD>Lspsaga outgoing_calls<CR>' },
    -- Code Action
    { mode = { 'n', 'v' }, 'ga', '<CMD>Lspsaga code_action<CR>' },
    -- Definition
    { 'gd', '<CMD>Lspsaga peek_definition<CR>' },
    { 'gD', '<CMD>Lspsaga goto_definition<CR>' },
    { 'gt', '<CMD>Lspsaga peek_type_definition<CR>' },
    { 'gT', '<CMD>Lspsaga goto_type_definition<CR>' },
    -- Diagnostic
    { '[d', '<CMD>Lspsaga diagnostic_jump_prev<CR>' },
    { ']d', '<CMD>Lspsaga diagnostic_jump_next<CR>' },
    -- Finder: references and implementation
    { 'gh', '<CMD>Lspsaga finder<CR>' },
    -- -- Hover
    -- { 'K',  '<CMD>Lspsaga hover_doc<CR>' },
    -- Implement
    { 'gi', '<CMD>Lspsaga finder imp<CR>' },
    -- Outline
    { 'go', '<CMD>Lspsaga outline<CR>' },
    -- Rename
    { 'gr', '<CMD>Lspsaga rename<CR>' },
    { 'gR', '<CMD>Lspsaga rename ++project<CR>' },
  },
  opts = {},
}
