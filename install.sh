ln -sf ~/dotfiles/zsh ~/.zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -L git.io/antigen > ~/.zsh/antigen.zsh

ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/pryrc ~/.pryrc

source ~/.zshrc

printf '\n%s\n\t%s\n\t%s\n' '[alias]' 'co = checkout' 'branch-name = "!git rev-parse --abbrev-ref HEAD"' >> ~/.gitconfig
printf '\n%s\n\t%s\n\t%s\n' '[core]' 'editor = nano' >> ~/.gitconfig

# Should be inserted by default but doesn't always work
cartridge insert default

exit 0