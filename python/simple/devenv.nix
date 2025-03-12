{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  # https://devenv.sh/packages/
  packages = [ pkgs.git ];
  languages.python = {
    enable = true;
    version = "3.12";
    venv.enable = true;
    uv.enable = true;
  };

  dotenv.enable = true;

  # https://devenv.sh/git-hooks/
  # git-hooks.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
