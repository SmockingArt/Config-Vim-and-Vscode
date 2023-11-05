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
set relativenumber

" Activer la corespondance des parenthèses
set showmatch

" Activer la coloration syntaxique
syntax enable

" Activer les onglets et fenêtres
set splitbelow
set splitright

" Activer l'auto correcteur
set spell
set spelllang=en
set spellfile=~/.vim/spell/fr.utf-8.add
set spelllang=fr

" Pliage de code (ou Dépliage)
set foldmethod=syntax
"set folmethod=indent

" Copier Coller
set clipboard=unnamedplus

" Font
" set guifont=DroitSansMono\Nerd\Font\11 (pluging Nerd-FOnt)

" Options générales
set encoding=UTF-8
set autoindent
set tabstop=4
set shiftwidth=4
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

" Activer Vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Utiliser Vim-Plug pour gérer les plugins
call plug#begin('~/.vim/plugged')

" --- Plugins ---
" NERDTree
Plug 'scrooloose/nerdtree'            " Explorateur de fichiers

" CtrlP
Plug 'ctrlpvim/ctrlp.vim'             " Recherche rapide de fichiers

" vim-devicons
Plug 'ryanoasis/vim-devicons'         " pour des icônes de fichiers

" YourCompleteMe
Plug 'Valloric/YouCompleteMe'         " Autocomplétion intelligente

" Nerdcommenter
Plug 'preservim/nerdcommenter'        " Commenter/Décommenter rapidement

" Surround
Plug 'tpope/vim-surround'             " Maniement des délimiteurs

" Tagbar
Plug 'majutsushi/tagbar'              " Afficher la structure du code

" ultisnips
Plug 'SirVer/ultisnips'               " Gestion des snippets

" Figitive
Plug 'tpope/vim-fugitive'             " Intégration Git

" Gitgutter
Plug 'airblade/vim-gitgutter'         " Affiche les modification Git

" Airline
Plug 'vim-airline/vim-airline'        " Barre de statut amélioréé
Plug 'vim-airline/vim-airline-themes'

" Emmet-vim
Plug 'mattn/emmet-vim'                " HTML / CSS

" javascript-libraries-syntax pour JavaScript
Plug 'othree/javascript-libraries-syntax.vim'

" Node.vim
Plug 'moll/vim-node'                  " Node.js

" bash-support
Plug 'vim-scripts/bash-support.vim'   " Support Bash

" vim-markdown
Plug 'plasticboy/vim-markdown'        " une meilleure prise en charge de Markdown

" Sensbile (désactiver par défault)
" Plug 'tpope/vim-sensible'           " Configurations sensibles par défaut


" Activer tous les plugins installés - commande :PlugInstall
call plug#end()

" --------------------------------------------------------------
" Configuration des plugins spécifiques
" (Veuillez consulter la documentation de chaque plugin pour une configuration détaillée)
" --------------------------------------------------------------

" NERDTREE - Configuration
(Aucune config supplémentaire)

" CtrlP - Configuration
(Aucune config supplémentaire)

" Vim-devicons - Configuration
  " loading the plugin
let g:webdevicons_enable = 1
  " adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
  " adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
  " ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1
  " turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  " Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
  " whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
  " The amount of space to use after the glyph character in vim-airline tabline(default '')
let g:WebDevIconsTabAirLineAfterGlyphPadding = ' '


" YouCompleteMe - Activer la complétion intelligente 
   " suggestions automatique
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
   "  Configurer les suggestions à partir de la liste de défilement
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
   " une complétion avec Tab
let g:ycm_key_list_select_completion = ['<Tab>']
  " NERDCommenter - Configuration  (Par defaut <leader> est \)
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
  " Create default mappings
let g:NERDCreateDefaultMappings = 1
  " Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
  " Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
  " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
  " Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
  " Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
  " Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
  " Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
  " Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" Surround - Configuration
  " Personnalisation des délimiteurs 
"let g:surround_102 = "{\r}\r" (desactiver)
  " Autres commandes utiles :
  " ys : Ajouter un délimiteur.
  " cs : Changer un délimiteur.
  " ds : Supprimer un délimiteur.
  " S : Entourer une ligne complète avec des délimiteurs.

" Tagbar - Configuration
(

" Figitive - Configuration
(Aucune config supplémentaire)

" GitGutter - Configuration
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'

" Airline - Configuration du themes 
let g:airline_theme = 'wombat'

" Emmet-vim - Configuration des raccourcis clavier
autocmd FileType html,css,javascript inoremap <C-y>, ,emmet#expandAbbrIntelligent('<C-y>,', 'in', 'html')

" Node.vim - Configuration
(Aucune config supplémentaire)

" Bash-support - Configuration des raccourcis clavier pour 
let g:BASHsupport_map_keys = 0

" Vim-Markdown - Configuration
(Aucune config supplémentaire)

" --------------------------------------------------------------
" Touch
" --------------------------------------------------------------

" Raccourcis clavier
nnoremap <F2> :w<CR>
nnoremap <F3> :q<CR>
nnoremap <F4> :wq<CR>
nnoremap <F5> :wa<CR>
nnoremap <F6>c :NERDComment<CR>
nnoremap <F7>cu :NerdComent<CR>
nnoremap <F8> :TagbarToggle<CR>
" ---
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-b> :NERDTreeFind<CR>
nnoremap <C-f> :FZF<CR>
nnoremap <C-p> :CtrlP<CR>
nnoremap <C-m> :Ag<Space>
