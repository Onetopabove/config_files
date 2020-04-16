set nocompatible	"在不兼容vi的模式下运行，兼容则去掉no
filetype plugin indent on   "根据检测到的文件类型加载插件
syntax on		"开启语法

set number
set cursorline
set hls is		"高亮搜索与搜索时动态显示。也可用hlsearch与incsearch来设置。
set wrap		"自动换行显示
set showcmd		"Nomal模式下右下角显示执行的指令
set scrolloff=5
set wildmenu		"使用:find命令查找文件时的文件名补全，用一行显示
set smartcase		"智能忽略大小写

set autoindent          "根据前一行内容自动缩进
set expandtab		"用空格取代tab键
set softtabstop=4       "4个空格取代一个tab
set shiftwidth=4        "4个空格取代一个>>缩进

set splitbelow          "新窗口在下方
set splitright          "新窗口在右方
let g:mapleader = ' '	"设置全局的<leader>为空格键

"按键映射
noremap <leader>w :w<cr>
noremap <leader>r :source $MYVIMRC<cr>
noremap <up>    :res +5<cr>
noremap <down>    :res -5<cr>
noremap <left>    :vertical res +5<cr>
noremap <right>    :vertical res -5<cr>

"侦测并安装vim-plug(以下代码来自vim-plug官方)
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"安装插件(for vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }	"如果出现了：[vim-node-rpc] pre build and node not found!	使用	:call mkdp#util#install()解决。	导致这个的原因：https://github.com/iamcco/markdown-preview.nvim/issues/104 
Plug 'iamcco/markdown-preview.vim'
Plug 'lervag/vimtex'        
call plug#end()


"vim-snazzy的配置
color snazzy
let g:SnazzyTransparent = 1
