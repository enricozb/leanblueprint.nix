{ pkgs ? import <nixpkgs> { } }:

let python = pkgs.python311.withPackages (python-pkgs: [ ]);

in pkgs.writeShellScriptBin "leanblueprint" ''
  echo Hello World
''
