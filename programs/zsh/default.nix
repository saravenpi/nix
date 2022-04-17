{ config, pkgs, libs, ... }:
{
  home.packages = with pkgs; [
    zsh
  ];
  programs.zsh = { 
		enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;

    localVariables = {
      CODE = "$HOME/Documents/code/";
      SCHOOL = "$HOME/school/";
    };

    shellAliases = {
      ls = "exa --icons";
      ll = "ls -lh";
      la = "ls -ah";
      lal = "ls -alh";
      lla = "ls -alh";
      l = "ls";
      tn = "ls --tree --ignore-glob='node_modules'";
      tnl = "ll --ignore-glob='node_modules' -T";
      tln = "ll --ignore-glob='node_modules' -T";

      rm = "rm -i";

      f = "fg";
      j = "jobs";

      nv = "nvim";

      h = "cd $HOME";
      goc = "cd $CODE";
      gos = "cd $SCHOOL";
      goi = "cd $SCHOOL/IP/";
      gop = "cd $SCHOOL/projetS2/";

      gs = "git status";
      ga = "git add";
      gp = "git push";

      gitu="git add . && git commit && git push";
      hms = "home-manager switch";
    };
    
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };

	};
}
