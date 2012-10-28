shell_rc
========

My configuration files for bash and zsh

Configurations are divided into various files.
Some are bash/zsh specific and have the suffix to show it.

In your .bashrc/.zshrc you have to add 3 lines like these:

```
SHRCDIR="$(eval echo ~$USERNAME/Dropbox/ConfigFiles/shell/)"
SHRC=( base common colors term osx bash_completion screen tmux dropbox )
source "$SHRCDIR/loader"
```
