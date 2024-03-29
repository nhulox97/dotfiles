" Turn on syntax highlighting .
syntax on
set nocompatible              " be iMproved, required
set textwidth=100
filetype off                  " required
set colorcolumn=-2
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line

" ----------------------Begin MyPlugs----------------------
" Search all files into the current directory
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
" A light and configurable statusline/tabline plugin for Vim
" Plugin 'itchyny/lightline.vim'
" Ale linting
Plugin 'w0rp/ale'
" vim airline
Plugin 'vim-airline/vim-airline'
" Awesome plugin for html tags
Plugin 'mattn/emmet-vim'
" The NERDTree
Plugin 'preservim/nerdtree'
" Vim icons
Plugin 'ryanoasis/vim-devicons'
" ColorPicker
Plugin 'KabbAmine/vCoolor.vim'
" Auto pairs: Insert or delete brackets, parens, quotes in pair.
Plugin 'jiangmiao/auto-pairs'
" Starttify: The fancy screen for vim
Plugin 'mhinz/vim-startify'
" lightline-ale: This plugin provides ALE indicator for the lightline vim plugin.
" Plugin 'maximbaz/lightline-ale'
" Better syntax coloring for jsx and js
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim' 
" TypeScript syntax
Plugin 'maxmellon/vim-jsx-pretty' 
" JS and JSX syntax
Plugin 'neoclide/coc.nvim' , { 'branch' : 'release' }
" vim-prettier
Plugin 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
" vim colorized brackets
Plugin 'frazrepo/vim-rainbow'
"----------------------------- Themes stuff -----------------------------
" Gruvbox theme
Plugin 'gruvbox-community/gruvbox'
" Ayu theme
Plugin 'ayu-theme/ayu-vim'
" Nord theme
Plugin 'arcticicestudio/nord-vim'
" Dracula theme
Plugin 'dracula/vim', { 'name': 'dracula' }
" Gruvbox material
Plugin 'sainnhe/gruvbox-material'
" Synthwave 84
Plugin 'artanikin/vim-synthwave84'
" darcula
Plugin 'doums/darcula'
" sonokai
Plugin 'sainnhe/sonokai'
" xcode
Plugin 'arzg/vim-colors-xcode'
"onedark
Plugin 'joshdick/onedark.vim'
" tokyonight
Plugin 'ghifarit53/tokyonight-vim'
" Oceanic next
Plugin 'adrian5/oceanic-next-vim'
" onehalf
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
" space-vim-dark
Plugin 'liuchengxu/space-vim-dark'
" neodark
Plugin 'KeitaNakamura/neodark.vim'
" GitHub dark
Plugin 'wojciechkepka/vim-github-dark'
" vim-nightfly-guicolors
Plugin 'bluz71/vim-nightfly-guicolors'


" -----------------------End MyPlugs-----------------------

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Begin My sets
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set nobackup
set noswapfile
set bg=dark
" set theme
set termguicolors
set completeopt-=preview
" set mouse=ni
set encoding=UTF-8
" hybrid numbering lines
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
" End My sets

"########################### Begin My maps ###########################
map ; :Files<CR>
map <C-o> :NERDTreeToggle<CR>
command! -complete=file -nargs=1 Remove :echo 'Remove: '.'<f-args>'.' '.(delete(<f-args>) == 0 ? 'SUCCEEDED' : 'FAILED')
" save a file
map <C-s> :w<Cr>
" quit from file
map <C-x> :q<Cr>
" quit and save file
" map <C-X> :wq<Cr>
" reload file
map <C-e> :e<Cr>
" pick a color
map <C-c> :VCoolor<CR>
" select all file
nnoremap <C-a> ggVG<CR>
" format all file
nnoremap <C-l> gg=G<CR>
" Ale goto next error
nmap <silent> <C-e> <Plug>(ale_next_wrap)
" End My maps


" ########################### Set colorscheme ###########################
colorscheme gruvbox-material


" Gruvbox confs
" let g:gruvbox_bold= '(1)'
" let g:gruvbox_constrast = '(soft)'
" let g:gruvbox_constrast_dark = '(soft)'
" colorscheme gruvbox

" Ayu confs
let ayucolor="dark"

" tokyonight confs
let g:tokyonight_style = 'night'

" neodark confs
let g:neodark#use_256color = 1 " default: 0


" airline fonts
let g:airline_powerline_fonts = 1
" let g:airline#extensions#ale#enabled = 1
" ale confs
let g:airline#extensions#ale#enabled = 1

let g:ale_sign_error = '𥉉'
let g:ale_sign_warning = ''
let g:ale_fix_on_save = 1
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
" lightline confs
" set laststatus=2
filetype plugin indent on
" COC server

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" prettier confs
nmap <Leader>py <Plug>(Prettier)
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" vim-rainbow
let g:rainbow_active = 1
