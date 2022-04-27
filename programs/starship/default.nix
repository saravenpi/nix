{ config, pkgs, libs, ... }:
{
  home.packages = with pkgs; [
    starship
  ];
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;

      character = {
        success_symbol = "[❯](bold green)";
        error_symbol = "[✗ ❯](bold red)";
      };

      line_break = {
        disabled = true;
      };

      directory = {
        format = "[$path]($style)[$read_only]($read_only_style) ";
        read_only = "🔒";
        read_only_style = "red";
        home_symbol = "🏠";
      };

      git_branch = {
        format = "on [$symbol$branch ]($style)";
        symbol = " ";
        style = "bold  #de3163";
      };

      git_commit = {
        style = "bold green";
      };

    };
  };
}

