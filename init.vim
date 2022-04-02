call plug#begin('~/.config/nvim/plugged')
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'rking/ag.vim'
	Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	Plug 'scrooloose/nerdcommenter'
	Plug 'lilydjwg/colorizer'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'kamykn/dark-theme.vim'
	Plug 'yuttie/hydrangea-vim'
	Plug 'nelsyeung/twig.vim'
    Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
call plug#end()

set number
syntax enable
colorscheme darktheme
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


"""" GITGUTTER """"

" preview : <leader>hp
" stage : <leader>hs
" undo : <leader>hu
" :GitGutterToggle

set updatetime=100
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)


"""" FZF """"
" ENTER: open selected files in the current window
" CTRL-T: in new tabs
" CTRL-X  in horizontal splits
" CTRL-V: in vertical splits

nnoremap <silent> <C-f> :FZF<CR>


"""" Ag """"
"e    to open file and close the quickfix window
"o    to open (same as enter)
"go   to preview file (open but maintain focus on ag.vim results)
"t    to open in new tab
"T    to open in new tab silently
"h    to open in horizontal split
"H    to open in horizontal split silently
"v    to open in vertical split
"gv   to open in vertical split silently
"q    to close the quickfix window


"""" NERDTree """"
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * NERDTreeMirror

"""" MACROS """" {% trans %}{% endtrans %} 
let @t = 'a{% trans %}{% endtrans %} F{i'
