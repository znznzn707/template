set smarttab
set smartindent
set number 
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
syntax on
syntax enable
set nocompatible
set backspace=2
filetype plugin on
set hls
set encoding=utf-8
filetype on
set rtp+=~/.vim/bundle/Vundle.vim

    "Plugin Management
call vundle#begin()
    Plugin 'gmarik/Vundle.vim'
    Plugin 'luochen1990/rainbow'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'scrooloose/nerdtree'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'vim-scripts/taglist.vim'
    Plugin 'tpope/vim-surround'
    Plugin 'mattn/emmet-vim'
    Plugin 'altercation/vim-colors-solarized'
call vundle#end()

    "rainbow
    let g:rainbow_active = 1
    let g:rainbow_conf = {
        \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
        \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
        \   'operators': '_,\|+\|-_',
        \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
        \   'separately': {
            \       '*': {},
            \       'tex': {
                \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
                \       },
            \       'css': 0,
            \   }
        \}
    "nerdcommenter
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
        "nerdtree
        nmap <F2> :NERDTreeToggle<CR>
        "vim-gitgutter
        let g:gitgutter_terminal_reports_focus = 0
        nnoremap ,gd :GitGutterToggle<CR>
        "vim-scripts/taglist.vim
        map <F5> :Tlist<cr>
        let Tlist_Show_One_File = 1
        let Tlist_Exit_OnlyWindow = 1 
        let Tlist_Use_Right_Window = 1
        let Tlist_GainFocus_On_ToggleOpen = 1

        map z % 
        map <C-k> ^i//<Esc>
        map <C-l> ^2x<Esc>

        set background=dark
        colorscheme solarized
        "let g:solarized_termcolors=256
