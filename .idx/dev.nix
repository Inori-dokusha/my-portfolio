# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"

  # Use https://search.nixos.org/packages to find packages
  packages = [
    # pkgs.go
    pkgs.python311
    pkgs.python311Packages.pip
    pkgs.nodejs_20
  ];

  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "emmanuelbeziat.vscode-great-icons"
      "esbenp.prettier-vscode"
    ];

    # Enable previews
    previews = {
      enable = true;
      previews = {
        web = {
           command = [
            "python"
            "-m"
            "http.server"
            "$PORT"
          ];
        manager = "web";
        };
      };
    };
  };
}
