" 基本配置
set nocompatible " 关闭 vi 一致性
set number " 显示行号
set nowrap " 取消换行
" 当前行列高亮
set cursorline 
"set cursorcolumn
" 在编辑过程中右下角显示光标的行列信息
set ruler
" 在状态栏显示正在输入的命令
set showcmd
" 设置匹配模式，如输入左括号时会匹配右括号
set showmatch 

" 开启语法高亮
" syntax enable
syntax on

packadd! dracula
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None

" 指定配色方案
set t_Co=256
" 搜索时忽略大小写
set ignorecase
" vim中可以使用鼠标
set mouse=a
" tab宽度为4
set tabstop=4
" 自动对齐空格数
set shiftwidth=4
" 按退格键时一次删除4个空格
set smarttab
set softtabstop=4
" 将tab转为空格(使用真tab键时：Ctrl+v+tab)
set expandtab
" 编码
set encoding=utf-8
" 退格键删除
set backspace=indent,eol,start

" 不检测文件类型
filetype off
" 允许插件
filetype plugin on


" 窗口在右边或者下方打开
set splitbelow
set splitright

" 窗口移动
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" Plugin 'Lokaltog/vim-powerline'
" Plugin 'https://github.com/bling/vim-airline'
" 状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'dracula/vim', { 'name': 'dracula' }
"let g:dracula_colorterm = 0
"let g:dracula_italic = 0

" YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'
" let g:ycm_server_python_interpreter='/usr/local/bin/python3'
" let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
" let g:ycm_autoclose_preview_window_after_completion=1 "补全后自动关闭预览窗口"



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
