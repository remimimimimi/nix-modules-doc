{lib, ...}: {
  options = with lib; {
    myFancyEnableOption = mkOption {
      default = false;
      description = mdDoc "Whether to enable hello.";
      example = true;
    };
  };
}
