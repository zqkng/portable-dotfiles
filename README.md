## portable-dotfiles

This is a collection of dotfiles suitable for cross-platform use.

It aims to provides a subset of configurations necessary for
a comfortable and usable shell environment in any context,
without requiring any external dependencies.

This is particularly convenient when dealing with disposable shell sessions
or SSH servers with only default configurations.


### Managing dotfiles with [GNU Stow](https://www.gnu.org/software/stow/)

1. Git clone `portable-dotfiles` repository and create a `.dotfiles` subdirectory 
  (stow directory) in your home directory.
  Your home directory should look something like this:

  ```
  home/
      zqkng/
          .dotfiles/
              vim/
                  dot-vimrc
              tmux/
                  dot-tmux.conf
              zsh/
                  dot-zsh/
                      [...]
                  dot-zprofile
                  dot-zshrc
  ```

2. Then, perform the following commands:

  ```
  $ cd ~/.dotfiles
  $ stow --dotfiles vim
  $ stow --dotfiles tmux
  $ stow --dotfiles zsh
  ```

3. `stow` will put all configuration files in the correct place by 
   creating the necessary symbolic links to the source file 
   in the stow directory: `.dotfiles/`.

*NOTES*:

- `stow` can only create symbolic links one level up from the source directory.
- When stowing, if an existing target file is encountered (not owned by any existing stow package),
  then `stow` will not proceed (raises conflict error).
  - To change this behavior, use `stow --adopt`.
  - The existing target file will be moved to the same relative place within 
    the stow directory and then stowing proceeds as before.
  - Effectively, the file becomes adopted by the stow package, without its contents changing.


### One-time shell sessions

#### vim

```
vim -u ~/portable-dotfiles/vim/dot-vimrc
```

#### tmux

```
tmux -f ~/portable-dotfiles/tmux/dot-tmux.conf
```

#### zsh

```
ZDOTDIR=~/portable-dotfiles/zsh/dot-zsh
source ~/portable-dotfiles/zsh/dot-zshrc
```


