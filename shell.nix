{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Nix
    nil # nix language server
    fmt # nix formatter

    # Node
    nodejs_24
    pnpm

    # Typescript
    typescript-language-server
    vscode-langservers-extracted

    # Astro dev
    astro-language-server

    # Svelte dev
    svelte-language-server

    # Vue
    vue-language-server
  ];

  shellHook = ''
    echo "OpenUI development shell loaded"
  '';
}
