set encoding=utf-8 fileencodings=
syntax on
set textwidth=80
set shiftwidth=4
set softtabstop=4
set tabstop=8
set expandtab
set autoindent
set number
set colorcolumn=80
set list listchars=tab:>+,trail:-" ,eol:$

filetype plugin indent on

" Autoindent in function of the file's type
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" zo & zO to open - zc & zC to close
" set foldmethod=indent
set hlsearch
set incsearch
" <space> to disable highlighting
noremap <Space> :noh
nnoremap <silent> <C-s> :update<cr>
inoremap <silent> <C-s> <c-o>:update<cr>


set cursorline
" set cursorcolumn
" hi Comment cterm=NONE ctermbg=lightblue ctermfg=green guibg=lightblue guifg=green
" hi NonText cterm=NONE ctermbg=darkgreen
hi CursorLine cterm=underline gui=underline
" hi CursorColumn cterm=NONE ctermbg=black ctermfg=green

" Quickfixlist options
set switchbuf+=usetab,newtab
map <C-k> :cw<CR>
