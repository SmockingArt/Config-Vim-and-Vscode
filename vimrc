" --------------------------------------------------------------
" Config
" --------------------------------------------------------------

" Activer les sauvegardes
set backup
set backupdir=~/.vim/backups

" Activer l'enregistrement automatique
set autowrite
set autowriteall

" Activer les numéros de ligne
set number

" Activer la corespondance des parenthèses
set showmatch

" Configuration générale
syntax enable
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set cursorline
set incsearch
set hlsearch
set ignorecase
set smartcase
set ruler
set laststatus=2
set mouse=a

" --------------------------------------------------------------
" Plugins
" --------------------------------------------------------------

"Activer Vim-plug
if empty(glob('~/.vim:autoload/plug.vim))
  silent !curl -fL ~/.vim/autoload/plug.vim --creat-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Utiliser Vim-Plug pour gérer les plugins
call plug#begin('~/.vim/plugged')

" --- Plugins ---
" NERDTree
Plug 'scrooloose/nerdtree'            " Explorateur de fichiers

" CtrlP
plug 'ctrlpvim/ctrlp.vim'             " Recherche rapide de fichiers

" YourCompleteMe
plug 'Valloric/YouCompleteMe'         " Autocomplétion intelligente

" Nerdcommenter
Plug 'preservim/nerdcommenter'        " Commenter/Décommenter rapidement

" Surround
Plug 'tpope/vim-surround'             " Maniement des délimiteurs

" Tagbar
Plug 'majutsushi/tagbar'              " Afficher la structure du code

" Figitive
Plug 'tpope/vim-fugitive'             " Intégration Git

" Gitgutter
Plug 'airblade/vim-gitgutter'         " Affiche les modification Git

" Airline
plug 'vim-airline/vim-airline         " Barre de statut amélioréé
plug 'vim-airline/vim-airline-themes

" Sensbile (désactiver par défault)
" Plug 'tpope/vim-sensible'             " Configurations sensibles par défaut

" Activer tous les plugins installés
call plug#end()

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

" --------------------------------------------------------------
" Touch
" --------------------------------------------------------------

" Raccourcis clavier
nnoremap <F2> :w<CR>
nnoremap <F3> :q<CR>
nnoremap <F4> :wq<CR>
nnoremap <F5> :wa<CR>
" ---
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :FZF<CR>
nnoremap <C-p> :Ag<Space>
nnoremap <C-t> :TagbarToggle<CR>

" Configuration FZF
let $FZF_DEFAULT_COMMAND = 'ag -l --nocolor --nogroup --hidden --follow --ignore .git -g ""'
