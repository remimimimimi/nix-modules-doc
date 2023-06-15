pkgs: {
  genMdDoc = modules: let
    eval = pkgs.lib.evalModules {
      inherit modules;
    };
  in pkgs.nixosOptionsDoc {
    options = eval.options;
    allowDocBook = false;
    markdownByDefault = true;
  };
}
