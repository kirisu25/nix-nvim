{ pkgs }:
with pkgs.vimPlugins;
[
  lazy-nvim
  telescope-nvim
  telescope-recent-files
  nvim-lspconfig
]
