{
  description = "A collection of nix templates";

  outputs = { self }: {
    templates = {
      go = {
        path = ./templates/go;
        description = "Basic go environment";
      };

      rust = {
        path = ./templates/rust;
        description = "Basic rust environment";
      };
    };
  };
}
