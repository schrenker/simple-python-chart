{
  outputs = inputs@{ self, nixpkgs, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-darwin" ];
      perSystem = { config, self', inputs', pkgs, system, ... }: {
        devShells.default = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [ kubernetes-helm yaml-language-server helm-ls yamllint python313 ];
          shellHook = ''
            python3.13 -m venv .venv
            source .venv/bin/activate

            pip -q install pyright black requests kubernetes prometheus_client
          '';

        };
      };
    };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    flake-parts.url = "github:hercules-ci/flake-parts";

  };
}
