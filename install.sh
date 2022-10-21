ln -sf ~/dotfiles/zsh ~/.zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -L git.io/antigen > ~/.zsh/antigen.zsh

ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/pryrc ~/.pryrc

source ~/.zshrc

printf '\n%s\n\t%s\n\t%s\n' '[alias]' 'co = checkout' 'branch-name = "!git rev-parse --abbrev-ref HEAD"' >> ~/.gitconfig

SHOPIFY_DIR="${HOME}/src/github.com/Shopify/shopify"
SCRIPT="${HOME}/.data/cartridges/default/seed.sh"

cd ${SHOPIFY_DIR}
shadowenv exec --dir ${SHOPIFY_DIR} -- ${SCRIPT}

exit 0