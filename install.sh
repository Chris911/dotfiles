ln -sf ~/dotfiles/zsh ~/.zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -L git.io/antigen > ~/.zsh/antigen.zsh

ln -sf ~/dotfiles/zshrc ~/.zshrc

source ~/.zshrc

printf '\n%s\n\t%s\n' '[alias]' 'co = checkout' >> ~/.gitconfig

exit 0