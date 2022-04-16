{ 
	nixpkgs.config.allowUnfree = true; 
	nixpkgs.config.permittedInsecurePackages = [
		"electron-14.2.9"
	];
}
