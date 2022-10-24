{ pkgs, ... }: {

	home.packages = with pkgs; [
	    # Languages
	    nodejs-17_x
	    python38
	    lua


	    # Communication
	    keybase-gui
	    keybase
	    kbfs

	    ricochet
	    element-desktop
	    tdesktop
	    discord
	    whatsapp-for-linux

	    # Desktop Applications
	    tor-browser-bundle-bin
	    bitwarden
	    gnome-multi-writer
	    spotify
	    wpsoffice
	    rpi-imager

	    ulauncher
	    wmctrl

	    # Configuration Softwares
	    blueman
	    libinput-gestures
	    pavucontrol

	    # Dev Apps
	    cool-retro-term
	    alacritty
	    insomnia

	    # Terminal Programs
	    neofetch
	    exa
	    gcc
	    tmux
	    lolcat
	    cmatrix
	    nyancat
	    unzip
	    nmap
	    mlocate
	    youtube-dl
	    btop
	];

	imports = [
		./programs/starship/default.nix
		./programs/nvim/default.nix
    		./programs/git/default.nix
    		./programs/zsh/default.nix
    		./config-nixpkgs.nix
	];

	home.keyboard = {
		layout = "us";
		variant = "intl";
	};
}
