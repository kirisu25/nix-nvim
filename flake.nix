{
  description = "my neovim";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    # utils.url = "github:numtide/flake-utils";
    neovim = {
      url = "github:nix-community/neovim-nightly-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      # utils,
      neovim,
      ...
    }:
    {
      packages.x86_64-linux.default = neovim.packages.x86_64-linux.neovim;
      apps.x86_64-linux.default = {
        type = "app";
        program = "${neovim.packages.x86_64-linux.neovim}/bin/nvim";
      };
    };
}
