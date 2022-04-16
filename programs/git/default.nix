{ config, pkgs, libs, ... }:
{
  home.packages = with pkgs; [
    starship
  ];
  programs.git = { 
		enable = true;
		userEmail = "saravenpi@gmail.com";
		userName = "saravenpi";
    extraConfig = {
      color.ui = true;

      core.editor = "${pkgs.neovim}/bin/nvim";

      merge.tool = "vimdiff";
      mergetool.vimdiff.cmd = "${pkgs.neovim}/bin/nvim -d $LOCAL $REMOTE $MERGED";

      pager.status = false;
      pager.commit = false;

      push.default = "simple";
      pull.ff = "only";

      init.defaultBranch = "master";
    };
	};
}
