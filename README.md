# Dotfiles

Clone the repo (use `--recursive` to download the submodules)

````
$ git clone --recursive https://github.com/SashayToStay/dotfiles
````

Assuming the project is under `~/Projects/dotfiles` then, for example, to install `nvim` dotfiles run

````
$ stow -t ~ nvim
````

# Notes

- The `fonts` directory contains a font `Inconsolata Nerd Font Complete Mono.otf`. It is a patched font - it has both the original Inconsolata font and extra glyphs for powerline. After running the `stow` command, run `# fc-cache -vr` to cache the font.
- As regards `termite`, the naming under `.config/termite/config` differs from the file name. The name of the font must be equal to the output of `$ fc-list | grep "Inconsolata" | cut -d ':' -f 2'` which, in this case, is slightly different from the actual font filename.
- There is no need to install any extra fonts for powerline, nvim, etc.
- Run `$ nvim +UpdateRemotePlugins +qall` from the command line after updating nvim plugins or run `:UpdateRemotePlugins` from within nvim.
- Run `$ make install` when under `ranger/.config/ranger/plugins/ranger_devicons` to install the ranger devicons.
- To update all submodules run `$ git submodule update --remote --merge`
- To add a new submodule, navigate to the respective directory, eg. `~/Projects/dotfiles/nvim/.config/nvim/bundle` and use `git submodule add` command.
