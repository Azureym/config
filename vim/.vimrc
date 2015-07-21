" 显示行数
set nu

" 按编程语言的语法，对代码进行颜色标示， 属于叫做语法高亮
syntax on

" 取消底部状态栏显示。1为关闭，2为开启。
" set laststatus=1

" 插入右括号的时候会短暂跳转到匹配的左括号
set showmatch

" 搜索时忽略大小写
set ignorecase

" 设置一个tab对应4个空格
set tabstop=4

" 在按退格键时，如果前面有4个空格， 则会统一清除
set softtabstop=4

" 最基本的自动缩进
set autoindent shiftwidth=4

" 比autoindent稍微智能的自动缩进
set smartindent shiftwidth=4

" 高亮显示搜索匹配到的字符串
set hlsearch

" 设置循环查找
set wrapscan

" 设置字体
set guifont=Consolas:h12

" 设置vim的主题颜色
colorscheme darkblue

" 设置当前页面顶部和底部所预留的行数
set so=5

" 显示vim编辑器底下的默认格式的状态行
set laststatus=2
set ruler

" 在命令模式和编辑模式下切换光标的形态，命令模式=>块状，编辑模式=>条状

"==========================
" NERDTree 配置项目
"==========================
" 定义F3快捷键，使其打开或隐藏NERDTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
" 默认在目录树中显示隐藏文件
let NERDTreeShowHidden=1
" 在vim启动的时候默认开启NERDTree（autocmd 可以缩写为 au）
" autocmd VimEnter * NERDTree

" 自动联想功能映射类似于Eclipse中的自动代码联想
" map <A-/> <C-n>

" 在当前行的任何一行使用<Alt> + / 在当前行的下一行新加入一行。 类似于Eclipse中的<Alt> + /
" map <S-CR> <Esc>o

"==========================
" 管理插件的插件pathogen配置
"==========================
call pathogen#infect()
