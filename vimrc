" Utiliser Vim-Plug pour gérer les plugins
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'tpope/vim-sensible'             " Configurations sensibles par défaut
Plug 'tpope/vim-fugitive'             " Interface Git
Plug 'scrooloose/nerdtree'            " Explorateur de fichiers
Plug 'Valloric/YouCompleteMe'         " Complétion intelligente
Plug 'airblade/vim-gitgutter'         " Signes de modification Git
Plug 'majutsushi/tagbar'              " Afficher la structure du code
Plug 'preservim/nerdcommenter'        " Commenter/Décommenter rapidement
Plug 'junegunn/fzf'                   " Recherche rapide de fichiers
Plug 'junegunn/fzf.vim'               " Intégration de FZF avec Vim
Plug 'tpope/vim-surround'             " Maniement des délimiteurs
Plug 'elixir-editors/vim-elixir'      " Prise en charge d'Elixir

" Activer tous les plugins installés
call plug#end()

" Configuration générale
syntax enable
set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set cursorline
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set ruler
set laststatus=2
set mouse=a

" Raccourcis clavier
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :FZF<CR>
nnoremap <C-p> :Ag<Space>
nnoremap <C-t> :TagbarToggle<CR>

" Configuration des plugins spécifiques
" (Veuillez consulter la documentation de chaque plugin pour une configuration détaillée)

" Activer la complétion intelligente YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" Configuration de GitGutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'

" Configuration NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" Configuration FZF
let $FZF_DEFAULT_COMMAND = 'ag -l --nocolor --nogroup --hidden --follow --ignore .git -g ""'