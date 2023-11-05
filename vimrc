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

" Fugitive
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
  " Configuration des couleurs pour Tagbar
let g:tagbar_autofocus = 1
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_color_scheme = 'monokai'
let g:tagbar_bg_ctags = ''
let g:tagbar_bg_error = ''
let g:tagbar_bg_inherit = ''
let g:tagbar_bg_modifier = ''

" Unerversal Ctag - Configuration
"let g:tagbar_ctags_bin = 'ctags'  " Utilisez cette ligne pour l'ancien ctags
  " OU
let g:tagbar_ctags_bin = 'ctags'  " Utilisez cette ligne pour Universal Ctags

" Fugitive - Configuration
let g:fugitive_statusline = 'vertical'
let g:fugitive_statusline_width = 30
au FileType fugitive setlocal syntax=git

" GitGutter - Configuration
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_removed = '-'

" Airline - Configuration du themes 
let g:airline_theme = 'wombat'

" Emmet-vim - Configuration des raccourcis clavier
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to
"let g:user_emmet_mode='a'    "enable all function in all mode.
autocmd FileType html,css,javascript inoremap <C-y>, <C-y>,
let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

" Node.vim - Configuration
(Aucune config supplémentaire)

" Bash-support - Configuration des raccourcis clavier pour 
let g:BASHsupport_map_keys = 0

" Vim-Markdown - Configuration
autocmd FileType markdown setlocal spell
autocmd FileType markdown setlocal textwidth=80
autocmd FileType markdown setlocal spelllang=en_us
"autocmd FileType markdown setlocal spelllang=en_fr
autocmd FileType markdown setlocal colorcolumn=+1
  " Autres commandes utiles :
" :toc
" :TableFormat
" :Center

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
" ---
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit -v<CR>
nnoremap <Leader>gp :Gpush<CR>
nnoremap <Leader>gP :Gpull<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gl :Glog<CR>
---
nnoremap <leader>md :MarkdownPreview<CR>
nnoremap <leader>mp :MarkdownPreviewStop<CR>
