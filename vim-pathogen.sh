mkdir -p .vim/autoload .vim/bundle

url=https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

echo "getting the $url"
curl -o .vim/autoload/pathogen.vim "$url"

unset url
