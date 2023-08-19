local COMMAND = {
  'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release',
  'cmake --build build --config Release',
  'cmake --install build --prefix build'
}

return {
  'nvim-telescope/telescope-fzf-native.nvim',
  lazy = true,
  build = table.concat(COMMAND, '&&'),
}
