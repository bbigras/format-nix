let
  nixpkgs = import <nixpkgs> {};
  unstable = import <nixos-unstable> {};
in with nixpkgs; stdenv.mkDerivation {
  name = "format-nix-shell";

  buildInputs = [
    git
    nodePackages.pulp
    nodejs
    psc-package
    python
    unstable.purescript
  ];
}
