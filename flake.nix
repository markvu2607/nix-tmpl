{
  description = "A collection of nix templates";

  inputs = {
    tanstack-start-turborepo-src = {
      url = "github:markvu2607/tanstack-start-turborepo";
      flake = false;
    };
  };

  outputs =
    { self, tanstack-start-turborepo-src }:
    {
      templates = {
        tanstack-start-turborepo = {
          path = tanstack-start-turborepo-src;
          description = "Tanstack Start with Turborepo";
        };

        go = {
          path = ./go;
          description = "Basic go environment";
        };

        rust = {
          path = ./rust;
          description = "Basic rust environment";
        };

        bun = {
          path = ./bun;
          description = "Basic bun environment";
        };
      };
    };
}
