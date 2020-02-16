"~/.vimrc

"" Pathogen for plugins:
execute pathogen#infect()

""""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""""
""Goyo
let g:goyo_width = 92
let g:goyo_margin_top = 0
let g:goyo_margin_bottom = 0

""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""
" Don't use vi mode.
set nocompatible

" set relative line numbering:
set nu! rnu!

" syntax highlighting on:
syntax enable

" search highlighting on:
set hlsearch

" tab autocompletion
set wildmode=longest,list,full

" split options
set splitright splitbelow

" split resize CTL + vim keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set explicit filetype detection for trouble file types
" GROFF
autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
" CMD execution on save for GROFF to autocompile a .pdf of the same name in the same directory.
autocmd BufWritePost *.ms,*.me,*.mom,*.man silent! !sudo pdfmom -Tps % > %:r.pdf

""""""""""""""""""""""""""""""""
" key bindings
""""""""""""""""""""""""""""""""
" s spell check toggle:
nnoremap s :setlocal spell! spelllang=en_us<CR>
" Ctl-p Goyo distraction free:
nnoremap <C-P> :Goyo<cr>
