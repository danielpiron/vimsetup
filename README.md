# My VIM Setup

I am aiming to make my VIM setup function uniformally across multiple hosts and
platforms. On Unix-like OS's like Linux or MacOS, a user begins by cloning the
repository into their home directory:

```
git@github.com:danielpiron/vimsetup.git ~/vimsetup
```

Then, I set up a couple of symbolic links that Vim will follow:

```
ln -fs ~/vimsetup/vimrc ~/.vimrc
ln -fs ~/vimsetup/vimfiles/ ~/.vim
```

Finally, you load Vim once and run `PluginInstall`.
