# setup-pc
steps to do after factory reset (formattone)  

# terminal 
Instead of the default terminal app i use [iterm2](https://iterm2.com/downloads.html)

then i install [oh-my-zsh](https://ohmyz.sh/#install) and [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme

Then you will have a .zshrc file in your home directory which is a configuration file foe the zsh shell (zsh is a shell like bash)

in that file you can add path variables and state plugins you want to use,

the plugins i use are are [zsh-syntax-highlighting](zsh-syntax-highlighting) and [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)

whith macos you can install them both with brew

```bash
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
```
and then add in the .zshrc file
```bash

plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
)
```

to check if it worked go in the folder 
```bash
/.oh-my-zsh/custom/plugins
```
and you should see the two plugins folders, if not you can clone them in that folder, ask chatgpt or phind to solve specific problems


# github 

brew install gh
git config --global user.name "Nome Cognome"
git config --global user.email mailgithub
