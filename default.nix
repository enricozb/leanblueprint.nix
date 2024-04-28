{ pkgs }:

let
  poetry2nix-src = pkgs.fetchFromGitHub {
    owner = "nix-community";
    repo = "poetry2nix";
    rev = "2024.2.2230616";
    sha256 = "0qx2iv57vhgraaqj4dm9zd3dha1p6ch4n07pja0hsxsymjbvdanw";
  };

  poetry2nix = pkgs.callPackage poetry2nix-src { };

in poetry2nix.mkPoetryApplication {
  preferWheels = true;
  projectDir = ./.;
}
