{
  description = "An example of creating documentation for nixos modules and rendering it with mdbook";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = {self, nixpkgs}: {
    packages.x86_64-linux.docExample = self.lib.genMdDoc [./modules/fancyOptions.nix];
    lib = import ./lib (import nixpkgs {system = "x86_64-linux";});
  };
}
