{ pkgs, ... }: {

	programs.neovim = {
	  enable = true;
	};

	home.packages = with pkgs; [
		nodejs
		python38
    lua

    omnisharp-roslyn

		discord
		element-desktop

		google-chrome
		bitwarden
		gnome-multi-writer
		spotify

		ulauncher
		wmctrl

		neofetch
		exa
		gcc
    tmux
		lolcat
		unzip
    youtube-dl

		i3-gaps
	];

	imports = [
		./programs/starship/default.nix
		./programs/i3/default.nix
		./programs/nvim/default.nix
    ./programs/git/default.nix
    ./programs/zsh/default.nix
    ./config.nix
	];
	home.keyboard = {
		layout = "us";
		variant = "intl";
	};
}
