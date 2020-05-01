" Plugins managed by plug.vim
call plug#begin('$XDG_CONFIG_HOME/vim/plugged')

" Colored statusline
Plug 'itchyny/lightline.vim'

" Navigation tree
Plug 'scrooloose/nerdtree'

" Fuzzy Finder for navigating using rough file names
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Code completion engine
Plug 'valloric/youcompleteme'

" Syntax highlighting for i3 config file
Plug 'mboughaba/i3config.vim'

" Syntax highlighting for zsh scripts
Plug 'zinit-zsh/zinit-vim-syntax'

call plug#end()
